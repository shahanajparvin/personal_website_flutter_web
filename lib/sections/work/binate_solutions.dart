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

class BinateSolutions extends StatelessWidget {
  final AutoSizeGroup pointGroup;
  final AutoSizeGroup titleGroup;

  const BinateSolutions({
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
          title: WorkData.flutterDeveloper,
          company: WorkData.binate,
          url: Url.binateTechnology,
          group: titleGroup,
        ),
        const DateRange(start: BinateSolution.startDate, end: BinateSolution.endDate),
        const SizedBox(height: 8.0),
        _point1(),
        _point2_1(),
        _point4(),
        _point3(),
        _point5(),
        _point6(),
        _point21(),
        _point7(),

      ],
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
          ]
        ),
        maxLines: 5,
        group: pointGroup,
      ),
    );
  }

  Widget _point1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: BinateSolution.point1Part1),
            TextSpan(
              text: TechData.flutter,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.flutter);
                },
            ),
            const TextSpan(text: BinateSolution.point1Part2),
            TextSpan(
              text: TechData.bloc,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.bloc);
                },
            ),
            const TextSpan(text: BinateSolution.point1Part4),
          ],
        ),
        maxLines: 3,
        group: pointGroup,
      ),
    );
  }


  Widget _point2() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: BinateSolution.point2,
          style: TextStyles.point,
        ),
        maxLines: 3,
        group: pointGroup,
      ),
    );
  }



  Widget _point21() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: BinateSolution.point2,
          style: TextStyles.point,
        ),
        maxLines: 3,
        group: pointGroup,
      ),
    );
  }

  Widget _point4() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: BinateSolution.point4,
          style: TextStyles.point,
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
          text: BinateSolution.point5,
          style: TextStyles.point,
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
          text: BinateSolution.point6,
          style: TextStyles.point,
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point7() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: BinateSolution.point7,
          style: TextStyles.point,
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point2_1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: DivineIT.point4Part1),
            TextSpan(
              text: TechData.dio,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.dio);
                },
            ),
            const TextSpan(text: DivineIT.point4Part2),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }
}
