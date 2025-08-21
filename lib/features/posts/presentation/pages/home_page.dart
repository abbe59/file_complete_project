import 'package:flutter/material.dart';
import '../../../../app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تجربة الحركات في Router')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRouter.patientDetails,
                  arguments: 1,
                );
              },
              child: const Text('فتح صفحة المريض (Slide من اليمين)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.bottomToTopExample);
              },
              child: const Text('فتح شاشة (Slide من الأسفل للأعلى)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.scaleExample);
              },
              child: const Text('فتح شاشة (تكبير/تصغير)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.rotationExample);
              },
              child: const Text('فتح شاشة (دوران)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.home);
              },
              child: const Text('فتح شاشة (Fade)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/rightToLeft'),
              child: const Text('من يمين إلى يسار'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/leftToRight'),
              child: const Text('من يسار إلى يمين'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/fadeScale'),
              child: const Text('تلاشي + تكبير'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/slideRotate'),
              child: const Text('انزلاق + دوران'),
            ),
          ],
        ),
      ),
    );
  }
}
