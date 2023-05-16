// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: dead_code, unused_local_variable

Future<double> calcularSubtotalCarrito(
  DocumentReference uid,
) async {
  // Add your function code here!

  print('Validating arguments received: usuario $uid');

  //Declare variables
  String collectionName = 'Carrito';
  double subtotalCarrito = 0;

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Query all the documents in the collection
  final querySnapshot = await firestore.collection(collectionName).get();

  // Loop through each document in the query result
  for (final documentSnapshot in querySnapshot.docs) {
    // Get the age field from the document data
    final documentData = documentSnapshot.data();
    final usuarioCarrito = documentData['uid'];
    final subtotalProducto = documentData['subtotalProducto'];

    print(
        'Validating info extracted from the document: usuario $usuarioCarrito - subtotal $subtotalProducto');

    // Check if the user has documents, if so remove them
    if (usuarioCarrito == uid) {
      print(
          'I found a product that it is already in Carrito, the ID ${documentSnapshot.id} from collection $collectionName');
      subtotalCarrito = subtotalCarrito + subtotalProducto;
    }
    print('Subtotal for Carrito is $subtotalCarrito');
  }
  return subtotalCarrito;
}
