import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wisata_bandung/login/button.dart';
import 'package:wisata_bandung/login/login.dart';
import 'package:wisata_bandung/login/text.dart';

class RegisterApp extends StatefulWidget {
  final Function()? onPressed;
  RegisterApp({super.key, this.onPressed});

  @override
  State<RegisterApp> createState() => _RegisterAppState();
}

class _RegisterAppState extends State<RegisterApp> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUserUp() async{
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    if (passwordController.text != confirmpasswordController.text){
      Navigator.pop(context);
      errorMessage("Password Doesn\'t match");
      return;
    }else{
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, 
          password: passwordController.text
        );
      }on FirebaseAuthException catch (e){
        errorMessage(e.code);        
      }
      Navigator.pop(context);
    }
    Navigator.pop(context);
  }

  void errorMessage(String message){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),)),
          content: const Text('Please Login If You Doesn\'t Have Any Account'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('OK'))
          ],
        );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [            
              Container(
                width: 230,
                height: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'))
                ),
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
          
              const SizedBox(height: 10,),
          
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10,),
          
              MyTextField(
                controller: confirmpasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 25,),
              MyButton(
                text: 'Sign Up',
                onTap: signUserUp,              
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already Have an Account?'),
                  const SizedBox(width: 2,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginApp()),);
                    },
                    child: const Text('Login Now')),
                ],
              )
              
            ],),
          ),
        ),
      ),
    );
  }
}