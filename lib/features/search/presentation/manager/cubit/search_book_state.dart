part of 'search_book_cubit.dart';

sealed class SearchBookState extends Equatable {
  const SearchBookState();

  @override
  List<Object> get props => [];
}

final class SearchBookInitial extends SearchBookState {}

final class SearchBookLoading extends SearchBookState {}

final class SearchBookFailure extends SearchBookState {
  final String errorMessage;

  const SearchBookFailure({required this.errorMessage});
}

final class SearchBooksucess extends SearchBookState {
  final List<BookModel> books;

  const SearchBooksucess({required this.books});
}
