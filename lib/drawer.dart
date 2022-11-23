import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/watchlist.dart';

class UniversalDrawer extends StatelessWidget {
  const UniversalDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TambahBudget(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const DataBudget(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Watchlist(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}