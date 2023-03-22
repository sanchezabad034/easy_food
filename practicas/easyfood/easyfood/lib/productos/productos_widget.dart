import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'productos_model.dart';
export 'productos_model.dart';

class ProductosWidget extends StatefulWidget {
  const ProductosWidget({
    Key? key,
    this.itemParametro,
  }) : super(key: key);

  final ListaCategoriasRecord? itemParametro;

  @override
  _ProductosWidgetState createState() => _ProductosWidgetState();
}

class _ProductosWidgetState extends State<ProductosWidget>
    with TickerProviderStateMixin {
  late ProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pushNamed(
              'Home',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.bottomToTop,
                ),
              },
            );
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF57636C),
            size: 24.0,
          ),
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
            child: badges.Badge(
              badgeContent: Text(
                '1',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              showBadge: true,
              shape: badges.BadgeShape.circle,
              badgeColor: Color.fromARGB(255, 0, 122, 16),
              elevation: 4.0,
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xFF57636C),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('CarritoCompras');
                },
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Hero(
                      tag: 'mainImage',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/easyfood-x4q5hh/assets/da7djbd3a6do/6.jpg',
                          width: double.infinity,
                          height: 300.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'Bastones de chocolate Avellana',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 32.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                    child: Text(
                      '\$69.0',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Text(
                      'Postre horneado relleno con choco avellana.',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFFF1F4F8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x320F1113),
                    offset: Offset(0.0, -2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 34.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFF1F4F8),
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => Icon(
                          Icons.remove_rounded,
                          color:
                              enabled ? Color(0xFF57636C) : Color(0xFF57636C),
                          size: 16.0,
                        ),
                        incrementIconBuilder: (enabled) => Icon(
                          Icons.add_rounded,
                          color: enabled
                              ? Color.fromARGB(255, 57, 239, 111)
                              : Color(0xFF57636C),
                          size: 16.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF0F1113),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        count: _model.countControllerValue ??= 1,
                        updateCount: (count) =>
                            setState(() => _model.countControllerValue = count),
                        stepSize: 1,
                        minimum: 1,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('CarritoCompras');
                      },
                      text: 'Agregar al carrito',
                      options: FFButtonOptions(
                        width: 160.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color.fromARGB(255, 2, 182, 47),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
