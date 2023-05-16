import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarMetodoPagoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreCC widget.
  TextEditingController? txtNombreCCController;
  String? Function(BuildContext, String?)? txtNombreCCControllerValidator;
  // State field(s) for txtNumeroCC widget.
  TextEditingController? txtNumeroCCController;
  String? Function(BuildContext, String?)? txtNumeroCCControllerValidator;
  // State field(s) for txtExpCC widget.
  TextEditingController? txtExpCCController;
  String? Function(BuildContext, String?)? txtExpCCControllerValidator;
  // State field(s) for txtCVVCC widget.
  TextEditingController? txtCVVCCController;
  String? Function(BuildContext, String?)? txtCVVCCControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreCCController?.dispose();
    txtNumeroCCController?.dispose();
    txtExpCCController?.dispose();
    txtCVVCCController?.dispose();
  }

  /// Additional helper methods are added here.

}
