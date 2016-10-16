import 'package:dartblog/github_component.dart';

/**
 * Class to parse JSON returned by the github api.
 */
class Apiparser{

  static GithubComponent parseToComponent(String jsonString){
    print("testing this");
    return new GithubComponent("Dylan","test","test");
  }
}