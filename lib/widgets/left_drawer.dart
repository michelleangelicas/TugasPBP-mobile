import 'package:flutter/material.dart';
import 'package:inventory/screens/list_product.dart';
import 'package:inventory/screens/menu.dart';
import 'package:inventory/screens/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  final int id;
  const LeftDrawer({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'My inventory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan belanjamu di sini!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
              ],
            ),
          ),
          ListTile( 
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(id:id),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ShopFormPage(id:id)),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            onTap: () {
              Navigator.of(context).pop(); // Menutup drawer
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductPage(id:id)),
              );
            },
          ),
        ],
      ),
    );
  }
}