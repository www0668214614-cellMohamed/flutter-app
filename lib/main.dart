import 'package:flutter/material.dart';

void main() => runApp(FarmManagerApp());

class FarmManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مربي الأغنام الذكي',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Arial'),
      home: FarmHomeScreen(),
    );
  }
}

class FarmHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تطبيق المربي الذكي - إدارة الأغنام'), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildStatCard('إجمالي عدد الأغنام', '150 رأس', Colors.blue),
            SizedBox(height: 15),
            _buildSectionTitle('الحالة الصحية للقطيع'),
            Row(
              children: [
                _buildSmallCard('سليمة', '140', Colors.green),
                _buildSmallCard('تحت العلاج', '10', Colors.orange),
              ],
            ),
            SizedBox(height: 20),
            _buildSectionTitle('أوقات الدواء القادمة'),
            _buildMedicineItem('تطعيم الدوري', 'غداً - 08:00 صباحاً'),
            _buildMedicineItem('مضاد حيوي (المجموعة ب)', 'بعد يومين'),
            SizedBox(height: 20),
            _buildSectionTitle('توزيع الأعمار'),
            _buildAgeRow('حملان (أقل من 6 أشهر)', '40 رأس'),
            _buildAgeRow('أغنام بالغة', '110 رأس'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'إضافة رأس جديد',
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
          Text(value, style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(alignment: Alignment.centerRight, child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    );
  }

  Widget _buildSmallCard(String title, String count, Color color) {
    return Expanded(
      child: Card(
        color: color.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(title, style: TextStyle(fontSize: 16)),
              Text(count, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMedicineItem(String name, String time) {
    return ListTile(
      leading: Icon(Icons.medication, color: Colors.red),
      title: Text(name),
      subtitle: Text(time),
      trailing: Icon(Icons.notifications_active, color: Colors.orange),
    );
  }

  Widget _buildAgeRow(String label, String count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(count, style: TextStyle(fontWeight: FontWeight.bold))],
      ),
    );
  }
}
