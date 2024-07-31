part of 'book_bloc.dart';

final class BookState {
  List<BookModel>? books;
  BookModel? book;
  String? errorMessage;
  bool isLoading;

  BookState({
    this.books,
    this.book,
    this.errorMessage,
    this.isLoading = false,
  });

  BookState copyWith({
    List<BookModel>? books,
    BookModel? book,
    String? errorMessage,
    bool? isLoading,
  }) {
    return BookState(
      books: books ?? this.books,
      book: book ?? this.book,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
