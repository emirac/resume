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
