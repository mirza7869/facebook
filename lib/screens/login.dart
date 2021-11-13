import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';
import 'screens.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 40,),
          InputField(
            controller: emailController,
            hintText: 'Phone or email',
          ),
          InputField(
            controller: passController,
            hintText: 'Password',
            isPassword: true,
            icon: Icons.visibility,
          ),
          BlockButton(
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text('Log in',style: TextStyle(fontSize: 18),),
            buttonSize: const Size(200,40),
          ),
          TextButton(
            onPressed: (){},
            child: const Text('Forget Password'),
          ),
        ],
      ),
    );
  }
}
