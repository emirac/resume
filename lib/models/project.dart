class Project {
  final String projectName;
  final List<String> description;
  final String? codeURL;
  final String? demoURL;
  final List<String> images;
  final List<String> technologies;

  Project({
    this.projectName = '',
    this.description = const [],
    this.technologies = const [],
    this.images = const [],
    this.codeURL,
    this.demoURL,
  });
}
