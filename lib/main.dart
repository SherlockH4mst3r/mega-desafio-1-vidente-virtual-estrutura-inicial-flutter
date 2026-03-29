import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: VidenteVirtualPage()));
}

class VidenteVirtualPage extends StatelessWidget {
  const VidenteVirtualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Text(
          'Vidente Virtual',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Vidente(),
    );
  }
}

class Vidente extends StatefulWidget {
  const Vidente({super.key});

  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroDalmagem = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            numeroDalmagem = Random().nextInt(5) + 2;
          });
        },
        child: Image.asset('imagens/vidente$numeroDalmagem.png'),
      ),
    );
  }
}
