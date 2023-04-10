import 'package:flutter/material.dart';

class Sponsor {
  final String nameAr;
  final String nameEn;
  final IconData icon;

  Sponsor({
    required this.nameAr,
    required this.nameEn,
    required this.icon,
  });
}

class SponsorshipPage extends StatelessWidget {
  final List<Sponsor> sponsors = [
    Sponsor(
      nameAr: 'ا ب ي',
      nameEn: 'ABC Corporation',
      icon: Icons.ac_unit,
    ),
    Sponsor(
      nameAr: 'ا ب ي',
      nameEn: 'XYZ Inc.',
      icon: Icons.build,
    ),
    Sponsor(
      nameAr: 'ا ب ي',
      nameEn: 'Acme Industries',
      icon: Icons.design_services,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر حالتك'),
        centerTitle: true,
        backgroundColor: const Color(0xFF36CB87),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        childAspectRatio: 0.9,
        mainAxisSpacing: 10,
        children: sponsors
            .map(
              (sponsor) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    // Navigate to sponsor details page
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          sponsor.icon,
                          size: 50,
                          color: Color(0xFF36CB87),
                        ),
                        SizedBox(height: 10),
                        Text(
                          sponsor.nameEn,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          sponsor.nameAr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
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
