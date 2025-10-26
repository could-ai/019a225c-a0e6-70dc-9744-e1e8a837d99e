import 'package:flutter/material.dart';
import '../models/contract.dart';
import 'add_contract_screen.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({super.key});

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  List<Contract> contracts = Contract.sampleContracts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('العقود'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contracts.length,
        itemBuilder: (context, index) {
          final contract = contracts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(contract.title),
              subtitle: Text('${contract.clientName} - ${contract.type}'),
              trailing: Text(contract.status),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AddContractScreen()),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}