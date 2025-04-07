import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastrarmanutencoes_widget.dart' show CadastrarmanutencoesWidget;
import 'package:flutter/material.dart';

class CadastrarmanutencoesModel
    extends FlutterFlowModel<CadastrarmanutencoesWidget> {
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  LembretesManutencaoRow? boolConcluido;

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
