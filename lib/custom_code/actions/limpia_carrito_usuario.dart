// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future limpiaCarritoUsuario(DocumentReference uid) async {
  // Add your function code here!
  String collectionName = 'Carrito';

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Query all the documents in the collection
  final querySnapshot = await firestore.collection(collectionName).get();

  print('Removing documents for UID $uid');

  // Loop through each document in the query result
  for (final documentSnapshot in querySnapshot.docs) {
    // Get the age field from the document data
    final documentData = documentSnapshot.data();
    final usuarioCarrito = documentData['uid'];

    print('Checking document with UID $usuarioCarrito');

    print('fieldValue2 UID $uid');

    // Check if the user has documents, if so remove them
    if (usuarioCarrito == uid) {
      print(
          'Removing document with ID ${documentSnapshot.id} from collection $collectionName');
      await firestore
          .collection(collectionName)
          .doc(documentSnapshot.id)
          .delete();
      print('Removed document with UID $usuarioCarrito');
    }
  }
}
