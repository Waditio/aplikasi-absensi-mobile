
import 'package:flutter/material.dart';
import 'rekap_anggota_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color maroon = Color(0xFF4A0B0B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: maroon,
        foregroundColor: Colors.white,
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 55,
            backgroundColor: Color(0xFFE8DADA),
            child: Icon(
              Icons.person,
              size: 65,
              color: maroon,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Nama Anggota',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Anggota Absensi',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 30),

          _profileItem(
            icon: Icons.badge_outlined,
            title: 'Nama Lengkap',
            subtitle: 'Nama Anggota',
          ),
          _profileItem(
            icon: Icons.email_outlined,
            title: 'Email',
            subtitle: 'anggota@email.com',
          ),
          _profileItem(
            icon: Icons.groups_outlined,
            title: 'Status',
            subtitle: 'Anggota',
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 55,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: maroon,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RekapAnggotaScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.fact_check_outlined),
              label: const Text(
                'Lihat Rekap Kehadiran Rekan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _profileItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: maroon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
