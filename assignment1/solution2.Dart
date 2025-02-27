import 'dart:io';

class Library {
  final Map<String, Map<String, dynamic>> _books = {};

  void addBook() {
    stdout.write("Enter book title: ");
    String title = stdin.readLineSync()!;

    stdout.write("Enter author (default: Unknown): ");
    String author = stdin.readLineSync()!;
    if (author.isEmpty) author = "Unknown";

    stdout.write("Enter year (default: 0): ");
    int year = int.tryParse(stdin.readLineSync()!) ?? 0;

    stdout.write("Enter genre (default: General): ");
    String genre = stdin.readLineSync()!;
    if (genre.isEmpty) genre = "General";

    _books[title] = {
      'author': author,
      'year': year,
      'genre': genre,
    };
    print("Book added successfully.\n");
  }

  void getBookInfo() {
    stdout.write("Enter book title to search: ");
    String title = stdin.readLineSync()!;
    
    if (_books.containsKey(title)) {
      var book = _books[title]!;
      print("Title: $title, Author: \${book['author']}, Year: \${book['year']}, Genre: \${book['genre']}\n");
    } else {
      print("Book not found.\n");
    }
  }

  void listAllBooks() {
    if (_books.isEmpty) {
      print("No books in the library.\n");
      return;
    }
    
    _books.forEach((title, details) {
      print("Title: $title, Author: \${details['author']}, Year: \${details['year']}, Genre: \${details['genre']}");
    });
    print("");
  }

  void listBooksByGenre() {
    stdout.write("Enter genre to search: ");
    String genre = stdin.readLineSync()!;
    
    List<String> booksInGenre = _books.entries
        .where((entry) => entry.value['genre'] == genre)
        .map((entry) => entry.key)
        .toList();

    if (booksInGenre.isNotEmpty) {
      print("Books in genre '$genre': ");
      booksInGenre.forEach(print);
    } else {
      print("No books found for this genre.\n");
    }
  }

  void removeBook() {
    stdout.write("Enter book title to remove: ");
    String title = stdin.readLineSync()!;
    
    if (_books.remove(title) != null) {
      print("Book removed successfully.\n");
    } else {
      print("Book not found.\n");
    }
  }
}

void main() {
  var library = Library();
  
  while (true) {
    print("Library Menu:");
    print("1. Add Book");
    print("2. Get Book Info");
    print("3. List All Books");
    print("4. List Books by Genre");
    print("5. Remove Book");
    print("6. Exit");
    stdout.write("Choose an option: ");
    
    String choice = stdin.readLineSync()!;
    print("");
    
    switch (choice) {
      case '1':
        library.addBook();
        break;
      case '2':
        library.getBookInfo();
        break;
      case '3':
        library.listAllBooks();
        break;
      case '4':
        library.listBooksByGenre();
        break;
      case '5':
        library.removeBook();
        break;
      case '6':
        print("Exiting...\n");
        return;
      default:
        print("Invalid option. Please try again.\n");
    }
  }
}
