import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtBuscar widget.
  TextEditingController? txtBuscarController;
  String? Function(BuildContext, String?)? txtBuscarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtBuscarController?.dispose();
  }

  /// Additional helper methods are added here.

}
