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

import '../../utils/theme.dart';
import '../../widgets/bullet.dart';
import '../../widgets/recent_tech.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

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
            animationKey: Keys.skillSection,
            delay: Duration(milliseconds: 50),
            child: SectionTitle(
              number: SectionTitleData.sectionNumber2,
              title: SectionTitleData.section2Title,
            ),
          ),
       SlideAnimation(
        animationKey: Keys.skillText,
        delay: const Duration(milliseconds: 900),
        child:Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              _sectionTitle(SkillData.programming),
              _sectionData(SkillData.programmingData),
              const SizedBox(height: 25,),
              _sectionTitle(SkillData.flutter),
              _sectionData(SkillData.flutterData),
              const SizedBox(height: 25,),
              _sectionTitle(SkillData.database),
              _sectionData(SkillData.databaseData),
              const SizedBox(height: 25,),
              _sectionTitle(SkillData.tools),
              _sectionData(SkillData.toolsData),
              const SizedBox(height: 25,),
              _sectionTitle(SkillData.others),
              _sectionData(SkillData.othersData),
              //_sectionData(SkillData.othersData1),
             // _sectionData(SkillData.othersData2),
             // _sectionData(SkillData.othersData3),
              //_sectionTitle(SkillData.others),
              //_recentTech(context)


            ],
          ))

        ],
      ),
    );
  }
  Widget _sectionTitle(String title) {
    return Row(
      children: [
        const Bullet(),
        const SizedBox(width: 15),
        AutoSizeText(
          title,
          style: TextStyles.skillTitle,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _sectionData(String data){
    return Padding(
        padding: const EdgeInsets.only(left: 22,top: 15),
            child: Text(data,style: TextStyles.point)
    );
  }

  Widget _recentTech(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            RecentTech(title: 'Unit test, UI test and Integration test and CI/CD pipeline'),
            RecentTech(title: TechData.typescript),
            RecentTech(title: TechData.css),
          ],
        ),
        SizedBox(
            width: !ResponsiveWidget.isSmallScreen(context) ? 100.0 : 60.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            RecentTech(title: TechData.flutter),
            RecentTech(title: TechData.firebase),
          ],
        ),
      ],
    );
  }
}