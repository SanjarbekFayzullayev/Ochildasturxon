import 'package:flutter/material.dart';
import 'package:ochildasturxon/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              shadowColor: Colors.black,
              elevation: 12,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                height: 320,
                child: const Text(
                  "Logo",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text("Email address"),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot passcode?",
                      style: TextStyle(
                        color: Color(0xff233E82),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff233E82),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
