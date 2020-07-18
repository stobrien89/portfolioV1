import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 864,
        width: 1507,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I'm a Software",
                      style: GoogleFonts.montserrat(fontSize: 60),
                    ),
                    Text(
                      "Engineer </>",
                      style: GoogleFonts.montserrat(fontSize: 60),
                    ),
                    SizedBox(height: 37),
                    Text(
                      "I have 2 years of experience in software development",
                      style: TextStyle(fontSize: 24),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 15),
                        child: Text(
                          'Contact Me',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              FlutterLogo(size: 300)
            ],
          ),
        ));
  }
}
