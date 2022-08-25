import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Begin extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
        body: new Stack(
          children: <Widget>[

            new Container(
              child: Align(
                alignment: Alignment.center,
                child:SvgPicture.asset(
                  "assets/images/image.svg"
                )

              ),



            ),
          ],
        )
    );
  }
}
