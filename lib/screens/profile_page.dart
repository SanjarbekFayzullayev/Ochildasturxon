import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F8),
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Information",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/muslima.png",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12), // Space between image and text
                    const Expanded(
                      // Make the column take up remaining space
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marvis Ighedosa",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "dosamarvis@gmail.com",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            "No 15 uti street off ovie palace road effurun delta state",
                            overflow: TextOverflow.ellipsis,
                            // This will truncate if text is too long
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Payment Method",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              // height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: const CircleBorder(),
                          value: true,
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.wallet,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Card",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: const CircleBorder(),
                          value: false,
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xffEB4796),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.home_work,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Card",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
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
