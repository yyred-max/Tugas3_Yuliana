import 'package:flutter/material.dart';

// Model produk
class Latihan2Produk {
  final String nama;
  final int harga;

  const Latihan2Produk(this.nama, this.harga);
}

// Halaman daftar produk
class Latihan2DaftarProduk extends StatelessWidget {
  const Latihan2DaftarProduk({super.key});

  static const List<Latihan2Produk> daftar = [
    Latihan2Produk('Laptop', 8000000),
    Latihan2Produk('Mouse', 150000),
    Latihan2Produk('Keyboard', 350000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 2 - Daftar Produk')),
      body: ListView.separated(
          itemCount: daftar.length,
          separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, i) {
            final produk = daftar[i];

            return ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(produk.nama),
              subtitle: Text('Rp ${produk.harga}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Latihan2DetailProduk(produk: produk),
                  ),
                );
              },
            );
          },
          ),
    );
  }
}

// Halaman detail produk
class Latihan2DetailProduk extends StatelessWidget {
  final Latihan2Produk produk;

  const Latihan2DetailProduk({
    super.key,
    required this.produk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produk.nama)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              produk.nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Harga: Rp ${produk.harga}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}