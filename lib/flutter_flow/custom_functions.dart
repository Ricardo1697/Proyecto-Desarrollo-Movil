import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

double calcularSubtotalProducto(
  String cantidad,
  String precio,
) {
  String subtotal =
      (int.parse(cantidad) * double.parse(precio)).toStringAsFixed(2);
  ;
  return double.parse(subtotal);
}

double calcularTotalCompra(
  String subtotalCarrito,
  String costoEnvio,
  String impuesto,
  String descuento,
) {
  String calcularTotalCompra = ((double.parse(subtotalCarrito) +
              double.parse(costoEnvio) +
              double.parse(impuesto)) -
          double.parse(descuento))
      .toStringAsFixed(2);
  return double.parse(calcularTotalCompra);
}

double calcularSubtotalFirebaseDecrease(
  String cantidad,
  String precio,
) {
  String subtotalFirebase =
      ((int.parse(cantidad) - 1) * double.parse(precio)).toStringAsFixed(2);
  return double.parse(subtotalFirebase);
}

double calcularSubtotalFirebaseIncrease(
  String cantidad,
  String precio,
) {
  String subtotalFirebase =
      ((int.parse(cantidad) + 1) * double.parse(precio)).toStringAsFixed(2);
  return double.parse(subtotalFirebase);
}

double calcularIVA(String subtotalCarrito) {
  String calculoIVA =
      ((double.parse(subtotalCarrito) * 0.13)).toStringAsFixed(2);
  return double.parse(calculoIVA);
}

bool showResultSearch(
  String textSearchFOR,
  String textSearchIN,
) {
  return textSearchIN.toLowerCase().contains(textSearchFOR.toLowerCase());
}

String generarOrderID() {
  // random order id generate and validate if that exists in firebase
  String? orderID;
  final _random = new math.Random();
  int randomNumber = _random.nextInt(999999);
  orderID = randomNumber.toString();
  return orderID;
}
