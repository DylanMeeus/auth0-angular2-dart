import 'package:angular2/core.dart';
import 'package:dartblog/repository_component.dart';

/**
 * Service for the github panels.
 * Contains information related to github throughout our application.
 */
@Injectable()
class GithubService{

    List<RepositoryComponent> repositories;

    GithubService(){
        this.repositories = new List<RepositoryComponent>();
        this.repositories.add(new RepositoryComponent("Dylan","test","test","test"));
    }

    List<RepositoryComponent> getRepositories(){
        return this.repositories;
    }

    // Adds new components to the list
    void addComponents(List<RepositoryComponent> newComponents){
        repositories.addAll(newComponents);
        print("added components");
        print(repoList);
    }

    // Adds new components to the list
    void addComponent(RepositoryComponent newComponents){
        repositories.add(newComponents);
        print("added component");
        print(repoList);
    }
}