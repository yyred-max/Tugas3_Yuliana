import 'package:flutter/material.dart';
import 'latihan1.dart';
import 'latihan2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const MenuUtama(),

        '/latihan1': (_) => const Latihan1Beranda(),

        '/latihan2': (_) => const Latihan2DaftarProduk(),
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
            ],
        ),
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
