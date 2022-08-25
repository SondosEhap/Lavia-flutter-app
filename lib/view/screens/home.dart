import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/images/image.svg")),
              ),
              Row(
                children: [
                  Expanded(

                    child: TextFormField(cursorColor: Colors.green,

                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'search ',
                          prefixIcon:Icon(
                            Icons.search,
                          ),
                          border:OutlineInputBorder()
                      ),
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      onChanged: (value){
                        print(value);
                      },
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset("assets/images/cart.svg"),
                   // onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()) );},

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
