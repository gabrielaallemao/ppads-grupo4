import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'editarmanutencao_widget.dart' show EditarmanutencaoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarmanutencaoModel extends FlutterFlowModel<EditarmanutencaoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoManutencao widget.
  FocusNode? tipoManutencaoFocusNode;
  TextEditingController? tipoManutencaoTextController;
  String? Function(BuildContext, String?)?
      tipoManutencaoTextControllerValidator;
  // State field(s) for dispositivo widget.
  FocusNode? dispositivoFocusNode;
  TextEditingController? dispositivoTextController;
  String? Function(BuildContext, String?)? dispositivoTextControllerValidator;
  // State field(s) for localManutencao widget.
  FocusNode? localManutencaoFocusNode;
  TextEditingController? localManutencaoTextController;
  String? Function(BuildContext, String?)?
      localManutencaoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<LembretesManutencaoRow>? edicaoManutencoes;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tipoManutencaoFocusNode?.dispose();
    tipoManutencaoTextController?.dispose();

    dispositivoFocusNode?.dispose();
    dispositivoTextController?.dispose();

    localManutencaoFocusNode?.dispose();
    localManutencaoTextController?.dispose();
  }
}
