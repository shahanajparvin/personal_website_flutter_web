import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/date_range.dart';
import 'package:personal_website/widgets/work_point.dart';
import 'package:personal_website/widgets/work_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Codecanyon extends StatelessWidget {
  final AutoSizeGroup pointGroup;
  final AutoSizeGroup titleGroup;

  const Codecanyon({
    super.key,
    required this.pointGroup,
    required this.titleGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        WorkTitle(
          title: "${WorkData.author} - ${WorkData.codecanyon}",
          company: WorkData.flutterlover,
          url: Url.flutterlover,
          group: titleGroup,
        ),
        const DateRange(start: Codecanyonn.startDate, end: Codecanyonn.endDate),
        const SizedBox(height: 8.0),
        _point1(),
        _point2(),
        _point3(),
        _point4(),
        _point5(),
      ],
    );
  }

  Widget _point1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: Codecanyonn.point1Part1),
            TextSpan(
              text: Codecanyonn.point1Part2,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.codecanyon);
                },
            ),
            const TextSpan(text: Codecanyonn.point1Part3),
          ],
        ),
        maxLines: 5,
        group: pointGroup,
      ),
    );
  }

  Widget _point2() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: Codecanyonn.point2,
          style: TextStyles.point,
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point3() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: Codecanyonn.point3,
          style: TextStyles.point,
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point4() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            TextSpan(text: Codecanyonn.point4),
          ],
        ),
        maxLines: 2,
        group: pointGroup,
      ),
    );
  }

  Widget _point5() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            TextSpan(text: Codecanyonn.point5),
          ],
        ),
        maxLines: 2,
        group: pointGroup,
      ),
    );
  }
}
