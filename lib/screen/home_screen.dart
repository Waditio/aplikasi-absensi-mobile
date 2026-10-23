import 'package:flutter/material.dart';
import 'quick_absensi_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A0B0B),
      body: SafeArea(
        child: Stack(
          children: [
            // Dekorasi background
            Positioned(
              left: -45,
              bottom: -35,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFF741818),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              right: -55,
              top: 120,
              child: Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  color: Color(0xFF741818),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      // Tombol kembali
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF4A0B0B),
                            size: 25,
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Search
                      Expanded(
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Color(0xFF8A8A8A),
                                fontSize: 14,
                              ),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Color(0xFF4A0B0B),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 14,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Profile
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF4A0B0B),
                          size: 25,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 42),

                  // Judul
                  const Text(
                    'Absensi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Kelola kehadiran anggota dengan mudah',
                    style: TextStyle(
                      color: Color(0xFFE7CFCF),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Quick Absensi
                  _FeatureCard(
                    title: 'QUICK',
                    subtitle: 'ABSENSI',
                    description: 'Catat kehadiran dengan cepat',
                    icon: Icons.access_time_rounded,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const QuickAbsensiScreen(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 18),

                  // Rekap Anggota
                  _FeatureCard(
                    title: 'REKAP',
                    subtitle: 'ANGGOTA',
                    description: 'Lihat data kehadiran anggota',
                    icon: Icons.bar_chart_rounded,
                    onTap: () {},
                  ),

                  const Spacer(),

                  // Footer
                  const Center(
                    child: Text(
                      'Attendance Management',
                      style: TextStyle(
                        color: Color(0xFFD9BABA),
                        fontSize: 11,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const _FeatureCard({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title $subtitle',
                      style: const TextStyle(
                        color: Color(0xFF4A0B0B),
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 15),

              Container(
                width: 52,
                height: 52,
                decoration: const BoxDecoration(
                  color: Color(0xFFB51D24),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 27,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}