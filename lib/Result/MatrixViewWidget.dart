import 'package:flutter/material.dart';

import '../Models/Matrix.dart';
import 'MatrixContainer.dart';

// ignore: must_be_immutable
class MatrixViewWidget extends StatelessWidget {
  Matrix matrix ;
  MatrixViewWidget(this.matrix, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:matrix.rowOne.map((e) => MatrixContainer(e.toString())).toList()
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:matrix.rowTwo.map((e) => MatrixContainer(e.toString())).toList()
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children:matrix.rowThree.map((e) => MatrixContainer(e.toString())).toList()
            ),
          ],
        )
    );
  }
}
