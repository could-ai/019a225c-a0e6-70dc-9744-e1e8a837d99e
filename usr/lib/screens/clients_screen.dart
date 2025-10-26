import 'package:flutter/material.dart';
import '../models/client.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final clients = Client.sampleClients;

    return Scaffold(
      appBar: AppBar(
        title: const Text('العملاء'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          final client = clients[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(client.name),
              subtitle: Text('${client.type} - ${client.phone}'),
              trailing: Text(client.address),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('إضافة عميل جديد (قريباً)')),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}