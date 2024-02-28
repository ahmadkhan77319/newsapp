import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    void login(String email,String passwrd)async{
             
             try{
 Response response=await post(Uri.parse("https://reqres.in/api/register"),
      body:{
        "email" :email,
        "password" :email,

      });
      if(response.statusCode==200){
        print("Succesfully");
      }
      else{
               print("failed");
 
      }

             }
             catch(e){
                   print(e.toString());

             }
             }
    return  Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller:emailController ,
            decoration: InputDecoration(
              hintText: "Email"
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password"
            ),
            controller:passwordController ,),
            SizedBox(height: 10,),
      
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green
                ),
                child: Text("Sign Up"),
              ),
            )
      
        ],
      ),
    );
  }
}