import 'package:flutter/material.dart';

import 'latihan1.dart';
import 'latihan2.dart';
import 'latihan3.dart';
import 'bonus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const MenuUtama(),

        // Latihan 1
        '/latihan1': (_) => const Latihan1Beranda(),

        // Latihan 2
        '/latihan2': (_) => const Latihan2DaftarProduk(),

        // Latihan 3
        '/latihan3': (_) => const Latihan3Beranda(),
        '/latihan3/detail': (_) => const Latihan3Detail(),
        '/latihan3/selesai': (_) => const Latihan3Selesai(),

        // Bonus
        '/bonus': (_) => const BonusUtama(),
      },
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Latihan')),
      body: ListView(
        children: [
          _menu(
            context,
            Icons.swap_horiz,
            'Latihan 1 · Push & Pop',
            '/latihan1',
          ),
          _menu(
            context,
            Icons.send,
            'Latihan 2 · Kirim Data',
            '/latihan2',
          ),
          _menu(
            context,
            Icons.route,
            'Latihan 3 · Named Routes',
            '/latihan3',
          ),
          _menu(
            context,
            Icons.navigation,
            'Bonus · BottomNavigationBar',
            '/bonus',
          ),
        ],
      ),
    );
  }

  Widget _menu(
      BuildContext context,
      IconData icon,
      String title,
      String route,
      ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}