import 'package:flutter/material.dart';
import 'package:safty_children/core/helpers/navigation_helper.dart';
import 'package:safty_children/core/routing/Routes.dart';
import 'package:safty_children/core/themeing/app_colors.dart';
import 'package:safty_children/features/home/presentation/views/widgets/home_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('سلامة طفلك'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: HomeBox(
                    color: AppColors.yellow,
                    bgColor: Colors.white,
                    icon: Icons.warning_amber_rounded,
                    title: 'التسمم',
                    onTap: () => context.pushNamed('/practice'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: HomeBox(
                    color: AppColors.red,
                    bgColor: Colors.white,
                    icon: Icons.air,
                    title: 'الاختناق',
                    onTap: () => context.pushNamed('/practice'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'الاختبارات'),
        ],
        onTap: (index) {
          if (index == 1) context.pushNamed('/quiz');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(
            Routes.webView,
            arguments:
                'https://copilot.microsoft.com/chats/qKMVsTZYWGoKZ9HEKXXEk',
          );
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
