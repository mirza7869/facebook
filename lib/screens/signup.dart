import 'screens.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: size.width,
              height: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                InputField(hintText: 'First Name', width: size.width / 2.5,),
                InputField(hintText: 'Last Name', width: size.width / 2.5,),
              ],
            ),
            InputField(hintText: 'Phone or email', width: size.width,),
            InputField(hintText: 'Password', width: size.width, isPassword: true, icon: Icons.visibility),
            InputField(hintText: 'Confirm Password', width: size.width, isPassword: true, icon: Icons.visibility),
            BlockButton(
              onPress: (){},
              child: const Text('Sign Up',style: TextStyle(fontSize: 18),),
              buttonSize: Size(size.width,50),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account'),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    }, 
                    child: const Text('Log In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
