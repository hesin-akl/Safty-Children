import 'package:flutter/material.dart';
import 'package:safty_children/core/themeing/app_colors.dart';

class HomeBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color bgColor;
  final bool isSquare;
  final VoidCallback? onTap;  // خليتها اختيارية

  const HomeBox({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.bgColor,
    this.isSquare = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(  // هنا ضفت InkWell علشان يدعم الضغط
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        height: isSquare ? 150 : null,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: color, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 40),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.frontColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
