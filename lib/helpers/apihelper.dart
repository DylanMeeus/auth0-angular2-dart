import 'package:dartblog/model/repository.dart';
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'package:json_object/json_object.dart';
import 'dart:async';

/**
 * Class to parse JSON returned by the github api.
 */
class Apihelper{

  String basePath = "https://api.github.com/search/repositories?q=";

  BrowserClient browserClient;

      Apihelper(){
          browserClient = new BrowserClient();
      }

      Future<List<Repository>> getRecentJavascriptRepositories() async {
          print("In the apiherlper getrecentjavascriptrepos");
          return await fetchRepositories("language:javascript&sort=updated");
      }

      List<Repository> fetchRepositories(String queryString) async {
            String url = basePath + queryString;
            var response = await browserClient.get(url);
            return this.parseToComponent(response.body);
      }

      /**
       * Returns a list of github components based on the passed jsontstring.
       */
      List<Repository> parseToComponent(String jsonString){
          List<Repository> repoList = new List<Repository>();
          JsonObject data = new JsonObject.fromJsonString(jsonString);

          data.items.forEach((i) =>
              repoList.add(new Repository(i.name,i.owner.login,i.html_url))
          );

          return repoList;
      }
}