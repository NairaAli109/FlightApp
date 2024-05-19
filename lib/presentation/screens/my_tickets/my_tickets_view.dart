import 'package:flutter/material.dart';

class MyTicketsView extends StatelessWidget {
  const MyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
        centerTitle: true,
      ),
    );
  }
}
