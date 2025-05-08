import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'sobre_model.dart';
export 'sobre_model.dart';

class SobreWidget extends StatefulWidget {
  const SobreWidget({super.key});

  static String routeName = 'sobre';
  static String routePath = '/sobre';

  @override
  State<SobreWidget> createState() => _SobreWidgetState();
}

class _SobreWidgetState extends State<SobreWidget> {
  late SobreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobreModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Container(
          width: 250,
          child: Drawer(
            elevation: 16,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Menu',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: FlutterFlowTheme.of(context).headlineMedium,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(MeusdispositivosWidget.routeName);
                        },
                        child: Text(
                          'Meus dispositivos',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(CalcularbtuWidget.routeName);
                        },
                        child: Text(
                          'Cálculo de BTUs',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ManutencoesWidget.routeName);
                        },
                        child: Text(
                          'Meus lembretes',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(SobreWidget.routeName);
                        },
                        child: Text(
                          'Sobre o app',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth(
                              LoginWidget.routeName, context.mounted);
                        },
                        child: Text(
                          'Log Out',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Icon(
                    Icons.energy_savings_leaf_rounded,
                    color: FlutterFlowTheme.of(context).alternate,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            'Sobre o app',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: FlutterFlowTheme.of(context).titleMedium,
                  fontSize: 24,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController1,
                          child: ExpandablePanel(
                            header: Text(
                              'Como funciona',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'O app e suas funcionalidades',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Um dos principais debates atuais envolve o consumo excessivo de energia elétrica, uma preocupação crescente tanto para consumidores residenciais quanto para empresas que buscam reduzir custos e adotar práticas sustentáveis. Entre os principais responsáveis pelo alto consumo de energia estão os aparelhos de ar-condicionado, que, quando utilizados sem controle adequado, resultam em grande desperdício.\n\nDiante desse cenário, o Aplicativo de Controle de Ar-Condicionado AirControl surge como uma solução tecnológica voltada para a otimização do uso desses dispositivos de forma inteligente. O aplicativo permite que os usuários calculem o consumo de energia com base nas características do aparelho e verifiquem, por meio do cálculo de BTUs, se o modelo escolhido é o mais adequado para o ambiente onde está ou será instalado.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController2,
                          child: ExpandablePanel(
                            header: Text(
                              'Cálculo de kWh',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'O que é KWh e como é calculado',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'O que é kWh?\n\nkWh (quilowatt-hora) é a unidade de medida utilizada para quantificar o consumo de energia elétrica. Em termos simples, 1 kWh representa a quantidade de energia consumida por um aparelho com potência de 1.000 watts durante uma hora de funcionamento.\n\nComo o kWh é calculado?\n\nO cálculo do kWh é feito multiplicando a potência do aparelho (em watts) pelo tempo de uso (em horas) e dividindo o resultado por 1.000. A fórmula é a seguinte:\n\nkWh = (Potência (W) x Tempo (h)) / 1.000\n\nExemplo:\n\nUm chuveiro elétrico com potência de 5.000 watts que é utilizado por 30 minutos (0,5 horas) consome:\n\n    kWh = (5.000 W x 0,5 h) / 1.000\n    kWh = 2,5 kWh\n\nOnde o kWh é utilizado?\n\nO kWh é a unidade de medida utilizada nas contas de luz para calcular o consumo de energia elétrica em residências, empresas e indústrias.\n\nImportância de entender o kWh:\n\nCompreender o kWh é fundamental para:\n\n    Monitorar o consumo de energia elétrica.\n    Identificar os aparelhos que mais consomem energia.\n    Adotar medidas para reduzir o consumo e economizar na conta de luz.\n    Auxilia na tomada de decisões na hora da compra de um novo eletrodoméstico, por exemplo.\n\nDicas para reduzir o consumo de kWh:\n\n    Evite deixar aparelhos eletrônicos em modo stand-by.\n    Desligue as luzes ao sair de um ambiente.\n    Utilize lâmpadas de LED, que são mais eficientes.\n    Tome banhos mais curtos.\n    Acumule roupas para usar a máquina de lavar com carga total.\n    Evite deixar a porta da geladeira aberta por muito tempo.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController3,
                          child: ExpandablePanel(
                            header: Text(
                              'Cálculo de BTUs',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'O que é BTU e como é calculado',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'BTU, ou British Thermal Unit (Unidade Térmica Britânica), é uma unidade de medida de energia utilizada para quantificar a capacidade de refrigeração ou aquecimento de equipamentos como aparelhos de ar-condicionado.\n\nO que o BTU mede?\n\nEm termos práticos, o BTU indica a quantidade de calor que um aparelho pode remover (no caso de refrigeração) ou fornecer (no caso de aquecimento) em uma hora.\nQuanto maior o número de BTUs, maior a capacidade do aparelho de refrigerar ou aquecer um ambiente.\n\nComo o BTU é calculado?\n\nO cálculo do BTU necessário para um ambiente depende de diversos fatores, como:\n-  Tamanho do ambiente: A área em metros quadrados é um dos principais fatores.\n-  Exposição solar: Ambientes que recebem muita luz solar exigem aparelhos com maior capacidade.\n-  Número de pessoas: Cada pessoa no ambiente gera calor, o que influencia a necessidade de refrigeração.\n-  Aparelhos eletrônicos: Equipamentos eletrônicos também emitem calor.\n-  Isolamento térmico: Ambientes bem isolados exigem menos BTUs.\n\nPara calcular o BTU é necessário somar:\n    600 BTUs por metro quadrado;\n    600 BTUs por pessoa que ficará no cômodo;\n    600 BTUs por janela do cômodo.\n\nExemplo:\n\nPara um quarto de 20 metros quadrados com uma janela e duas pessoas, o cálculo aproximado seria:\n(20 metros quadrados x 600) + (2 pessoas x 600) + (1 janela x 600) + = 13.800 BTUs',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController4,
                          child: ExpandablePanel(
                            header: Text(
                              'Meus dispositivos',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Cadastro e gerenciamento de dispositivos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'A página \"Meus dispositivos\" permite que o usuário cadastre e gerencie seus dispositivos de Ar Condicionado, inserindo informações como nome, localização (cômodo, por exemplo), potência e BTUs, e tendo acesso ao cálculo de consumo.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController5,
                          child: ExpandablePanel(
                            header: Text(
                              'Manutenções',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Lembretes de manutenções',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'A página \"Manutenções\" oferece um controle de lembretes de manutenções preventivas que o usuário pode adicionar para ser notificado e otimizar ainda mais o tempo de vida útil de seu aparelho.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1.1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Icon(
                          Icons.energy_savings_leaf_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
