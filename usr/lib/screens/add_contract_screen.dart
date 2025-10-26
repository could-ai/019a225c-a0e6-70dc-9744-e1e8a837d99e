import 'package:flutter/material.dart';
import '../models/contract.dart';
import '../models/client.dart';

class AddContractScreen extends StatefulWidget {
  const AddContractScreen({super.key});

  @override
  State<AddContractScreen> createState() => _AddContractScreenState();
}

class _AddContractScreenState extends State<AddContractScreen> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String type = 'بيع';
  String clientName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة عقد جديد'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'عنوان العقد'),
                validator: (value) => value!.isEmpty ? 'مطلوب' : null,
                onSaved: (value) => title = value!,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: type,
                decoration: const InputDecoration(labelText: 'نوع العقد'),
                items: ['بيع', 'إيجار', 'زواج', 'إرث'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) => setState(() => type = value!),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: clientName,
                decoration: const InputDecoration(labelText: 'اسم العميل'),
                items: Client.sampleClients.map((Client client) {
                  return DropdownMenuItem<String>(
                    value: client.name,
                    child: Text(client.name),
                  );
                }).toList(),
                onChanged: (value) => setState(() => clientName = value!),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saveContract,
                child: const Text('حفظ العقد'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveContract() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // منطق حفظ العقد (وهمي حالياً)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تم حفظ العقد بنجاح')),
      );
      Navigator.pop(context);
    }
  }
}