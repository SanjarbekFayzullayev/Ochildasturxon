import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ochildasturxon/screens/details_food.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<Map<String, dynamic>> items = [
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Veggie tomato mix',
      'price': '1,900',
      'quantity': 1,
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Fish with mix orange',
      'price': '1,900',
      'quantity': 1,
    },
  ];

  void _incrementQuantity(int index) {
    setState(() {
      items[index]['quantity']++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (items[index]['quantity'] > 1) {
        items[index]['quantity']--;
      }
    });
  }

  void _doNothing(BuildContext context) {
    // Hech qanday amal bajarilmaydi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F8),
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: const EdgeInsets.all(20),
            height: 102,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsFood(),
                ),
              ),
              child: Slidable(
                key: ValueKey(index),

                // Faqat chapdan o'ngga suriladi
                startActionPane: null,

                // O'ng tomondan chapga surish yo'q
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: SlidableAction(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        onPressed: _doNothing,
                        backgroundColor: const Color(0xFF233E82),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: SlidableAction(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        onPressed: _doNothing,
                        backgroundColor: const Color(0xFF233E82),
                        foregroundColor: Colors.white,
                        icon: Icons.favorite,
                      ),
                    ),
                  ],
                ),

                // Asosiy vidjet
                child: ListTile(
                  leading: Image.asset(
                    "images/somsa.png",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  title: Text(item['title']),
                  subtitle: Text('Price: \$${item['price']}'),
                  trailing: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Color(0xff233E82),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          onPressed: () => _decrementQuantity(index),
                        ),
                        Text(
                          '${item['quantity']}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: () => _incrementQuantity(index),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
