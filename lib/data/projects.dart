class Project {
  String projectName;
  String description;
  String? codeURL;
  String? demoURL;
  List<String>? images;
  List<String> technologies;

  Project(this.projectName, this.description, this.technologies,
      {this.codeURL, this.demoURL, this.images});
}

var projects = [
  new Project(
    'Resume',
    'A personal website that ',
    [],
    codeURL: 'https://github.com/emirac/resume',
    demoURL: 'https://emirac.github.io',
    images: [],
  ),
  new Project(
    'EatSmart',
    '',
    [],
    images: [],
  ),
  new Project(
    'HQ Sales',
    '',
    [],
  ),
];
