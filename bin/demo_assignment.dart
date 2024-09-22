
//Assignment-01
class Book{
  String?title;
  String? author;
  int publicationYear;
  int pagesRead=0;
  static int totalBook=0;
  Book(this.title,this.author,this.publicationYear){
    totalBook++;
  }
  read(int pages){
    pagesRead=pagesRead+pages;
  }
  getPagesRead(){
    return pagesRead;
  }
  getTitle(){
    return title;
  }
  getAuthor(){
    return author;
  }
  getBookAge(){
    int currentyear=DateTime.now().year;
    return currentyear-publicationYear;
  }
}
void main(){
  Book b1=Book('Junior Level Introduction to Computer', 'Amit Garg', 2011);
  Book b2=Book('Client Server Computing','Lalit Kumar', 2012);
  Book b3=Book('Data Structure Using C','Sharad Kumar Verma',2015);
  b1.read(20);
  b2.read(10);
  b3.read(5);

  print('Title of the book1 is ${b1.getTitle()}');
  print('Author of the book1 is ${b1.getAuthor()}');
  print('Publication year of the book1 is ${b1.publicationYear}');
  print('The age of the book1 is ${b1.getBookAge()}');
  print('Number of pages for book1 is ${b1.getPagesRead()}');
  print('Title of the book2 is ${b2.getTitle()}');
  print('Author of the book2 is ${b2.getAuthor()}');
  print('Publication year of the book2 is ${b2.publicationYear}');
  print('The age of the book2 is ${b2.getBookAge()}');
  print('Number of pages for book2 is ${b2.getPagesRead()}');
  print('Title of the book3 is ${b3.getTitle()}');
  print('Author of the book3 is ${b3.getAuthor()}');
  print('Publication year of the book3 is ${b3.publicationYear}');
  print('The age of the book3 is ${b3.getBookAge()}');
  print('Number of pages for book3 is ${b3.getPagesRead()}');

  print('Total books for reading are ${Book.totalBook}');


}