import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // skip text
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  child: Text(
                    AppSrings.skip,
                    style: GoogleFonts.lato(
                      color: AppColors.white.withOpacity(.44),
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // image
              Image.asset(AppAssets.on1),
              const SizedBox(
                height: 16,
              ),

              // dots
              SmoothPageIndicator(controller: PageController(),
                  count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.primary,

              )),
              const SizedBox(
                height: 52,
              ),

              //title
              Text(
                AppSrings.onBordingTitleOne,
                style: GoogleFonts.lato(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 42,
              ),

              //subTitle
              Text(
                AppSrings.onBordingSubTitleOne,
                style: GoogleFonts.lato(
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              //buttons
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // back button
                  TextButton(
                    child: Text(
                      AppSrings.back,
                      style: GoogleFonts.lato(
                        color: AppColors.white.withOpacity(.44),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  // spacer
                  const Spacer(),
                  // next button
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(AppSrings.next)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
