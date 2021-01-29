import 'package:exemplo/app/data/data.dart';
import 'package:exemplo/app/domain/model/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Contact _contact = new Contact();
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Contato'),
          actions: [
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  _form.currentState.save();
                  if(_contact.nome.isNotEmpty ){
                    lista.add(_contact);
                    _contact = Contact();
                  }
                   Navigator.of(context).pushNamed('lista');
                })
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
              child: Column(
            children: [
              TextFormField(
                onSaved: (value) => _contact.nome  = value,
                decoration: InputDecoration(labelText: 'nome:')
                ),
                
              TextFormField(
                onSaved: (value) => _contact.telefone = value,
                decoration: InputDecoration(labelText: 'Telefone:')
                ),
                
              TextFormField(
                onSaved: (value) => _contact.foto = value,
                decoration: InputDecoration(labelText: 'Endereço Foto:')
                ),
            ],
          )),
        ));
  }
}
