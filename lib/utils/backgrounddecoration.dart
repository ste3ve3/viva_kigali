import 'package:flutter/cupertino.dart';

BoxDecoration backgroundDecoration(){
 return const BoxDecoration(
     gradient: LinearGradient(begin: Alignment(-1.0, 0.0),
      end: Alignment(1.0, 0.0),
      transform: GradientRotation(1.5),colors: [Color(0xff2b0414),Color(
           0xff12123b)],),
  );

}