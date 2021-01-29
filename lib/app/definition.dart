import 'package:exemplo/app/view/contact_form.dart';
import 'package:exemplo/app/view/contact_list.dart';
import 'package:exemplo/app/view/my_home_page.dart';
import 'package:flutter/material.dart';

class Definition extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => MyHomePage(),
        'lista': (_) => ContactList(),
        'form': (_) => ContactForm()
      },
    );
  }
}