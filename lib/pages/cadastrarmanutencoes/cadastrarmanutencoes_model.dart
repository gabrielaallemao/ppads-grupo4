import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastrarmanutencoes_widget.dart' show CadastrarmanutencoesWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarmanutencoesModel
    extends FlutterFlowModel<CadastrarmanutencoesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoManutencao widget.
  FocusNode? tipoManutencaoFocusNode;
  TextEditingController? tipoManutencaoTextController;
  String? Function(BuildContext, String?)?
      tipoManutencaoTextControllerValidator;
  String? _tipoManutencaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Tipo de manutenção is required';
    }

    return null;
  }

  // State field(s) for dispositivo widget.
  FocusNode? dispositivoFocusNode;
  TextEditingController? dispositivoTextController;
  String? Function(BuildContext, String?)? dispositivoTextControllerValidator;
  String? _dispositivoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dispositivo is required';
    }

    return null;
  }

  // State field(s) for localManutencao widget.
  FocusNode? localManutencaoFocusNode;
  TextEditingController? localManutencaoTextController;
  String? Function(BuildContext, String?)?
      localManutencaoTextControllerValidator;
  String? _localManutencaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Local da manutenção is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  LembretesManutencaoRow? boolConcluido;

  @override
  void initState(BuildContext context) {
    tipoManutencaoTextControllerValidator =
        _tipoManutencaoTextControllerValidator;
    dispositivoTextControllerValidator = _dispositivoTextControllerValidator;
    localManutencaoTextControllerValidator =
        _localManutencaoTextControllerValidator;
  }

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
