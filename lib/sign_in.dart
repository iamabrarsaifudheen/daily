import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('Daily'),
            Text('Your daily journelling partner'),
            Image.asset('assets/images/signin.png'),
            TextFormField(
              controller: _emailController,
            ),
            TextFormField(
              controller: _passwordController,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
            TextButton(onPressed: (){}, child: const Text('Not A Member Yet? Sign Up'))
          ],
        ),
      ),
    );
  }
}
