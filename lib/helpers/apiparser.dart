import 'package:dartblog/repository_component.dart';

/**
 * Class to parse JSON returned by the github api.
 */
class Apiparser{

  /**
   * Returns a list of github components based on the passed jsontstring.
   */
  List<RepositoryComponent> parseToComponent(String jsonString){
    List<RepositoryComponent> components = new List<RepositoryComponents>();
    print("testing this: " + jsonString);
    RepositoryComponent rc = new RepositoryComponent("Richard","test","test","test");
    components.add(rc);
    return components;
  }

  void test(){
    print("printing test");
  }
}