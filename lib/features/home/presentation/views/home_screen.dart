import 'package:flutter/material.dart';
import 'package:safty_children/core/helpers/navigation_helper.dart';
import 'package:safty_children/core/routing/Routes.dart';
import 'package:safty_children/core/themeing/app_colors.dart';
import 'package:safty_children/core/themeing/app_styles.dart';
import 'package:safty_children/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String url = 'https://copilot.microsoft.com/chats/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سلامة طفلك', style: AppStyles.appBarStyle),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appBarColor,
        elevation: 11,
      ),
      body: HomeBody(),
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
          context.pushNamed(Routes.webView, arguments: url);
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
