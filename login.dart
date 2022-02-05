import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class MyLogIn extends StatefulWidget {
  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  bool isHiddePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 230, bottom: 18),
            child: Container(
              child: Text(
                'Log In',
                style: GoogleFonts.specialElite(
                    color: HexColor('#DF1010'), fontSize: 40),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    labelText: 'Phone Number',
                    hintText: "Enter your phone number.",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  obscureText: isHiddePassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    labelText: 'Password',
                    hintText: "Enter your password.",
                    suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(Icons.visibility)),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        color: Colors.white24,
                        height: 20,
                        width: 120,
                        child: Text(
                          "Forget Password ?",
                          style: GoogleFonts.specialElite(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  //padding: EdgeInsets.only(top: 8.0),
                  height: 40,
                  width: 120,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "Log In",
                      style: GoogleFonts.specialElite(
                          color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {},
                    color: HexColor('#DF1010'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        color: Colors.white24,
                        child: Text(
                          "Create Account ?",
                          style: GoogleFonts.specialElite(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            // padding: EdgeInsets.only(top: 10.0),
            height: 45,
            width: 145,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                "Guest Log In",
                style:
                    GoogleFonts.specialElite(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddePassword == true) {
      isHiddePassword = false;
    } else {
      isHiddePassword = true;
    }

    setState(() {});
  }
}
