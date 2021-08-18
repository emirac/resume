import 'package:flutter/material.dart';
import 'package:resume/models/project.dart';

class ProjectsProvider extends ChangeNotifier {
  List<Project> projects = [];
  Project? selectedProject;
  int? selectImageIndex;
  bool showImagePopup = false;

  ProjectsProvider() {
    setInitialData();
  }

  void setInitialData() {
    projects.add(
      new Project(
        projectName: 'Personal website',
        description: [
          'In my free time I wanted to learn something new and Flutter seemed like a great new language to get my hands on. So I decided to make personal website for myself.',
          'I wanted this website to be aesthetically pleasing and laid out a design that had some complex elements. Also I knew that I will have to add some animations for better user experience. And of course, everything has to be responsive!',
          'I would say that Flutter is definitely more advantageous than HTML and CSS but it is not easier. For the challenges mentioned above I had to really change my perspective of thinking to switch from HTML tags to widgets. After being able to “think in widgets”, right now, I would feel comfortable taking on a project of a bigger scale with Flutter.',
          'I would say, this project was a great learning experience. I am also very satisfied with the end result.',
        ],
        images: [
          'images/personal_1.png',
          'images/personal_2.png',
          'images/personal_3.png',
        ],
        codeURL: 'https://github.com/emirac/resume',
        demoURL: 'https://emirac.github.io',
        technologies: ['Flutter'],
      ),
    );
    projects.add(
      new Project(
        projectName: 'EatSmart',
        description: [
          'My colleague had very bad and inconsistent eating habits. He wanted to create an app that would help him stay on track with his diet. My colleague did not want one those apps that just make you count your calories, he wanted to go bigger: the app in mind would suggest the user what to eat based on what user has in their fridge. Also it would count not only calories, but vitamins and compounds such as iron or magnesium as well. And so he invited me to join in developing this app.',
          'Right from the start, it was clear that this project will require a big amount of data. Also, my colleague wanted this to have a really good user experience, when it is really easy for user to add various combinations of meals. To achieve these goals, we had to integrate multiple food databases including the largest US food database FDC. And for the user convenience there were several solutions. First - recipes, so user can add their favourites recipes with accurate ingredients and amounts. Another one - builders for repetitive items such as lunch and sandwiches. Builders provide user options for different components, i. e. different bread types for a sandwich.',
          'Albeit my colleague and I are already using this app, it is still not finished, we are still further improving user experience. And in the future, the are plans to integrate AI for meal suggestions.',
          'From this project and my colleague I learned how to plan out a project and how to prioritise features. And, of course, now I have an app that helps me to stay on track with my eating!'
        ],
        images: [
          'images/eat_smart_1.png',
          'images/eat_smart_2.png',
          'images/eat_smart_3.png',
          'images/eat_smart_4.png',
          'images/eat_smart_5.png',
        ],
        technologies: [
          'Flutter',
          'C#',
          '.NET',
          'Entity Framework',
          'SQL Server'
        ],
      ),
    );
    projects.add(
      new Project(
        projectName: 'HQ Sales',
        description: [
          'While working for “Protingieji kurmiai” (“Valdoware”) I was part of development team for a really big scale project that involved Azure cloud, integrations to other systems, huge amounts of data and complex, dynamic calculations.',
          'During two years of working on this project I had too many challenges to describe them all, but I would like to mention at least one of them. To send information to another system, we were building a JSON object. It started out simple, but over time the JSON grew and its build process produced more and more bugs. So I got the task to refactor this build process. I got a chance to use design patterns here, the builder pattern to be exact. After refactoring it was possible to cover this build process with tests and the amount of bugs reported for this part of system dropped significantly.',
          'In general, I consider this job to be a kick-start to my journey as a developer, so I am very grateful for this experience. This job, was were I got really familiar with a lot of technologies and design patterns.'
        ],
        technologies: [
          'Vue.js',
          'Typescript',
          'C#',
          '.NET',
          'Entity Framework',
          'SQL Server',
          'Azure',
          'Node.js',
          'GraphQL'
        ],
      ),
    );
    this.setSelectedProject(0);
  }

  void setSelectedProject(int index) {
    var selected = this.projects.elementAt(index);
    this.selectedProject = selected;
    this.setSelectedImage(0);
    this.notifyListeners();
  }

  int getSelectedProjectIndex() {
    if (this.selectedProject == null) {
      return 0;
    }
    return this.projects.indexOf(this.selectedProject!);
  }

  void setSelectedImage(int index) {
    this.selectImageIndex = index;
    this.notifyListeners();
  }

  void toggleImagePopup() {
    this.showImagePopup = !this.showImagePopup;
    this.notifyListeners();
  }
}
