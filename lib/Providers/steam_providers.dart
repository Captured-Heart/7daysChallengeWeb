import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/project_model.dart';

//!PROJECTS STREAM PROVIDER
final fetchProjectProvider = StreamProvider<List<ProjectModels>>((ref) {
  final projectsCollection = FirebaseFirestore.instance
      .collection('projects')
      .orderBy('date', descending: true)
      .snapshots();
  return projectsCollection.map(
    (snapshot) =>
        snapshot.docs.map((doc) => ProjectModels.fromJson(doc.data())).toList(),
  );
});

final fetchSocialProvider = StreamProvider<List<SocialModel>>((ref) {
  final projectsCollection = FirebaseFirestore.instance
      .collection('social')
      .snapshots();
  return projectsCollection.map(
    (snapshot) =>
        snapshot.docs.map((doc) => SocialModel.fromJson(doc.data())).toList(),
  );
});
