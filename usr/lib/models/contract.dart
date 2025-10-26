class Contract {
  final String id;
  final String title;
  final String type;
  final String clientName;
  final DateTime date;
  final String status;

  Contract({
    required this.id,
    required this.title,
    required this.type,
    required this.clientName,
    required this.date,
    required this.status,
  });

  // بيانات وهمية للعرض
  static List<Contract> sampleContracts = [
    Contract(
      id: '1',
      title: 'عقد بيع سيارة',
      type: 'بيع',
      clientName: 'أحمد محمد',
      date: DateTime.now().subtract(const Duration(days: 5)),
      status: 'مكتمل',
    ),
    Contract(
      id: '2',
      title: 'عقد إيجار شقة',
      type: 'إيجار',
      clientName: 'فاطمة علي',
      date: DateTime.now().subtract(const Duration(days: 10)),
      status: 'قيد التنفيذ',
    ),
  ];
}