import 'package:flutter/material.dart';

class BonusUtama extends StatefulWidget {
  const BonusUtama({super.key});

  @override
  State<BonusUtama> createState() => _BonusUtamaState();
}

class _BonusUtamaState extends State<BonusUtama> {
  int _index = 0; // Menyimpan indeks tab yang sedang aktif

  // Judul AppBar untuk setiap tab
  static const List<String> _judul = [
    'Beranda',
    'Cari',
    'Profil',
  ];

  // Daftar halaman (widget) untuk setiap tab
  static const List<Widget> _halaman = [
    BonusBerandaTab(),
    BonusCariTab(),
    BonusProfilTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_judul[_index])),
      // IndexedStack menjaga state (kondisi) dari masing-masing tab agar tidak hilang saat berpindah
      body: IndexedStack(
        index: _index,
        children: _halaman,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i), // Ubah tab saat diklik
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

// ---------- Isi Tab 1 ----------
class BonusBerandaTab extends StatelessWidget {
  const BonusBerandaTab({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Halaman Beranda', style: TextStyle(fontSize: 24)),
    );
  }
}

// ---------- Isi Tab 2 ----------
class BonusCariTab extends StatelessWidget {
  const BonusCariTab({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Halaman Cari', style: TextStyle(fontSize: 24)),
    );
  }
}

// ---------- Isi Tab 3 ----------
class BonusProfilTab extends StatelessWidget {
  const BonusProfilTab({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Halaman Profil', style: TextStyle(fontSize: 24)),
    );
  }
}