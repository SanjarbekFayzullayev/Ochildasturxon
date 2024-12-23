import 'package:flutter/material.dart';
import 'package:ochildasturxon/screens/details_food.dart';
import 'package:ochildasturxon/screens/foods_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        appBar: AppBar(
          backgroundColor: const Color(0xffF2F2F2),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        drawer: const Drawer(
          shape: UnderlineInputBorder(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Sanjarbek,\nyoqmiliy ishtaha!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 28,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffEFEEEE),
                        width: 0,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffEFEEEE), width: 0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TabBar(
                indicatorColor: Color(0xff233E82),
                indicatorWeight: 4,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Ovaqatlar'),
                  Tab(text: 'Restaurantlar'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 100),
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 18, left: 18, top: 68, bottom: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailsFood(),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 290,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(),
                                      Column(
                                        children: [
                                          Text(
                                            "Jizzax somsa ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          ),
                                          Text(
                                            "22 000 USD",
                                            style: TextStyle(
                                                color: Color(0xff233E82),
                                                fontSize: 17),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(-0, -2),
                                  child: Container(
                                    height: 200,
                                    width: 206,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/somsa.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 100),
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 18, left: 18, top: 68, bottom: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  FoodsPage(pagesIn: false,),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 290,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(),
                                        Column(
                                          children: [
                                            Text(
                                              "Palatium Cafe and Restaurant ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                Text("Istambul , Turkiye")
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(-0, -2),
                                  child: Container(
                                    height: 200,
                                    width: 220,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage("images/ress.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                )
                              ],
                            ),
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
      ),
    );
  }
}
