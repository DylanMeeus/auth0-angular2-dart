/**
 * Model class for our repository
 */
class Repository{
  String shortName;
  String author;
  String url;

  Repository(String shortName, String author, String url){
    this.shortName = shortName;
    this.author = author;
    this.url = url;
  }
}