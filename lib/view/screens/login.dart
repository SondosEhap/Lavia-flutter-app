import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lavia_1/controller/login_controller.dart';
import 'package:lavia_1/view/components/custom_button.dart';
import 'package:lavia_1/view/screens/signup.dart';

class Login extends StatelessWidget {
  var mailcontroller = TextEditingController();//to save mail in variable
  var passwordcontroller = TextEditingController();//to save password in variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
               Container(
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
                        child: SvgPicture.asset("assets/images/signup.svg"),
                        onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()) );},

                      ),
                      SizedBox(
                        width: 80,
                      ),
                      InkWell(
                        child: SvgPicture.asset("assets/images/login.svg"),
                        onTap: (){
                          //action code when clicked
                          print("The icon is clicked");
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox.fromSize(),
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
                  height: 30,
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
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: MaterialButton(onPressed: (){
                    // print(mailcontroller.text);
                    // print(passwordcontroller.text);
                   LoginController().signIn(email: mailcontroller.text, password: passwordcontroller.text);
                  },
                      child:Text('login',style: TextStyle(
                          fontSize: 30,color: Colors.white
                      ),
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
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

                    new Container(
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                         children:[
                           InkWell(
                             child: SvgPicture.asset("assets/images/image2.svg"),
                             onTap: (){
                               //action code when clicked
                               print("The icon is clicked");

                             },
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
        )
    );
  }
}
