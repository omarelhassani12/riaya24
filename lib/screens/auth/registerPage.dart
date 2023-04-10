import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riaya24/screens/auth/loginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fromkey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            'إنشاء حساب',
            style: TextStyle(
              color: Color(0xFF0A4273),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close_sharp, color: Color(0xFF0A4273)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              child: Form(
                key: fromkey,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 195, 197, 199)),
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
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'الرجاء إدخال اسم صحيح';
                                }
                                if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                  return 'يجب أن يحتوي الاسم فقط على حروف';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 195, 197, 199)),
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
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'الرجاء إدخال رقم الهاتف';
                                } else if (value.length != 10) {
                                  return 'يجب أن يكون رقم الهاتف مكونًا من 10 أرقام فقط';
                                } else if (!RegExp(r'^[0-9]+$')
                                    .hasMatch(value)) {
                                  return 'يجب أن يحتوي رقم الهاتف على أرقام فقط';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 195, 197, 199),
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xFFEFEFEF),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Color(0xFF0A4273),
                                ),
                                hintText: 'ادخل كلمة المرور الخاصة بك',
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                  icon: _isPasswordVisible
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Colors.grey,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                ),
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
                        'تسجيل حساب',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
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