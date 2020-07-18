import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('es', 'US')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'hi_guys',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'from_livdev',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'please_subscribe',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                context.locale = Locale('es', 'US');
              },
              child: Text('Change to spanish'),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                context.locale = Locale('en', 'US');
              },
              child: Text('Change to english'),
            ),
          ],
        ),
      ),
    );
  }
}
