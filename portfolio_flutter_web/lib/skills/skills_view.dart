import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/skills/outline_skills_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.screenSize.width < 812) return SkillsMobileView();
        return SkillsDesktopView();
      },
    );
  }
}

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        width: kInitWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 20),
            for (var rowIndex = 0;
                rowIndex < skills.length / 4;
                rowIndex++) ...[
              Row(
                children: [
                  for (var i = 0; i < skills.length / 3; i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: i != 0 ? 8.0 : 0),
                        child: OutlineSkillsContainer(i: i, rowIndex: rowIndex),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10)
            ]
          ],
        ));
  }
}

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: 3),
            SizedBox(height: 50),
            Text(
              'Skills',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 50),
            for (var i = 0; i < skills.length; i++) ...[
              OutlineSkillsContainer(
                i: i,
                isMobile: true,
              ),
              SizedBox(height: 10)
            ]
          ],
        ));
  }
}

final skills = [
  'JavaScript',
  'Ruby',
  'Python',
  'Dart',
  'NodeJS',
  'React',
  'Rails',
  'Flutter',
  'Agile',
  'Scrum',
  'SQL',
  'NoSQL',
];

class ColorAssets {
  static const Color red = Color.fromRGBO(255, 87, 87, 1);
  static const Color blue = Color.fromRGBO(82, 113, 255, 1);
  static const Color green = Color.fromRGBO(97, 242, 162, 1);
  static const Color yellow = Color.fromRGBO(255, 222, 89, 1);

  static const List<Color> all = [red, blue, green, yellow];
}
