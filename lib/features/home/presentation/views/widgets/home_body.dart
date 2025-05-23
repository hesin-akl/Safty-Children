import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safty_children/core/helpers/navigation_helper.dart';
import 'package:safty_children/core/helpers/spacer.dart';
import 'package:safty_children/core/routing/Routes.dart';
import 'package:safty_children/core/themeing/app_colors.dart';
import 'package:safty_children/core/themeing/app_strings.dart';
import 'package:safty_children/features/home/presentation/views/widgets/home_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0).w,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: HomeBox(
                  color: AppColors.yellow,
                  bgColor: Colors.white,
                  icon: Icons.warning_amber_rounded,
                  title: AppStrings.poisoning,
                  onTap:
                      () => context.pushNamed(
                        Routes.select,
                        arguments: AppStrings.poisoning,
                      ),
                ),
              ),
              verticalSpace(16),
              Expanded(
                child: HomeBox(
                  color: AppColors.red,
                  bgColor: Colors.white,
                  icon: Icons.air,
                  title: AppStrings.choking,
                  onTap:
                      () => context.pushNamed(
                        Routes.select,
                        arguments: AppStrings.choking,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
