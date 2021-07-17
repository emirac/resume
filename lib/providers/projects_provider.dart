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
          projectName: 'Resume',
          description: 'A personal website that ',
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
        description: '',
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
        description: '',
        technologies: [
          'Vue.js',
          'Typescript',
          'C#',
          '.NET',
          'Entity Framework',
          'SQL Server',
          'Azure'
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
