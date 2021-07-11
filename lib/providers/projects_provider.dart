import 'package:flutter/material.dart';
import 'package:resume/models/project.dart';

class ProjectsProvider extends ChangeNotifier {
  List<Project> projects = [];
  Project? selectedProject;

  ProjectsProvider() {
    setInitialData();
  }

  void setInitialData() {
    projects.add(
      new Project(
        'Resume',
        'A personal website that ',
        [],
        codeURL: 'https://github.com/emirac/resume',
        demoURL: 'https://emirac.github.io',
        images: [],
      ),
    );
    projects.add(
      new Project(
        'EatSmart',
        '',
        [],
        images: [],
      ),
    );
    projects.add(
      new Project(
        'HQ Sales',
        '',
        [],
      ),
    );
    this.setSelectedProject(0);
  }

  void setSelectedProject(int index) {
    var selected = this.projects.elementAt(index);
    this.selectedProject = selected;
    this.notifyListeners();
  }
}
