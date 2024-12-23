import 'package:flutter/material.dart';

class DetailsFood extends StatelessWidget {
  const DetailsFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF6F6F9),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      backgroundColor: const Color(0xffF6F6F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 260,
                  width: 260,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    image: DecorationImage(
                      image: AssetImage("images/foods.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text(
                "Mazaliy somsa",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              const Text(
                "20 \$",
                style: TextStyle(
                  color: Color(0xff233E82),
                  fontSize: 22,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery info",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery info",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xff233E82),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
        ],
      ),
    );
  }
}
