import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'switch_button_model.dart';
export 'switch_button_model.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({
    super.key,
    required this.isConcluido,
    this.idLembrete,
  });

  final bool? isConcluido;
  final int? idLembrete;

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  late SwitchButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchButtonModel());

    _model.switchLembreteValue = widget!.isConcluido!;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.15,
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: Stack(
        alignment: AlignmentDirectional(0, 0),
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Switch.adaptive(
              value: _model.switchLembreteValue!,
              onChanged: true
                  ? null
                  : (newValue) async {
                      safeSetState(
                          () => _model.switchLembreteValue = newValue!);
                    },
              activeColor: FlutterFlowTheme.of(context).tertiary,
              activeTrackColor: FlutterFlowTheme.of(context).tertiary,
              inactiveTrackColor: FlutterFlowTheme.of(context).accent3,
              inactiveThumbColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        ],
      ),
    );
  }
}
