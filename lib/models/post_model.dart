import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post(
      {required this.description,
      required this.uid,
      required this.username,
      required this.postId,
      required this.datePublished,
      required this.postUrl,
      required this.profImage,
      required this.likes});

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'username': username,
        'postId': postId,
        'datePublished': datePublished,
        'likes': likes,
        'profImage': profImage,
        'postUrl': postUrl,
      };

  static Post fromSnapshot(DocumentSnapshot snapshot) {
    final snapshotData = snapshot.data() as Map<String, dynamic>;

    return Post(
      description: snapshotData['description'],
      username: snapshotData['username'],
      postUrl: snapshotData['postUrl'],
      uid: snapshotData['uid'],
      postId: snapshotData['postId'],
      datePublished: snapshotData['datePublished'],
      profImage: snapshotData['profImage'],
      likes: snapshotData['likes'],
    );
  }
}
