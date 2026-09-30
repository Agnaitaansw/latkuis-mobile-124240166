import 'package:flutter/material.dart';
import 'package:latkuis/root.dart';

// Widget Class
class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// State Class
class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  void _login({required String username, required String password}) {
    if (username == "admingacoan" && password == "1221") {
      setState(() {
        _isLoggedIn = true;
      });

      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => Root()));

      // Memanggil snackbar
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green, content: Text("Login Berhasil!")));
    } else {
      setState(() {
        _isLoggedIn = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text("Login Gagal!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                children: [
                  
                    Image.network(
                  'data:image/png;base64,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',
                  height: 150
                  ),

                  Text(
                   "selamat datang di Gacoan",
                     style: TextStyle(
                      fontSize: 14,
                       color: Color.fromARGB(255, 95, 88, 88),
                      ),
                          ),

                  const SizedBox(height: 10),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(

                          hintText: "username",
                          border: OutlineInputBorder()),
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  _isLoggedIn ? const Color.fromARGB(255, 255, 254, 251) : const Color.fromARGB(255, 85, 83, 235)),
                                  
                          onPressed: () {
                            _login(
                              username: _usernameController.text,
                              password: _passwordController.text,
                            );
                          },
                          child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,),
                            ),
                            ),
                    )
                ],
              ),
            ),
          ),
        )
        );
  }
}
