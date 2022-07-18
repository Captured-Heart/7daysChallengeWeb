class ProjectModels {
  final String? title, content, date, gitHubUrl, webUrl;

  ProjectModels({
    this.title,
    this.content,
    this.date,
    this.gitHubUrl,
    this.webUrl,
  });
  ProjectModels.fromJson(Map<String, dynamic> json):
  title = json['email'],
  content = json['content'],
  gitHubUrl = json['gitUrl'],
  webUrl = json['webUrl'],
  date = json['date'];
}
