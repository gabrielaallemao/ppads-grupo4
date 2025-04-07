import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastrardispositivo_widget.dart' show CadastrardispositivoWidget;
import 'package:flutter/material.dart';

class CadastrardispositivoModel
    extends FlutterFlowModel<CadastrardispositivoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nomedodispositivo widget.
  FocusNode? nomedodispositivoFocusNode;
  TextEditingController? nomedodispositivoTextController;
  String? Function(BuildContext, String?)?
      nomedodispositivoTextControllerValidator;
  // State field(s) for Localizacao widget.
  FocusNode? localizacaoFocusNode;
  TextEditingController? localizacaoTextController;
  String? Function(BuildContext, String?)? localizacaoTextControllerValidator;
  // State field(s) for Quantidade widget.
  FocusNode? quantidadeFocusNode;
  TextEditingController? quantidadeTextController;
  String? Function(BuildContext, String?)? quantidadeTextControllerValidator;
  // State field(s) for BTUs widget.
  FocusNode? bTUsFocusNode;
  TextEditingController? bTUsTextController;
  String? Function(BuildContext, String?)? bTUsTextControllerValidator;
  // State field(s) for watts widget.
  FocusNode? wattsFocusNode;
  TextEditingController? wattsTextController;
  String? Function(BuildContext, String?)? wattsTextControllerValidator;
  // State field(s) for horas widget.
  FocusNode? horasFocusNode;
  TextEditingController? horasTextController;
  String? Function(BuildContext, String?)? horasTextControllerValidator;
  // State field(s) for diasdeuso widget.
  FocusNode? diasdeusoFocusNode;
  TextEditingController? diasdeusoTextController;
  String? Function(BuildContext, String?)? diasdeusoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
