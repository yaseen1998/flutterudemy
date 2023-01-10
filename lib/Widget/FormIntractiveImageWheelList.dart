import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: NewMain(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

enum AuthMode { Signup, Login }

class _NewMainState extends State<NewMain> {
  static final List<String> _Monthe = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final List<Color> _Colors =
      List.generate(_Monthe.length, (index) => Colors.primaries[index]);
  int i = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _authData = {'email': '', 'password': ''};
  AuthMode _authMode = AuthMode.Login;
  final TextEditingController _passwordController = TextEditingController();
  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    if(_authMode == AuthMode.Login){
      print('Login');
    }else{
      print('Signup');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: null
        );
  }

  Form FirstForm() {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if(_authMode == AuthMode.Signup)
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _authData['email'] = value!;
                  print('email: ${_authData['email']}');
                },
              ),
              TextFormField(
              controller: _passwordController,
              obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
                validator: (String? value) {
                  if (value!.length<5|| value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _authData['password'] = value!;
                  print('password: ${_authData['password']}');
                },
              ),
              if(_authMode == AuthMode.Signup)
              TextFormField(
              obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your Confirm password',
                  labelText: 'Confirm Password',
                ),
                validator: (String? value) {
                  if (value!.length<5|| value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if(value != _passwordController.text ){
                    return 'Password not match';
                  }
                  return null;
                },
                
              ),
              ElevatedButton(
                onPressed: _submit,
                child: Text(_authMode == AuthMode.Login ? 'Login' : 'Signup'),
              ),
              TextButton(
                onPressed: _switchAuthMode,
                child: Text(_authMode == AuthMode.Login ? 'Signup' : 'Login'),
              ),
            ],
          ),
        ),
      );
  }

  Center IntractiveImage() {
    return Center(
      child: Container(
        height: 500,
        width: double.infinity,
        child: InteractiveViewer(
            constrained: false,
            boundaryMargin: const EdgeInsets.all(20.0),
            minScale: 0.3,
            maxScale: 4,
            child: Image.asset('assets/images/image2.jpeg', fit: BoxFit.cover)),
      ),
    );
  }

  Container WheelList() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListWheelScrollView(
        itemExtent: 100,
        children: _Monthe.map((String value) {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: _Colors[i++],
            ),
            child: Center(child: Text(value)),
          );
        }).toList(),
      ),
    );
  }
}
