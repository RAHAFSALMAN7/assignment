# assignment
# Library Management System

## 📌 Overview
This project consists of two Dart programs implementing a simple library management system. The first version operates programmatically, while the second version features an interactive command-line interface (CLI) for user input.

## ✨ Features
Both implementations allow users to:
- 📚 Add books with details (title, author, year, genre).
- 🔍 Retrieve book information by title.
- 📋 List all books or filter by genre.
- ❌ Remove books from the library.

## 📝 Code Descriptions

### ⚡ First Implementation (Non-Interactive)
- Uses predefined book entries.
- Directly calls functions in `main()` without user interaction.
- Suitable for automated operations.

### 🎛 Second Implementation (Interactive CLI)
- Uses `dart:io` for user input via the command line.
- Provides a menu-driven interface for user interaction.
- Allows dynamic book management.

## 🚀 How to Run

### 🖥 First Version:
Run the following command in the terminal:
```sh
dart first_version.dart
```

### 🏗 Second Version:
Run the following command and follow the on-screen instructions:
```sh
dart second_version.dart
```

## 📖 Example Usage
For the interactive version:
```
📚 Library Menu:
1️⃣ Add Book
2️⃣ Get Book Info
3️⃣ List All Books
4️⃣ List Books by Genre
5️⃣ Remove Book
6️⃣ Exit
Choose an option: 1
Enter book title: Dart Essentials
Enter author: John Doe
Enter year: 2023
Enter genre: Programming
✅ Book added successfully.
```

## 🎯 Conclusion
This project demonstrates Dart's capabilities in handling structured data and interactive applications. The non-interactive version is best suited for pre-defined workflows, while the CLI version offers flexibility for user-driven operations.


