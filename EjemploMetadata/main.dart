import 'metadata.dart';

@Author('Alice', '1.0.0')
class Book {
  String title;
  String author;

  Book(this.title, this.author);

  @Author('Bob', '2.0.1')
  void showBookInfo() {
    print('Book:$title by  $author');
  }
}

@Author('charlie', '1.5.0')
class Magazine {
  String title;
  int issueNumber;

  Magazine(this.title, this.issueNumber);
}
