import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
            height: 864,
            width: 1507,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(
                    child: HeaderBody(),
                  ),
                  FlutterLogo(size: 300)
                ],
              ),
            ));
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "I'm a Software",
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        AutoSizeText(
          "Engineer </>",
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        SizedBox(height: 37),
        AutoSizeText(
          "I have 2 years of experience in software development",
          style: TextStyle(fontSize: 24),
          maxLines: 3,
        ),
        SizedBox(height: 40),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          color: Colors.white60,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
            child: Text(
              'Contact Me',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          FlutterLogo(size: height * .3),
          Spacer(),
          HeaderBody(),
        ],
      ),
    );
  }
}
