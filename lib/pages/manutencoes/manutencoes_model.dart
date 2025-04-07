import '/components/switch_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'manutencoes_widget.dart' show ManutencoesWidget;
import 'package:flutter/material.dart';

class ManutencoesModel extends FlutterFlowModel<ManutencoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for switchButton dynamic component.
  late FlutterFlowDynamicModels<SwitchButtonModel> switchButtonModels;

  @override
  void initState(BuildContext context) {
    switchButtonModels = FlutterFlowDynamicModels(() => SwitchButtonModel());
  }

  @override
  void dispose() {
    switchButtonModels.dispose();
  }
}
