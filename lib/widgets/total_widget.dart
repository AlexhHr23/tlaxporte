import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tlaxporte_app2/constantes/constantes.dart';

Widget total(String total) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Tu saldo', style: TextStyle(color: colorTextoBlanco)),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('\$ $total',
                style: TextStyle(
                    color: colorTextoBlanco,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 10.0),
            SizedBox(
              height: 20.0,
              width: 65.0,
              child: RaisedButton(
                shape: StadiumBorder(),
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                color: colorSecundario,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.keyboard_arrow_up,
                        color: colorPrimario, size: 20.0),
                    Text(
                      '15%',
                      style: TextStyle(color: colorPrimario),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
