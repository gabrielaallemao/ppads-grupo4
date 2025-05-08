import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'calcularbtu_widget.dart' show CalcularbtuWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalcularbtuModel extends FlutterFlowModel<CalcularbtuWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for area widget.
  FocusNode? areaFocusNode;
  TextEditingController? areaTextController;
  String? Function(BuildContext, String?)? areaTextControllerValidator;
  // State field(s) for pessoas widget.
  FocusNode? pessoasFocusNode;
  TextEditingController? pessoasTextController;
  String? Function(BuildContext, String?)? pessoasTextControllerValidator;
  // State field(s) for janelas widget.
  FocusNode? janelasFocusNode;
  TextEditingController? janelasTextController;
  String? Function(BuildContext, String?)? janelasTextControllerValidator;
  // Stores action output result for [Custom Action - btuCustomAction] action in calcular widget.
  int? btuResultado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    areaFocusNode?.dispose();
    areaTextController?.dispose();

    pessoasFocusNode?.dispose();
    pessoasTextController?.dispose();

    janelasFocusNode?.dispose();
    janelasTextController?.dispose();
  }
}
