import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
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
                image: AssetImage("../assets/R4.jpg"), // Remplacez "assets/login_background.jpeg" par le chemin de votre image
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ), // form h3
                      SizedBox(height: 20.0),
                      TextFormField(
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
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          // Ajoutez ici la logique de connexion
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Logging in...'),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "already have an account? ",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Register",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.blue),
                          ],
                        ),
                      ),
                    ],
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
