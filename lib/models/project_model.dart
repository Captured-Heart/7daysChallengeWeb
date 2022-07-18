import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectModels {
  final String? title, content, gitHubUrl, imgUrl, webUrl;
  final Timestamp ? date;

  ProjectModels({
    this.title,
    this.content,
    this.date,
    this.gitHubUrl,
    this.imgUrl,
    this.webUrl,
  });
  ProjectModels.fromJson(Map<String, dynamic> json):
  title = json['title'],
  content = json['content'],
  gitHubUrl = json['gitUrl'],
  webUrl = json['webUrl'],
  imgUrl = json['imgUrl'],
  date = json['date'];
}
