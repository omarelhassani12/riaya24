import 'package:flutter/material.dart';

class Clinic {
  final String nameEn;
  final String nameAr;
  final String address;
  final String phoneNumber;
  final IconData icon;

  Clinic({
    required this.nameEn,
    required this.nameAr,
    required this.address,
    required this.phoneNumber,
    required this.icon,
  });
}

class ClinicsPage extends StatelessWidget {
  final List<Clinic> clinics = [
    Clinic(
      nameEn: 'General Clinic',
      nameAr: 'عيادة عامة',
      address: '123 Main St.',
      phoneNumber: '555-1234',
      icon: Icons.local_hospital,
    ),
    Clinic(
      nameEn: 'Pediatric Clinic',
      nameAr: 'عيادة أطفال',
      address: '456 Elm St.',
      phoneNumber: '555-5678',
      icon: Icons.child_care,
    ),
    Clinic(
      nameEn: 'Dental Clinic',
      nameAr: 'عيادة أسنان',
      address: '789 Oak St.',
      phoneNumber: '555-9012',
      icon: Icons.local_pharmacy,
    ),
    Clinic(
      nameEn: 'Cardiac Clinic',
      nameAr: 'عيادة القلب',
      address: '321 Elm St.',
      phoneNumber: '555-4321',
      icon: Icons.favorite_border,
    ),
    Clinic(
      nameEn: 'Neuro Clinic',
      nameAr: 'عيادة الأعصاب',
      address: '654 Oak St.',
      phoneNumber: '555-8765',
      icon: Icons.thermostat_rounded,
    ),
    Clinic(
      nameEn: 'Orthopedic Clinic',
      nameAr: 'عيادة العظام',
      address: '987 Main St.',
      phoneNumber: '555-2109',
      icon: Icons.accessibility_new,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر عياداتك'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A4273),
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
        children: clinics
            .map(
              (clinic) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    // Navigate to clinic details page
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          clinic.icon,
                          color: Color(0xFF0A4273),
                          size: 40,
                        ),
                        SizedBox(height: 10),
                        Text(
                          clinic.nameEn,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          clinic.nameAr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Cairo',
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
