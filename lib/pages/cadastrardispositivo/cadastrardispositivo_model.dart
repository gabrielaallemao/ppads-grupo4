import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastrardispositivo_widget.dart' show CadastrardispositivoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrardispositivoModel
    extends FlutterFlowModel<CadastrardispositivoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nomedodispositivo widget.
  FocusNode? nomedodispositivoFocusNode;
  TextEditingController? nomedodispositivoTextController;
  String? Function(BuildContext, String?)?
      nomedodispositivoTextControllerValidator;
  String? _nomedodispositivoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome do dispositivo is required';
    }

    return null;
  }

  // State field(s) for Localizacao widget.
  FocusNode? localizacaoFocusNode;
  TextEditingController? localizacaoTextController;
  String? Function(BuildContext, String?)? localizacaoTextControllerValidator;
  String? _localizacaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Localização do aparelho is required';
    }

    return null;
  }

  // State field(s) for Quantidade widget.
  FocusNode? quantidadeFocusNode;
  TextEditingController? quantidadeTextController;
  String? Function(BuildContext, String?)? quantidadeTextControllerValidator;
  String? _quantidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantidade de aparelhos is required';
    }

    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for BTUs widget.
  FocusNode? bTUsFocusNode;
  TextEditingController? bTUsTextController;
  String? Function(BuildContext, String?)? bTUsTextControllerValidator;
  String? _bTUsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'BTUs is required';
    }

    return null;
  }

  // State field(s) for watts widget.
  FocusNode? wattsFocusNode;
  TextEditingController? wattsTextController;
  String? Function(BuildContext, String?)? wattsTextControllerValidator;
  String? _wattsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Potência do aparelho em watts (W) is required';
    }

    return null;
  }

  // State field(s) for horas widget.
  FocusNode? horasFocusNode;
  TextEditingController? horasTextController;
  String? Function(BuildContext, String?)? horasTextControllerValidator;
  String? _horasTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Tempo de uso em horas is required';
    }

    return null;
  }

  // State field(s) for diasdeuso widget.
  FocusNode? diasdeusoFocusNode;
  TextEditingController? diasdeusoTextController;
  String? Function(BuildContext, String?)? diasdeusoTextControllerValidator;
  String? _diasdeusoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dias de uso no mês is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomedodispositivoTextControllerValidator =
        _nomedodispositivoTextControllerValidator;
    localizacaoTextControllerValidator = _localizacaoTextControllerValidator;
    quantidadeTextControllerValidator = _quantidadeTextControllerValidator;
    bTUsTextControllerValidator = _bTUsTextControllerValidator;
    wattsTextControllerValidator = _wattsTextControllerValidator;
    horasTextControllerValidator = _horasTextControllerValidator;
    diasdeusoTextControllerValidator = _diasdeusoTextControllerValidator;
  }

  @override
  void dispose() {
    nomedodispositivoFocusNode?.dispose();
    nomedodispositivoTextController?.dispose();

    localizacaoFocusNode?.dispose();
    localizacaoTextController?.dispose();

    quantidadeFocusNode?.dispose();
    quantidadeTextController?.dispose();

    bTUsFocusNode?.dispose();
    bTUsTextController?.dispose();

    wattsFocusNode?.dispose();
    wattsTextController?.dispose();

    horasFocusNode?.dispose();
    horasTextController?.dispose();

    diasdeusoFocusNode?.dispose();
    diasdeusoTextController?.dispose();
  }
}
