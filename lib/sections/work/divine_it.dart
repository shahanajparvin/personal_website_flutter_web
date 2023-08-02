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

class DivineIt extends StatelessWidget {
  final AutoSizeGroup pointGroup;
  final AutoSizeGroup titleGroup;

  const DivineIt({
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
          title: WorkData.mobileappdeveloper,
          company: WorkData.divineIt,
          url: Url.divineit,
          group: titleGroup,
        ),
        const DateRange(start: DivineIT.startDate, end: DivineIT.endDate),
        const SizedBox(height: 8.0),
        _point1(),
        _point2(),
        _point3(),
        _point4(),
        _point5(),
        _point6(),
      ],
    );
  }

  Widget _point1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: DivineIT.point1Part1),
            TextSpan(
              text: DivineIT.point1Part2,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.prismerp);
                },
            ),
            const TextSpan(text: '. '),
            const TextSpan(text: DivineIT.point1Part3),
            TextSpan(
              text: DivineIT.point1Part4,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.here);
                },
            )

          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point2() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: DivineIT.point2Part1),

            TextSpan(
              text: DivineIT.point2Part2,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.solid_principle);
                },
            ),
            const TextSpan(text: DivineIT.point2Part3),

            TextSpan(
              text: DivineIT.point2Part4,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.mvvm);
                },
            ),
            const TextSpan(text: DivineIT.point2Part5),

          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point3() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: DivineIT.point3Part1),
            TextSpan(
              text: TechData.googleMapsWebServices,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.googleMapsWebServices);
                },
            ),
            const TextSpan(text: ' .'),

          ],
        ),
        maxLines: 5,
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
            TextSpan(text: DivineIT.point4Part1),
          ],
        ),
        maxLines: 4,
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
            TextSpan(text: DivineIT.point5),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point6() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            TextSpan(text: DivineIT.point6),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }
}
