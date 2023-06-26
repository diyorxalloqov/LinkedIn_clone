import 'package:flutter/material.dart';
import 'package:linkedin/provider/auth/RegisterProvider.dart';
import 'package:linkedin/ui/pages/auth/loginPage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    RegisterProvider provider = Provider.of<RegisterProvider>(context);

    double m_h = MediaQuery.of(context).size.height;
    double m_w = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
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
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        "Create your accaunt. it's free and only takes a minuts"),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: m_h * 0.06,
                                width: m_w * 0.39,
                                child: TextFormField(
                                  controller: provider.fnameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Bo'sh qoldirmang";
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      errorText: provider.error.isNotEmpty
                                          ? provider.error
                                          : null,
                                      border: const OutlineInputBorder(),
                                      hintText: "First Name",
                                      hintStyle: const TextStyle(fontSize: 20)),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: m_h * 0.06,
                                width: m_w * 0.39,
                                child: TextFormField(
                                  controller: provider.lnameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Bo'sh qoldirmang";
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      errorText: provider.error.isNotEmpty
                                          ? provider.error
                                          : null,
                                      border: const OutlineInputBorder(),
                                      hintText: "Last Name",
                                      hintStyle: const TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: provider.emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bo'sh qoldirmang";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                errorText: provider.error.isNotEmpty
                                    ? provider.error
                                    : null,
                                border: const OutlineInputBorder(),
                                hintText: "Email",
                                hintStyle: const TextStyle(fontSize: 20)),
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
                            decoration: InputDecoration(
                                errorText: provider.error.isNotEmpty
                                    ? provider.error
                                    : null,
                                border: const OutlineInputBorder(),
                                hintText: "Password",
                                hintStyle: const TextStyle(fontSize: 20)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          onChanged: (value) {},
                          value: true,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "I accept the terms of use & Privacy Policy",
                              style: TextStyle(
                                  color: Colors.black, fontSize: m_w * 0.0355),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: m_h * 0.03,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            provider.register(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(m_w * 0.9, m_h * 0.07),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(30),
                                    right: Radius.circular(30)))),
                        child: const Text(
                          "Register now",
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
                          "Already have an accaunt?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: m_w * 0.015,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (route) => false);
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                decorationThickness: 2,
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
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
