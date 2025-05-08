import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/switch_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'manutencoes_widget.dart' show ManutencoesWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
