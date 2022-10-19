import 'package:flutter/material.dart';
import 'Signup_Design.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  String age,name,email,phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
        gradient:
        new LinearGradient(colors: [Colors.purpleAccent, Colors.orange[200]])),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
    children: [
    Container(
    height: height * 0.15,
    ),
    Container(
    margin: EdgeInsets.only(top: height * 0.15),
    height: height * 0.85,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover
          ),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(50),
    topRight: Radius.circular(50))),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 15,
                ),

                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times New Roman',
                  ),
                ),


                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Firstname"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter your Firstname';
                      }
                      if(!RegExp("^[a-zA-Z]+[a-zA-Z]").hasMatch(value)){
                        return 'Letters only.';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      name = value;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Middle Name"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter your Middle Name';
                      }
                      if(!RegExp("^[a-zA-Z]+[a-zA-Z]").hasMatch(value)){
                        return 'Letters only.';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      name = value;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Lastname"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter your Lastname';
                      }
                      if(!RegExp("^[a-zA-Z]+[a-zA-Z]").hasMatch(value)){
                        return 'Letters only.';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      name = value;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: buildInputDecoration(Icons.calendar_month_outlined,"Age"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter your age.';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      age = value;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"Email"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please Enter Email';
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      email = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:buildInputDecoration(Icons.phone,"Phone No"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter phone no ';

                      }
                      else if (value.length < 11){
                        return "Kulang!!";
                      }
                      else if (value.length > 11){
                        return "Sobra!!";
                      }
                      else {
                        return null;
                      }
                      return null;
                    },
                    onSaved: (String value){
                      phone = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please enter password';
                      }
                      if(!RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value)){
                        return 'Enter Valid Password';
                      } else if (value.length < 8){
                        return "Must be at least 8 Characters";
                      } else {
                        return null;
                      }
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String value){
                      if(value == null ||value.isEmpty)
                      {
                        return 'Please re-enter password';
                      }


                      print(password.text);

                      print(confirmpassword.text);

                      if(password.text!=confirmpassword.text){
                        return "Password does not match";
                      }

                      return null;
                    },

                  ),
                ),

                SizedBox(
                  width: 150,
                  height: height * 0.05,
                  child: RaisedButton(

                    color: Colors.blue,
                    onPressed: (){

                      if(_formkey.currentState.validate())
                      {
                        print("successful");

                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("Submit"),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
            ],
    ),
    ),
      ),
    );
  }
}
