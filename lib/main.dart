import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get titleSection {
    return Container(
      // Soal 3: Menambahkan padding sebesar 32 di seluruh tepi
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          // Soal 1: Expanded digunakan agar Column menyesuaikan ruang di dalam Row
          Expanded(
            child: Column(
              // Mengatur crossAxisAlignment agar posisi berada di awal
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Soal 2: Baris pertama teks berada di dalam Container dengan padding
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Teks kedua dengan warna abu-abu
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Soal 3: Icon bintang dengan warna merah
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          // Soal 3: Teks dengan angka 41
          const Text('41'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Yunika Puteri Dwi Antika (2241760048)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Mengganti body 'Hello World' dengan titleSection
        body: Column(
          children: [
            titleSection, // Menampilkan titleSection
            const Center(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
