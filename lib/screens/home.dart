import 'package:flutter/material.dart';

String nomeCliente = "José";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('FollowYolo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Olá, $nomeCliente", style: TextStyle(fontSize: 20)),
              customerListTile(nomeCliente),
              ElevatedButton(
                child: Text('Alugar'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Chamar Administrador'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Fazer deposito'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile customerListTile(String nomeCliente) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.monetization_on),
        backgroundColor: Colors.blueGrey[100],
        foregroundColor: Colors.white,
      ),
      title: Text('Saldo:'),
      subtitle: Text('R\$ 90,00'),
    );
  }
}
