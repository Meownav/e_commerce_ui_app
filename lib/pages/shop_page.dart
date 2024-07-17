import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List shoeDetails = [
    ["Air Jordan 1", "240", "Fine Shoe", "assets/images/shoe1.jpg"],
    ["Air Jordan 2", "340", "Nice Shoe", "assets/images/shoe2.jpg"],
    ["Air Jordan 3", "440", "Great Shoe", "assets/images/shoe3.jpg"],
    ["Air Jordan 4", "540", "Good Shoe", "assets/images/shoe4.jpg"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(
                // horizontal: 20,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "श्री राम | श्री राम | श्री राम |",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
                Text(
                  "Hot Picks ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: shoeDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: shoeDetails[index][0],
                      price: shoeDetails[index][1],
                      description: shoeDetails[index][2],
                      imagePath: shoeDetails[index][3]);
                  return ShoeTile(shoe: shoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
