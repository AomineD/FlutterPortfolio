class ProjectModel {
  final String title;
  final String description;
  final String? githubUrl;
  final String? projectUrl;

  ProjectModel(this.title, this.description, {this.githubUrl, this.projectUrl});
}
