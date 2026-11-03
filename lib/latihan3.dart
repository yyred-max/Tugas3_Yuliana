import 'package:flutter/material.dart';

// ---------- Halaman 1: Beranda ----------
class Latihan3Beranda extends StatelessWidget {
  const Latihan3Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 3 - Beranda')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Mengirim argumen 'Rangga' ke rute detail
            Navigator.pushNamed(
              context,
              '/latihan3/detail',
              arguments: 'Rangga',
            );
          },
          child: const Text('Lihat Detail'),
        ),
      ),
    );
  }
}

// ---------- Halaman 2: Detail ----------
class Latihan3Detail extends StatelessWidget {
  const Latihan3Detail({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap argumen yang dikirim
    final nama = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Detail $nama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Halo, $nama!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Meneruskan argumen ke halaman selesai
                Navigator.pushNamed(
                  context,
                  '/latihan3/selesai',
                  arguments: nama,
                );
              },
              child: const Text('Lanjut ke Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------- Halaman 3: Selesai ----------
class Latihan3Selesai extends StatelessWidget {
  const Latihan3Selesai({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap argumen di halaman terakhir
    final nama = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 3 - Selesai')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Terima kasih, $nama!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman paling awal (Beranda)
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Kembali ke Beranda'),
            ),
          ],
        ),
      ),
    );
  }
}