import 'package:flutter/material.dart';
import 'package:ochildasturxon/screens/details_food.dart';

class FoodsPage extends StatefulWidget {
  bool pagesIn;

  FoodsPage({this.pagesIn = true, Key? key}) : super(key: key);

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  int? selectedIndex;
  List<String> types = [
    "Darxon",
    "Uchrashuv",
    "Nihol",
    "Mumtoz",
    "Suvorov Restoran",
    "Jeyran",
    "Arbuz",
  ];
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.pagesIn == true
          ? null
          : AppBar(
              title: const Text(
                "Palatium Cafe and Restaurant",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg_foods.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search food..',
                    suffixIcon: const Icon(
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
              widget.pagesIn == true
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 40),
                      child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          itemCount: types.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  select = index;
                                });
                                print(select);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: select == index
                                      ? const Color(0xff294284)
                                      : const Color(0xffF0F0F0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    types[index],
                                    style: select == index
                                        ? const TextStyle(
                                            color: Colors.white, fontSize: 16)
                                        : const TextStyle(
                                            color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          double topOffset = (index % 2 == 0) ? 10 : 80;

                          return GestureDetector(
                            onTap: () {
                              if (selectedIndex == index) {
                                // Agar foydalanuvchi bir marta bosib ma'lumotni ko'rgach yana bosgan bo'lsa,
                                // Details sahifasiga o'tamiz.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsFood(),
                                  ),
                                );
                              } else {
                                // Rasm birinchi marta bosilganda, ma'lumotlarni ko'rsatish uchun selectedIndex yangilanadi.
                                setState(() {
                                  selectedIndex = index;
                                });
                              }
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              margin: EdgeInsets.only(top: topOffset),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment(
                                        0, (index % 2 == 0) ? 1.5 : 80),
                                    child: AnimatedOpacity(
                                      opacity:
                                          selectedIndex == index ? 1.0 : 0.0,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: Container(
                                        width: 144,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Somsa',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '\$20',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: (index % 2 == 0) ? 180 : 200,
                                    height: (index % 2 == 0) ? 180 : 200,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("images/foods.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
