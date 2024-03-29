import 'data.dart';

class Media{
 String title;
 String creator;
 int year;

 Media(this.title, this.creator, this.year);

 void displayInfo() {
  print("Title: $title, Creator: $creator, Year: $year");
 }
}

abstract class Serializable{
 void loadDataFromFile(String fileName) {}
}

mixin serializableMixin on Media {
 void loadDataFromFile(String fileName) {
  print('$title data loaded from $fileName');
 }  
}

class Book extends Media with serializableMixin{
 String author;
 String genre;

 Book(String title, String creator ,int year, this.author, this.genre):
  super(title, creator, year);

 @override
 void displayInfo() {
  print('Book: $title by $author, Year: $year, Genre: $genre');
 }

}

class Movie extends Media with serializableMixin{
 String director;
 String genre;

 Movie(String title, String creator, int year, this.director, this.genre);
 
 @override
 void displayInfo() {
  print('Movie: $title directed by $director, Year: $year, Genre: $genre');
 }
}

class MusicAlbum extends Media with serializableMixin{
 String artist;
 int numberOfTracks;

 MusicAlbum(String title, String creator, int year, this.artist, this.numberOfTracks) : super(title, creator, year);

 @override
 void displayInfo() {
  print('Album: $title by $artist, Year: $year, Tracks: $numberOfTracks');
}
}

void main() {
 var [title, creator, year, author, genre] = [..?books]
 var book = Book();
}

