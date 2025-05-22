import 'package:flutter/material.dart';
import 'package:safty_children/core/themeing/app_colors.dart';
import 'package:safty_children/features/home/presentation/views/widgets/home_box.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الصف الأول
        Row(
          textDirection: TextDirection.ltr,
          children: const [
            Expanded(
              child: HomeBox(
                title: 'التسمم',
                icon: Icons.warning_amber_outlined,
                color: AppColors.yellow,
                bgColor: AppColors.yellowBg,
              ),
            ),
            Expanded(
              child: HomeBox(
                title: 'الاختناق',
                icon: Icons.warning_amber_outlined,
                color: AppColors.green,
                bgColor: AppColors.greenBg,
              ),
            ),
          ],
        ),
        // الصف الثاني
        Row(
          textDirection: TextDirection.ltr,
          children: const [
            Expanded(
              child: HomeBox(
                title: 'الإسعافات الأولية',
                icon: Icons.medical_services_outlined,
                color: AppColors.red,
                bgColor: AppColors.redBg,
              ),
            ),
            Expanded(
              child: HomeBox(
                title: 'التدريبات',
                icon: Icons.sports_gymnastics,
                color: AppColors.purple,
                bgColor: AppColors.purpleBg,
              ),
            ),
          ],
        ),
        // الصف الثالث
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 180,
            child: HomeBox(
              title: 'نظام الامتحان',
              icon: Icons.quiz,
              color: AppColors.blue,
              bgColor: AppColors.blueBg,
              isSquare: true,
            ),
          ),
        )
      ],
    );
  }
}
