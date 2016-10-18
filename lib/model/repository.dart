/**
 * Model class for our repository
 */
class Repository{
  String shortName;
  String fullName;
  String author;
  String url;

  Repository(String shortName, String fullName, String author, String url){
    this.shortName = shortName;
    this.fullName = fullName;
    this.author = author;
    this.url = url;
  }
}