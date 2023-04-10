import 'package:flutter/material.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<EmergencyType> types = [
      const EmergencyType(
          nameEn: 'Fire', nameAr: 'حريق', icon: Icons.fire_extinguisher),
      const EmergencyType(
          nameEn: 'Injury', nameAr: 'جرح', icon: Icons.local_hospital),
      const EmergencyType(
          nameEn: 'Ambulance', nameAr: 'سيارة إسعاف', icon: Icons.local_taxi),
      const EmergencyType(
          nameEn: 'Security', nameAr: 'مراقبة الأمن', icon: Icons.security),
      const EmergencyType(
          nameEn: 'Missing child', nameAr: 'طفل مفقود', icon: Icons.child_care),
      const EmergencyType(
          nameEn: 'Attack', nameAr: 'هجوم', icon: Icons.warning),
      const EmergencyType(
          nameEn: 'General Emergency',
          nameAr: 'حالة طارئة عامة',
          icon: Icons.local_hospital),
      const EmergencyType(
          nameEn: 'Accident', nameAr: 'حادث', icon: Icons.warning),
      const EmergencyType(
          nameEn: 'Pediatric', nameAr: 'أطفال', icon: Icons.child_care),
      const EmergencyType(
          nameEn: 'General Surgery',
          nameAr: 'جراحة عامة',
          icon: Icons.local_hospital),
      const EmergencyType(
          nameEn: 'Cardiac Catheter',
          nameAr: 'قسطرة القلب',
          icon: Icons.favorite_border),
      const EmergencyType(
          nameEn: 'Obstetrics and Gynecology',
          nameAr: 'النسائية والتوليد',
          icon: Icons.pregnant_woman),
      const EmergencyType(
          nameEn: 'Neurosurgical',
          nameAr: 'جراحة الأعصاب',
          icon: Icons.local_hospital),
      const EmergencyType(
          nameEn: 'Orthopedic', nameAr: 'عظام', icon: Icons.accessibility_new),
      const EmergencyType(
          nameEn: 'Burns', nameAr: 'حروق', icon: Icons.whatshot),
      const EmergencyType(
          nameEn: 'Plastic Surgery', nameAr: 'جراحة التجميل', icon: Icons.face),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر حالتك'),
        centerTitle: true,
        backgroundColor: const Color(0xFFDF453A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: types
            .map(
              (type) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          type.icon,
                          color: Colors.red,
                          size: 40,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          type.nameEn,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          type.nameAr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class EmergencyType {
  final String nameEn;
  final String nameAr;
  final IconData icon;

  const EmergencyType({
    required this.nameEn,
    required this.nameAr,
    required this.icon,
  });
}
