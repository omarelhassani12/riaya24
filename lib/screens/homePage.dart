import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:riaya24/screens/accountPage.dart';
import 'package:riaya24/screens/the3pages/clinic.dart';
import 'package:riaya24/screens/the3pages/emergency.dart';
import 'package:riaya24/screens/the3pages/sponsorships.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final Uri phoneNumber = Uri.parse('tel:+212633959676');

  void _openWhatsAppChat() async {
    String whatsAppNumber = "0633959676";
    var url = "https://wa.me/$whatsAppNumber?text=Hello World";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Error: Could not launch');
      throw 'Error occured';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const AccountPage()));
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.account_circle,
                          color: Color(0xFF0A4273), size: 40),
                      Text('حسابي', style: TextStyle(color: Color(0xFF0A4273)))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Do something when the second icon is tapped
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.calendar_month_outlined,
                          color: Color(0xFF0A4273), size: 40),
                      Text('الحجوزات',
                          style: TextStyle(color: Color(0xFF0A4273)))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFDF453A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize: const Size(240, 100),
              ),
              child: const Text(
                'طوارئ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClinicsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0A4273),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize: const Size(240, 100), // add width and height here
              ),
              child: const Text(
                'عيادات',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SponsorshipPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize: const Size(240, 100), // add width and height here
              ),
              child: const Text(
                'رعايات',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 90),
            Column(
              children: [
                const Text(
                  'تواصل معنا',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A4273),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: IconButton(
                        icon: const Icon(FontAwesome.whatsapp,
                            size: 40, color: Color(0xFF0A4273)),
                        onPressed: () {
                          _openWhatsAppChat();
                        },
                      ),
                    ),
                    const SizedBox(width: 32),
                    GestureDetector(
                      child: IconButton(
                        icon: Icon(Icons.phone,
                            size: 40, color: Color(0xFF0A4273)),
                        onPressed: () {
                          launchUrl(phoneNumber);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
