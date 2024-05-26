import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wisata_bandung/login/button.dart';
import 'package:wisata_bandung/login/register.dart';
import 'package:wisata_bandung/login/text.dart';
import 'package:wisata_bandung/screen/homepage.dart';

class LoginApp extends StatefulWidget {
  final Function()? onPressed;
  LoginApp({super.key, this.onPressed});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async{
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text
      );
      Navigator.pop(context);
    }on FirebaseAuthException catch (e){

      Navigator.pop(context);
      errorMessage(e.code);
    }
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
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'))
                ),
              ),
                      
              const Text('Welcome, please login to access our apps',
              style: TextStyle(
                fontSize: 16
              ),),
              const SizedBox(height: 25,),
          
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
          
              const SizedBox(height: 25,),
          
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 20),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),);
                        
                      }, 
                      child: const Text('Guest Mode')),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              MyButton(
                text: 'Sign In',
                onTap: signUserIn,
                
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Didn\'t Have Account?'),
                  const SizedBox(width: 2,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterApp()),);
                    },
                    child: const Text('Register Now')),
                ],
              )
              
            ],),
          ),
        ),
      ),
    );
  }
}