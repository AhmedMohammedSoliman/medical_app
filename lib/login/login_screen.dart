import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/login/login_nanigator.dart';
import 'package:medical_app/login/login_view_model.dart';
import 'package:provider/provider.dart';

import '../regester/regester_screen.dart';

class LogoScreen extends StatefulWidget {

  static const String routeName = "logo";

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> implements LoginNavigator{

  String  email = "" ;
  String password = "" ;
  var formKey = GlobalKey<FormState>();

  LoginViewModel viewModel = LoginViewModel();

  @override
  void initState() {
    viewModel.navigator = this ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChangeNotifierProvider(

          create: (context) {
            return viewModel ;
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  crossAxisAlignment : CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/logo1.png") , width: 80,height: 80,),
                      SizedBox(width: 10,),
                      Text("Medico" , style: Theme.of(context).textTheme.headline1,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Login" , style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Form(
                    key : formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter your email",
                              filled: true ,
                              fillColor: Colors.grey[300],
                              enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              email = text ;
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter your password",
                                filled: true ,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder()
                            ),
                            validator: (text) {
                              if (text == null || text.trim().isEmpty){
                                return "This field is required" ;
                              }else {
                                return null ;
                              }
                            } ,
                            onChanged: (text){
                              password = text ;
                            },
                          ),
                        ],
                      )),
                  SizedBox(height: 20,),
                  TextButton(
                      onPressed: (){
                        //logic
                      },
                      child: Text("Forget password? " , style: TextStyle(color: Colors.green , fontSize: 18),),),
                  ElevatedButton(onPressed: (){
                    login();
                  }, child: Text("Login" , style: TextStyle(fontSize: 25 , ),),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder() ,primary: Colors.green , padding:
                    EdgeInsets.all(10)),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("have no account?" , style: TextStyle(color: Colors.black , fontSize: 18 , fontWeight:
                      FontWeight.bold),),
                      TextButton(onPressed: (){

                      }, child: TextButton(
                        onPressed: (){
                          navigator();
                        },
                        child: Text(" Create an account " , style: TextStyle(color: Colors.green , fontSize: 18),),) )
                    ],
                  ) ,
                  SizedBox(height: 20,),
                  Text("Or login with " , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold ,
                  fontSize: 18), textAlign: TextAlign.center,) ,
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){

                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/googlelogo.jpeg"),
                            radius: 40,

                          ),),
                      SizedBox(width: 30,),
                      TextButton(onPressed: (){
                        // logic
                      }, child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/facebooklogo.png"),
                        radius: 40,

                      ),)

                    ],
                  )
                ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void login(){
    if (formKey.currentState?.validate() == true){
      viewModel.loginToFireBaseLogic(email, password);
    }
  }
  void loginWithGoogle (){
    viewModel.loginGoogleLogic();
  }

  @override
  hideLoading() {
    Navigator.pop(context);;
  }

  @override
  showLoading() {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: Row(
        children: [
          Text("Loading ..."),
          CircularProgressIndicator()
        ],
      ),
    ));
  }

  @override
  showMessage(String message) {
    showDialog(context: context,
        builder: (context) => AlertDialog(
          content: Text(message),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Ok"))
          ],
        ));
  }

  @override
  navigator() {
    Navigator.pushNamed(context, RegisterScreen.routeName);
  }

}
