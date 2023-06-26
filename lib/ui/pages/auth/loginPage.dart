import 'package:flutter/material.dart';
import 'package:linkedin/provider/auth/LoginProvider.dart';
import 'package:linkedin/ui/pages/auth/registirPage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double m_h = MediaQuery.of(context).size.height;
    double m_w = MediaQuery.of(context).size.width;

    LoginProvider provider = Provider.of<LoginProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: m_h,
            width: m_w,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(m_h * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/linkedin.png"),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Text("Stay updated on your professional world"),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bo'sh qoldirmang";
                              } else {
                                return null;
                              }
                            },
                            controller: provider.emailController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                                hintStyle: TextStyle(fontSize: 20)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: provider.passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bo'sh qoldirmang";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Password",
                                hintStyle: TextStyle(fontSize: 20)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: m_h * 0.0001,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                            (route) => false);
                      },
                      child: Row(
                        children: [
                          const Text(
                            "Create one",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: m_w * 0.02,
                          ),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: m_h * 0.03,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            provider.login(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(m_w * 0.9, m_h * 0.07),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(30),
                                    right: Radius.circular(30)))),
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        )),
                    SizedBox(
                      height: m_h * 0.03,
                    ),
                    Row(
                      children: [
                        const Text(
                          "New to linkedin?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: m_w * 0.015,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Join now",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
