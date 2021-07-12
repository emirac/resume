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
          projectName: 'Resume',
          description: 'A personal website that ',
          images: ['test_url'],
          codeURL: 'https://github.com/emirac/resume',
          demoURL: 'https://emirac.github.io',
          technologies: ['Flutter']),
    );
    projects.add(
      new Project(
        projectName: 'EatSmart',
        description: '',
        images: ['test_url'],
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
    this.notifyListeners();
  }
}
