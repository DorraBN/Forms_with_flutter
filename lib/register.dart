 import 'package:flutter/material.dart';
import 'login.dart'; // Importez la page de connexion

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String _selectedGender = '';
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _registerButtonClicked = false; // Etat du bouton "Register" 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../assets/R.jpeg"), // Remplacez "assets/background_image.jpg" par le chemin de votre image
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: IconButton(
              
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context); // Retour à la page initiale
              },
              color: Colors.white,
            ),
          ),
          Positioned(
            width: 430,
            height: 520,
            left: MediaQuery.of(context).size.width / 2 - 215,
            top: MediaQuery.of(context).size.height / 2 - 260,
            child: Stack(
              children: [
                Positioned(
                  top: -80,
                  left: -80,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF1845AD),
                          Color(0xFF23A2F6),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -80,
                  right: -30,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFF512F),
                          Color(0xFFF09819),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white.withOpacity(0.1), width: 2), // border: 2px solid rgba(255,255,255,0.1);
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(8, 7, 16, 0.6),
                        blurRadius: 40,
                      ),
                    ],
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ), // form h3
                        SizedBox(height: 20.0),
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Enter your username',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                            prefixIcon: Icon(Icons.person, color: Colors.white),
                            hintStyle: TextStyle(color: Color(0xFFe5e5e5)),
                          ),
                          style: TextStyle(color: Colors.white), // form *
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Enter your email',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                            prefixIcon: Icon(Icons.email, color: Colors.white),
                            hintStyle: TextStyle(color: Color(0xFFe5e5e5)),
                          ),
                          style: TextStyle(color: Colors.white), // form *
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            // Add email validation logic if needed
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Enter your phone number',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                            prefixIcon: Icon(Icons.phone, color: Colors.white),
                            hintStyle: TextStyle(color: Color(0xFFe5e5e5)),
                          ),
                          style: TextStyle(color: Colors.white), // form *
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Enter your password',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            hintStyle: TextStyle(color: Color(0xFFe5e5e5)),
                          ),
                          style: TextStyle(color: Colors.white), // form *
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Re-enter your password',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.13), // background-color: rgba(255,255,255,0.13);
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            hintStyle: TextStyle(color: Color(0xFFe5e5e5)),
                          ),
                          style: TextStyle(color: Colors.white), // form *
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please re-enter your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text('Gender:', style: TextStyle(fontSize: 14, color: Colors.white)),
                            SizedBox(width: 10),
                            Radio(
                              value: 'Male',
                              groupValue: _selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  _selectedGender = value.toString();
                                });
                              },
                            ),
                            Text('Male', style: TextStyle(fontSize: 14, color: Colors.white)),
                            SizedBox(width: 10),
                            Radio(
                              value: 'Female',
                              groupValue: _selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  _selectedGender = value.toString();
                                });
                              },
                            ),
                            Text('Female', style: TextStyle(fontSize: 14, color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                _registerButtonClicked = true;
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Processing registration...'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _registerButtonClicked ? Colors.orange : Color.fromARGB(255, 255, 255, 255),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: _registerButtonClicked ? Colors.white : Color(0xFF080710),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        GestureDetector(
                          onTap: () {
                            // Naviguer vers la page de connexion
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Login",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.blue),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}