import 'package:flutter/material.dart';
import 'package:tlaxporte_app2/constantes/constantes.dart';
import 'package:tlaxporte_app2/widgets/appbar_widget.dart';
import 'package:tlaxporte_app2/widgets/total_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _fondo(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[appBar(), total('00.00')],
        )
      ],
    ));
  }

  Widget _fondo() {
    final boxTop = Container(
      height: 220.0,
      width: double.infinity,
      color: colorPrimario,
    );
    final circulo1 = Container(
      height: 150.0,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          color: colorCirculo.withOpacity(0.3)),
    );

    final circulo2 = Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          color: colorCirculo.withOpacity(0.3)),
    );

    return Stack(
      children: <Widget>[
        boxTop,
        Positioned(
          left: -50.0,
          top: -65.0,
          child: circulo1,
        ),
        Positioned(right: -25.0, top: -48.0, child: circulo2)
      ],
    );
  }
}
