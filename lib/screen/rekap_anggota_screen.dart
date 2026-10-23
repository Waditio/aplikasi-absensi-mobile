
import 'package:flutter/material.dart';

class RekapAnggotaScreen extends StatelessWidget {
  const RekapAnggotaScreen({super.key});

  static const Color maroon = Color(0xFF4A0B0B);

  final List<Map<String, dynamic>> anggota = const [
    {
      'nama': 'Andi Saputra',
      'npm': '23130201',
      'hadir': 18,
      'izin': 1,
      'alpa': 1,
    },
    {
      'nama': 'Budi Pratama',
      'npm': '23130202',
      'hadir': 16,
      'izin': 2,
      'alpa': 2,
    },
    {
      'nama': 'Citra Lestari',
      'npm': '23130203',
      'hadir': 20,
      'izin': 0,
      'alpa': 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: maroon,
        foregroundColor: Colors.white,
        title: const Text('Rekap Anggota'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Rekap Kehadiran Rekan',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Pilih anggota untuk melihat detail kehadirannya.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),

          ...anggota.map((data) {
            final int hadir = data['hadir'] as int;
            final int izin = data['izin'] as int;
            final int alpa = data['alpa'] as int;
            final int total = hadir + izin + alpa;
            final double persentase =
            total == 0 ? 0 : hadir / total;

            return Card(
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(14),
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFE8DADA),
                  child: Icon(Icons.person, color: maroon),
                ),
                title: Text(
                  data['nama'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NPM: ${data['npm']}'),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: persentase,
                        backgroundColor: Colors.grey.shade300,
                        color: maroon,
                        minHeight: 7,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Kehadiran: ${(persentase * 100).toStringAsFixed(0)}%',
                      ),
                    ],
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: maroon,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailRekapScreen(
                        nama: data['nama'] as String,
                        npm: data['npm'] as String,
                        hadir: hadir,
                        izin: izin,
                        alpa: alpa,
                      ),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}

class DetailRekapScreen extends StatelessWidget {
  const DetailRekapScreen({
    super.key,
    required this.nama,
    required this.npm,
    required this.hadir,
    required this.izin,
    required this.alpa,
  });

  final String nama;
  final String npm;
  final int hadir;
  final int izin;
  final int alpa;

  @override
  Widget build(BuildContext context) {
    const maroon = Color(0xFF4A0B0B);
    final int total = hadir + izin + alpa;
    final double persentase =
    total == 0 ? 0 : hadir / total * 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Kehadiran'),
        backgroundColor: maroon,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 42,
              backgroundColor: Color(0xFFE8DADA),
              child: Icon(
                Icons.person,
                size: 50,
                color: maroon,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              nama,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'NPM: $npm',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            _statistik('Hadir', hadir, Colors.green),
            _statistik('Izin', izin, Colors.orange),
            _statistik('Alpa', alpa, Colors.red),
            const Divider(height: 30),
            Text(
              'Total pertemuan: $total',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Persentase kehadiran: '
                  '${persentase.toStringAsFixed(0)}%',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: maroon,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statistik(String label, int jumlah, Color warna) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Icon(Icons.circle, color: warna, size: 14),
        title: Text(label),
        trailing: Text(
          '$jumlah kali',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
