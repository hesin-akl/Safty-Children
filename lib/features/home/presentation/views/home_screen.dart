import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safty_children/core/helpers/navigation_helper.dart';
import 'package:safty_children/core/routing/Routes.dart';
import 'package:safty_children/core/themeing/app_assets.dart';
import 'package:safty_children/core/themeing/app_colors.dart';
import 'package:safty_children/core/themeing/app_strings.dart';
import 'package:safty_children/core/themeing/app_styles.dart';
import 'package:safty_children/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String url = 'https://copilot.microsoft.com/chats/';

  int selectedIndex = 0;
  Key navBarKey = UniqueKey();

  changeIndxex({required BuildContext context, required int index}) async {
    if (index == 1) {
      await context.pushNamed(Routes.media);
    } else if (index == 2) {
      await context.pushNamed(Routes.test);
    } else if (index == 3) {
      await context.pushNamed(Routes.webView, arguments: url);
    }
    setState(() {
      selectedIndex = 0;
      navBarKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.main,
          style: AppStyles.appBarStyle.copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appBarColor,
        elevation: 11,
      ),
      body: HomeBody(),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        key: navBarKey,
        height: 70.h,
        backgroundColor: AppColors.appBarColor,
        initialActiveIndex: selectedIndex,

        items: [
          TabItem(icon: Icons.home, title: 'الرئيسية'),
          TabItem(icon: Icons.video_collection, title: 'محتوى مرئى'),
          TabItem(icon: Icons.quiz_outlined, title: AppStrings.test),
          TabItem(
            icon: SvgPicture.asset(AppAssets.copoiltIcon),
            title: 'Copilot',
          ),
        ],
        onTap: (int index) {
          changeIndxex(context: context, index: index);
        },
      ),
    );
  }
}
