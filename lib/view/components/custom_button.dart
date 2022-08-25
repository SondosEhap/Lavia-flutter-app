import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  const CustomButton({Key? key, this.text='', this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      onPressed!();
    }, child: Text(''));
  }
}
