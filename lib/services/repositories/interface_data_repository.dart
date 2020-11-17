import 'package:flutter/foundation.dart';

import '../../models/author.dart';
import '../../models/book.dart';
import '../../models/genre.dart';
import '../../models/member.dart';
import '../../models/author_review.dart';
import '../../models/book_review.dart';
import '../../models/member_author_review.dart';
import '../../models/member_book_review.dart';

abstract class IDataRepository{
  Stream<List<Book>> booksStream();
  Stream<List<Author>> authorsStream();
  Stream<List<Genre>> genresStream();
  Stream<List<Member>> membersStream();
  Stream<Author> authorStream({@required int id});
  Stream<Book> bookStream({@required int id});
  Stream<Member> memberStream({@required int id});
  Stream<List<int>> genreAuthorsStream({@required int id});
  Stream<List<int>> genreBooksStream({@required int id});
  Stream<List<int>> genreMembersStream({@required int id});
  Stream<List<int>> authorGenresStream({@required int id});
  Stream<List<int>> bookGenresStream({@required int id});
  Stream<List<int>> memberGenresStream({@required int id});
  Stream<List<AuthorReview>> authorReviewsStream({@required int id});
  Stream<List<BookReview>> bookReviewsStream({@required int id});
  Stream<List<MemberBookReview>> memberBookReviewsStream({@required int id});
  Stream<List<MemberAuthorReview>> memberAuthorReviewsStream({@required int id});
}