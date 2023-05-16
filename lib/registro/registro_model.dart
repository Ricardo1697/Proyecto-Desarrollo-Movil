import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txtPassword widget.
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // State field(s) for txtPasswordC widget.
  TextEditingController? txtPasswordCController;
  late bool txtPasswordCVisibility;
  String? Function(BuildContext, String?)? txtPasswordCControllerValidator;
  // State field(s) for txtRoles widget.
  TextEditingController? txtRolesController;
  late bool txtRolesVisibility;
  String? Function(BuildContext, String?)? txtRolesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPasswordCVisibility = false;
    txtRolesVisibility = false;
  }

  void dispose() {
    txtNombreController?.dispose();
    txtEmailController?.dispose();
    txtPasswordController?.dispose();
    txtPasswordCController?.dispose();
    txtRolesController?.dispose();
  }

  /// Additional helper methods are added here.

}
