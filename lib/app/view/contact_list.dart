import 'package:exemplo/app/data/data.dart';
import 'package:exemplo/app/domain/model/contact.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  var _list = lista;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: AppBar(
                title: Text('Contatos'),
                actions: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).pushNamed('form');
                      })
                ],
              ),
              body: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (_, indice) {
                  Contact contact = _list[indice];
                  final avatar = contact.foto.isEmpty  ? CircleAvatar(child: Icon(Icons.person)) : CircleAvatar(  backgroundImage: NetworkImage(contact.foto));
                  return ListTile(
                    leading: avatar,
                    title: Text(contact.nome),
                    subtitle: Text(contact.telefone),
                  );
                },
              ));
  }
}
