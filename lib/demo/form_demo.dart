import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Theme(
         data: Theme.of(context).copyWith(
           primaryColor: Colors.black,
         ),
         child: Container(
           padding: EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               RegisterForm()
             ],
           ),
         ),
       ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {

  @override
  TextFieldDemoState createState()=> TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo>{
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
    textEditingController.addListener(
      (){
        debugPrint("input: ${textEditingController.text}");
      });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.account_circle),
        hintText: "输入您的用户名",
        labelText: "用户名",
        border: OutlineInputBorder(),
        filled: true,
       // fillColor: Colors.blueGrey

      ),
      controller: textEditingController,
    );
  }
  
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autoValidate = false;

  String vaildateUserName(value){
    if(value.isEmpty){
      return "Username is required.";
    }
    return null;
  }

  String vaildatePassword(value){
    if(value.isEmpty){
      return "Password is required.";
    }
    return null;
  }

  void sumbitRegisterForm(){
    if (registerFormKey.currentState.validate()) {
       registerFormKey.currentState.save();
       debugPrint("username: $username");
       debugPrint("password: $password");

       Scaffold.of(context).showSnackBar(
         SnackBar(
           content: Text("Registering...")
         )
       );
    } else {
      setState(() {
       autoValidate = true; 
      });
    }
   
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
              helperText: ""
            ),
            onSaved: (value) => username = value,
            validator: vaildateUserName,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              helperText: ""
            ),
             onSaved: (value) => password = value,
             validator: vaildateUserName,
             autovalidate: autoValidate,
            
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              child: Text("Register",style: TextStyle(color: Colors.white)),
              elevation: 0.5,
              onPressed: sumbitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}