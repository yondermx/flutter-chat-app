import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

 final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    Key key, 
    @required this.icon, 
    @required this.placeholder, 
    @required this.textController, 
    this.keyboardType = TextInputType.text, 
    this.isPassword = false
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 5))
          ]),
      child: TextField(
        controller: this.textController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword,
        decoration: InputDecoration(
            prefixIcon: Icon(this.icon),
            border: InputBorder.none,
            hintText: this.placeholder),
      ),
    );
  }
}
