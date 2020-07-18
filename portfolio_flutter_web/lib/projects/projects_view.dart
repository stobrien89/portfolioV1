import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_flutter_web/constants.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> technologies;
  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
      image: 'images/placeholder.jpg',
      title: 'Dig Those Diglett',
      description: 'A simple pokemon based game',
      technologies: ['HTML5, jQuery, CSS']),
  ProjectItem(
      image: 'images/placeholder.jpg',
      title: 'LostOnes',
      description: 'Multi-page Pet Adoption Platform',
      technologies: ['Express', 'React', 'bCrypt', 'MongoDB']),
  ProjectItem(
      image: 'images/placeholder.jpg',
      title: 'EventWire',
      description: 'An Event/Party Planning App',
      technologies: ['React', 'HTML5', 'MongoDB'])
];

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return ProjectsMobileView();
        return ProjectsDesktopView();
      },
    );
  }
}

class ProjectsDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        height: 864,
        width: kInitWidth,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projects',
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              children: [
                for (final item in kProjectItems)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(item.image),
                        Text(
                          item.title,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          item.description,
                          style: TextStyle(fontSize: 17),
                        ),
                        Row(
                          children: [
                            for (final tech in item.technologies)
                              Chip(label: Text(tech))
                          ],
                        )
                      ],
                    ),
                  )
              ],
            )
          ],
        ));
  }
}

class ProjectsMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
