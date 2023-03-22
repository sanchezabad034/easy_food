import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carrito_compras_sin_productos_model.dart';
export 'carrito_compras_sin_productos_model.dart';

class CarritoComprasSinProductosWidget extends StatefulWidget {
  const CarritoComprasSinProductosWidget({Key? key}) : super(key: key);

  @override
  _CarritoComprasSinProductosWidgetState createState() =>
      _CarritoComprasSinProductosWidgetState();
}

class _CarritoComprasSinProductosWidgetState
    extends State<CarritoComprasSinProductosWidget> {
  late CarritoComprasSinProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarritoComprasSinProductosModel());
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
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('Home');
          },
        ),
        title: Text(
          'Carrito de compras',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF090F13),
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(-0.05, -0.05),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 55.0),
                child: Icon(
                  Icons.shopping_basket,
                  color: Color(0xFF09861A),
                  size: 200.0,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 17.0),
                child: Text(
                  'El carrito de compras esta vacio',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Text(
                  'Agrega productos de la tienda para que puedas visualizar aquí.',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'Home',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  text: 'Regresar a la tienda',
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF09861A),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
