import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final String itemName;
  final int itemAmount;
  final String itemDescription;
  final String itemPrice;

  ItemDetailPage({
    Key? key,
    required this.itemName,
    required this.itemAmount,
    required this.itemDescription, 
    required this.itemPrice,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Amount: $itemAmount',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Price: $itemPrice',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              itemDescription,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali ke Daftar Item'),
            ),
          ],
        ),
      ),
    );
  }
}
