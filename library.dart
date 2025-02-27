class Library {
  final Map<String, Map<String, dynamic>> _books = {};

  void addBook({
    required String title,
    String author = "Unknown",
    int year = 0,
    String genre = "General",
  }) {
    _books[title] = {
      'author': author,
      'year': year,
      'genre': genre,
    };
    print("Book added successfully.");
  }

  String getBookInfo({required String title}) {
    if (_books.containsKey(title)) {
      var book = _books[title]!;
      return "Title: $title, Author: ${book['author']}, Year: ${book['year']}, Genre: ${book['genre']}";
    }
    return "Book not found.";
  }

  void listAllBooks({String? genre}) {
    if (_books.isEmpty) {
      print("No books in the library.");
      return;
    }

    _books.forEach((title, details) {
      if (genre == null || details['genre'] == genre) {
        print("Title: $title, Author: ${details['author']}, Year: ${details['year']}, Genre: ${details['genre']}");
      }
    });
  }

  List<String> listBooksByGenre({required String genre}) {
    List<String> booksInGenre = _books.entries
        .where((entry) => entry.value['genre'] == genre)
        .map((entry) => entry.key)
        .toList();

    return booksInGenre.isNotEmpty ? booksInGenre : ["No books found for this genre."];
  }

  String removeBook({required String title}) {
    if (_books.remove(title) != null) {
      return "Book removed successfully.";
    }
    return "Book not found.";
  }
}

void main() {
  var library = Library();

  library.addBook(title: "Dart Programming", author: "John Doe", year: 2021, genre: "Programming");
  library.addBook(title: "Flutter Basics", author: "Jane Smith", year: 2022);
  library.addBook(title: "Machine Learning", author: "Alice Johnson", year: 2020, genre: "AI");
  library.addBook(title: "Data Structures", author: "Bob Williams", year: 2019, genre: "Computer Science");
  library.addBook(title: "Cyber Security Essentials", author: "David Brown", year: 2023, genre: "Security");
  
  print(library.getBookInfo(title: "Dart Programming"));
  print(library.getBookInfo(title: "Unknown Book"));

  library.listAllBooks();
  library.listAllBooks(genre: "Programming");

  print(library.listBooksByGenre(genre: "Programming"));
  print(library.listBooksByGenre(genre: "Fiction"));

  print(library.removeBook(title: "Dart Programming"));
  print(library.removeBook(title: "Nonexistent Book"));
}