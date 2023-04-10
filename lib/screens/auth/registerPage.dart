import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                child: Stack(
                  children: [
                    const Center(
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          color: Color(0xFF0A4273),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.close_sharp,
                            color: Color(0xFF0A4273)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/riaya24.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 195, 197, 199)),
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFFEFEFEF),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline,
                                  color: Color(0xFF0A4273)),
                              hintText: 'ادخل اسمك',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 195, 197, 199)),
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFFEFEFEF),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone_outlined,
                                color: Color(0xFF0A4273),
                              ),
                              hintText: 'ادخل رقم هاتفك',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 195, 197, 199)),
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFFEFEFEF),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline,
                                  color: Color(0xFF0A4273)),
                              hintText: 'ادخل كلمة المرور الخاصة بك',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF66BB6A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: const Size(180, 50),
                    ),
                    child: const Text(
                      'تسجيل',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'لديك حساب بالفعل؟ تسجيل الدخول',
                      style: TextStyle(
                        color: Color(0xFF0A4273),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// // in eng///////////////
// Padding(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.person_outline),
//                       hintText: 'Enter your name',
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.email_outlined),
//                       hintText: 'Enter your email',
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.lock_outline),
//                       hintText: 'Enter your password',
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text('Register'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green[400],
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   InkWell(
//                     onTap: () {},
//                     child: Text(
//                       'Already have an account? Login',
//                       style: TextStyle(
//                         color: Colors.green[400],
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),