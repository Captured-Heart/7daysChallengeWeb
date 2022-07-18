import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/project_model.dart';

//!PROJECTS STREAM PROVIDER
final fetchLatestProvider = StreamProvider<List<ProjectModels>>((ref) {
  final imagesCollection = FirebaseFirestore.instance
      .collection('projects')
      .orderBy('date', descending: true)
      .snapshots();
  return imagesCollection.map(
    (snapshot) =>
        snapshot.docs.map((doc) => ProjectModels.fromJson(doc.data())).toList(),
  );
});
