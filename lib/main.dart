import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Calculator/CalculatorScreenView.dart';
import 'Form/FormScreen.dart';
import 'Home/HomeScreen.dart';
import 'Main/MainScreen.dart';
import 'Matrix/MatrixView.dart';
import 'Provider/MatricesProvider.dart';
import 'Provider/NonlinearEquationsProvider.dart';
import 'Result/MatricesResultScreen.dart';
import 'Result/ResultScreen.dart';
import 'Theme/MyTheme.dart';

void main (){
  runApp(MultiProvider(
      providers :[
        ChangeNotifierProvider<NonlinearEquationsProvider>(create: (context) => NonlinearEquationsProvider(), ),
        ChangeNotifierProvider<MatricesProvider>(create: (context) => MatricesProvider(),),
      ] ,
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName :(_) => HomeScreen(),
          MainScreen.routeName :(_) => MainScreen(),
          FormScreen.routeName :(_) => FormScreen(),
          CalculatorScreen.routeName :(_) => CalculatorScreen(),
          ResultScreen.routeName : (_) => ResultScreen(),
          MatrixScreen.routeName :(_) => MatrixScreen(),
          MatricesResultScreen.routeName :(_) => MatricesResultScreen(),
        },
        theme: MyTheme.themeData,
        initialRoute: HomeScreen.routeName,

    );

  }
}
