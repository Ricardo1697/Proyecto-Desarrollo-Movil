// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future limpiarCarrito(String? collectionName) async {
  // Add your function code here!
  collectionName = 'Carrito';

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  final collectionRef = firestore.collection(collectionName);

  // Get a list of all the documents in the collection
  final QuerySnapshot snapshot = await collectionRef.get();

  // Delete each document in the collection
  snapshot.docs.forEach((document) async {
    await document.reference.delete();
  });
}
