import 'package:flutter/material.dart';
import 'package:resume/models/project.dart';

class ProjectsProvider extends ChangeNotifier {
  List<Project> projects = [];
  Project? selectedProject;
  String? selectedImage;

  ProjectsProvider() {
    setInitialData();
  }

  void setInitialData() {
    projects.add(
      new Project(
          projectName: 'Personal website',
          description: [
            'After finding out about flutter I really wanted to try it and play around with it for a bit. So for that purpose I decided to make a personal website for myself.',
            'This was a fun process from start to finish: from designing it to nit picking the smallest details and admiring the end result.',
            'In the end, I really like what I created form myself and I also feel that this was great project, to get familiar with flutter.',
          ],
          images: [
            'images/test1.jpeg',
            'images/test2.jpeg',
            'images/test3.jpeg',
          ],
          codeURL: 'https://github.com/emirac/resume',
          demoURL: 'https://emirac.github.io',
          technologies: ['Flutter']),
    );
    projects.add(
      new Project(
        projectName: 'EatSmart',
        description: [
          'My colleague had an idea for a food intake tracking app, would count not only calories but also vitamins and other compounds. Also, the app would give suggestions what to eat based on what user has in their fridge.',
          'So I took part, albeit small, in developing this app. I feel that the main things that I learned from this project and my colleague were how to plan out a project and how to prioritise features.',
        ],
        images: [
          'images/test1.jpeg',
          'images/test1.jpeg',
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
          'HQ Sales is a project that I worked on while I was working for “Protingieji kurmiai”. This job was definitely a kick-start to my journey as a developer.',
          'While working on this really big scale project, I had an opportunity to test myself with not just front-end programming but also back-end, devOps, Azure. This was a very rich experience to me from which I learned a lot.',
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
    this.selectedImage = null;
    this.setSelectedImage(Direction.Forward);
    this.notifyListeners();
  }

  void setSelectedImage(Direction direction) {
    if (this.selectedProject == null ||
        this.selectedProject!.images.length == 0) {
      return;
    }
    if (this.selectedImage == null) {
      this.selectedImage = this.selectedProject!.images[0];
    } else {
      int index = this.selectedProject!.images.indexOf(this.selectedImage!);
      switch (direction) {
        case Direction.Back:
          index =
              index == 0 ? this.selectedProject!.images.length - 1 : index - 1;
          break;
        case Direction.Forward:
          index =
              index == this.selectedProject!.images.length - 1 ? 0 : index + 1;
          break;
        default:
          break;
      }
      this.selectedImage = this.selectedProject!.images.elementAt(index);
    }
    this.notifyListeners();
  }
}

enum Direction {
  Back,
  Forward,
}
