import 'package:get_it/get_it.dart';
import 'package:online_library/data/repositories/book_repository.dart';

import '../blocs/export_blocs.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton(BookRepository());

  getIt.registerSingleton(
    BookBloc(
      bookRepository: getIt.get<BookRepository>(),
    ),
  );
}
