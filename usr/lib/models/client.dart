class Client {
  final String id;
  final String name;
  final String type; // فردي أو شركة
  final String phone;
  final String address;

  Client({
    required this.id,
    required this.name,
    required this.type,
    required this.phone,
    required this.address,
  });

  // بيانات وهمية للعرض
  static List<Client> sampleClients = [
    Client(
      id: '1',
      name: 'أحمد محمد',
      type: 'فردي',
      phone: '055-123-4567',
      address: 'الجزائر، حسين داي',
    ),
    Client(
      id: '2',
      name: 'شركة البناء الجديد',
      type: 'شركة',
      phone: '021-987-6543',
      address: 'وهران، مركز المدينة',
    ),
  ];
}