import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        final onPressed = () => print('click');
        return Container(
          height: 100,
          width: 1507,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              FlutterLogo(),
              Spacer(),
              for (var item in kNavItemsList)
                NavBarItem(onPressed: onPressed, text: item.text)
            ],
          ),
        );
      },
    );
  }
}

class NavItem {
  final String text;

  NavItem(this.text);
}

final kNavItemsList = [
  NavItem('Projects'),
  NavItem('Skills'),
  NavItem('About'),
  NavItem('Blog'),
];

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 64),
      child: InkWell(
        onTap: onPressed,
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
