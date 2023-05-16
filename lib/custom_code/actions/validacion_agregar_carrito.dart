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

Future<bool> validacionAgregarCarrito(
  DocumentReference uid,
  String nombreMedicina,
) async {
  // Add your function code here!

  print(
      'Validating arguments received: usuario $uid - nombreMedicina $nombreMedicina');

  //Declare variables
  String collectionName = 'Carrito';
  double subtotal = 0;
  bool validacion = false;

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Query all the documents in the collection
  final querySnapshot = await firestore.collection(collectionName).get();

  final collectionRef = firestore.collection(collectionName);

  // Loop through each document in the query result
  for (final documentSnapshot in querySnapshot.docs) {
    // Get the age field from the document data
    final documentData = documentSnapshot.data();
    final usuarioCarrito = documentData['uid'];
    final productoNombre = documentData['nombreMedicina'];
    final productoCantidad = documentData['cantidad'];

    print(
        'Validating info extracted from the document: usuario $usuarioCarrito - nombreMedicina $productoNombre');

    // Check if the user has documents, if so remove them
    if (usuarioCarrito == uid && productoNombre == nombreMedicina) {
      print(
          'I found a product that it is already in Carrito, the ID ${documentSnapshot.id} from collection $collectionName');
      validacion = true;
    } else {
      print('I have NOT found a product in collection $collectionName');
      validacion = false;
    }
  }
  return validacion;
}
