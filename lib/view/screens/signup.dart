import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lavia_1/controller/signup_controller.dart';
import 'package:lavia_1/view/screens/home.dart';

import 'login.dart';


class Signup extends StatelessWidget {
   var mailcontroller = TextEditingController();//to save mail in variable
   var passwordcontroller = TextEditingController();//to save password in variable
   var firstnamecontroller =  TextEditingController();
   var lastnamecontroller =  TextEditingController();


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  new Container(
                    child: Align(
                      alignment: Alignment.topRight,
                      child:SvgPicture.asset(
                          "assets/images/image4.svg"
                      ),
                    ),
                  ),
                  new Container(
                    child: Align(
                        alignment: Alignment.center,
                        child:SvgPicture.asset(
                            "assets/images/image.svg"
                        )

                    ),



                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Container(
                    child:Row(mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        InkWell(
                          child: SvgPicture.asset("assets/images/simg1.svg"),




                        ),
                        SizedBox(
                          width: 80,
                        ),
                        InkWell(
                        child: SvgPicture.asset("assets/images/simg2.svg"),
                          onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()) );},

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox.fromSize(),
                  TextFormField(
                    cursorColor: Colors.green,
                        controller:firstnamecontroller ,

                       decoration: InputDecoration(
                           labelText: 'First Name ',
                           // prefixIcon:Icon(
                           //   Icons.mail,
                           // ),
                           border:OutlineInputBorder()
                       ),
                       onFieldSubmitted: (value){
                         print(value);
                       },
                       onChanged: (value){
                         print(value);
                       },
                     ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(cursorColor: Colors.green,
                        controller:lastnamecontroller ,
                       keyboardType: TextInputType.text,
                       decoration: InputDecoration(
                           labelText: 'Last Name ',
                           // prefixIcon:Icon(
                           //   Icons.mail,
                           // ),
                           border:OutlineInputBorder()
                       ),
                       onFieldSubmitted: (value){
                         print(value);
                       },
                       onChanged: (value){
                         print(value);
                       },
                     ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(cursorColor: Colors.green,
                     controller:mailcontroller ,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email ',
                        prefixIcon:Icon(
                          Icons.mail,
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
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                     controller:passwordcontroller ,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        prefixIcon:Icon(
                          Icons.lock,
                        ),
                        suffixIcon:Icon(
                          Icons.remove_red_eye,
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
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller:passwordcontroller ,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: ' Confirm PASSWORD',
                        prefixIcon:Icon(
                          Icons.lock,
                        ),
                        suffixIcon:Icon(
                          Icons.remove_red_eye,
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
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      color: Colors.green,
                      child: MaterialButton(onPressed: (){

                        SignUpController().signUp(email: mailcontroller.text, password: passwordcontroller.text, firstname: firstnamecontroller.text, lastName: lastnamecontroller.text);
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>home()) );

                      },
                       child:Text('SignUp',style: TextStyle(
                              fontSize: 30,color: Colors.white
                          ),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      new Container(
                        child:Align(
                          alignment: Alignment.center,
                          child:
                          Text('-----------or continue with---------- ',style: TextStyle(fontSize: 20)),),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            InkWell(
                              child: SvgPicture.asset("assets/images/image2.svg"),
                              onTap: (){}


                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: SvgPicture.asset("assets/images/image3.svg"),
                              onTap: (){
                                //action code when clicked
                                print("The icon is clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child:SvgPicture.asset(
                          "assets/images/image5.svg"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
