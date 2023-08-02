import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/keys.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/sections/work/binate_solutions.dart';
import 'package:personal_website/sections/work/divine_it.dart';
import 'package:personal_website/sections/work/codecanyon.dart';
import 'package:personal_website/widgets/fade_animation.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:personal_website/widgets/slide_animation.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    AutoSizeGroup pointGroup = AutoSizeGroup();
    AutoSizeGroup titleGroup = AutoSizeGroup();

    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        bottom: 64.0,
        right: ResponsiveWidget.isAtLeastLargeScreen(context) ? 136.0 : 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SlideAnimation(
            animationKey: Keys.workSection,
            delay: Duration(milliseconds: 50),
            child: SectionTitle(
              number: SectionTitleData.sectionNumber3,
              title: SectionTitleData.section3Title,
            ),
          ),
          FadeAnimation(
            animationKey: Keys.kcfTechnologies,
            delay: const Duration(milliseconds: 100),
            child:
                BinateSolutions(pointGroup: pointGroup, titleGroup: titleGroup),
          ),
          const SizedBox(height: 32.0),
          FadeAnimation(
            animationKey: Keys.mule,
            delay: const Duration(milliseconds: 100),
            child: DivineIt(pointGroup: pointGroup, titleGroup: titleGroup),
          ),
          const SizedBox(height: 32.0),
          FadeAnimation(
            animationKey: Keys.volvo,
            delay: const Duration(milliseconds: 100),
            child: Codecanyon(pointGroup: pointGroup, titleGroup: titleGroup),
          ),


        ],
      ),
    );
  }
}
