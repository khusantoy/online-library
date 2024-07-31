import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:online_library/data/repositories/book_repository.dart';
import 'package:online_library/services/permission_service.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/models/book_model.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc({
    required this.bookRepository,
  }) : super(BookState()) {
    on<GetBooks>(_onGetBooks);
    on<DownloadBook>(_onDownload);
    on<OpenBook>(_onOpen);
  }

  final BookRepository bookRepository;

  void _onGetBooks(
    GetBooks event,
    Emitter<BookState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      await Future.delayed(const Duration(seconds: 1));

      for (var book in bookRepository.books) {
        final fullPath = await _getSavePath(book);
        if (_checkBookExists(fullPath)) {
          book = book
            ..savePath = fullPath
            ..isDownloaded = true;
        }
      }

      emit(state.copyWith(
        books: bookRepository.books,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      ));
    }
  }

  void _onDownload(
    DownloadBook event,
    Emitter<BookState> emit,
  ) async {
    final book = event.book;
    book.isLoading = true;

    emit(state.copyWith(book: book));

    final dio = Dio();

    if (await PermissionService.requestStoragePermission()) {
      try {
        final fullPath = await _getSavePath(book);

        if (_checkBookExists(fullPath)) {
          add(OpenBook(path: fullPath));
          emit(
            state.copyWith(
              book: state.book!
                ..savePath = fullPath
                ..isLoading = false
                ..isDownloaded = true,
            ),
          );
        } else {
          final response = await dio.download(
            book.url,
            fullPath,
            onReceiveProgress: (count, total) {
              // count (byte) - qancha ma'lumot  yuklanganini aytadi
              // total (byte) - umumiy faylni hajmi
              emit(state.copyWith(
                book: state.book!..progress = count / total,
              ));
            },
          );

          print(response);

          emit(
            state.copyWith(
              book: state.book!
                ..savePath = fullPath
                ..isLoading = false
                ..isDownloaded = true,
            ),
          );
        }
      } on DioException catch (e) {
        print("DIO EXCEPTION");
        emit(
          state.copyWith(
            book: state.book!..isLoading = false,
            errorMessage: e.response?.data,
          ),
        );
      } catch (e) {
        print("DIO EXCEPTION");
        emit(
          state.copyWith(
            book: state.book!..isLoading = false,
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  void _onOpen(
    OpenBook event,
    Emitter<BookState> emit,
  ) async {
    await OpenFilex.open(event.path);
  }

  bool _checkBookExists(String filePath) {
    final file = File(filePath);

    return file.existsSync();
  }

  Future<String> _getSavePath(BookModel book) async {
    final savePath =
        await getApplicationDocumentsDirectory(); // iphone/application/documents
    final fileExtension =
        book.url.split('.').last; // https://www.hp.com/video.mp4
    final fileName = "${book.title}.$fileExtension"; // Harry Potter Video.mp4
    final fullPath = "${savePath.path}/$fileName";

    return fullPath;
  }
}
