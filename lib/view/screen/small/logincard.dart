// login card class that is called on the first screen on each of the type
// this class is called on all tab,desktop and mobile
import 'package:flutter/material.dart';
import 'package:screen15/res/component/app_color.dart';
import 'package:screen15/res/component/app_images.dart';
import 'package:screen15/res/component/app_string.dart';
import 'package:screen15/res/component/app_string_card.dart';
class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);
  @override
  State<LoginCard> createState() => _LoginCardState();
}
class _LoginCardState extends State<LoginCard> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  bool _isPasswordVisible = false;
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        color: Colors.white,
        //elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.login,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColor.myColor1
                      // Color.fromARGB(255, 50, 3, 236)
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppStringCard.enterusername,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.mail,
                          color: AppColor.myColor1,
                        ),
                        hintText: AppStringCard.hint1,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppStringCard.please;
                        }

                        if (!RegExp(AppStringCard.regx).hasMatch(value)) {
                          return AppStringCard.entervalue;
                        }

                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: AppColor.myColor1,
                        ),
                        hintText: AppStringCard.password,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppStringCard.pleaseenterpassword;
                        }

                        // Password should be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character
                        if (!RegExp(
                            // r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}|":;<>,.?/~\\-]).{8,}$'
                            AppStringCard.regxpassword).hasMatch(value)) {
                          return AppStringCard.passwordmustbe;
                        }

                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Add your logic for forgot password here
                    },
                    child: Text(
                      AppStringCard.forgotpassword,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      // debugPrint('Valid Email/Username: $_email');
                      //debugPrint('Password: $_password');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    height: 60,
                    child: Center(
                        child: Text(
                      // "Log In",
                      AppString.login,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(direction: Axis.vertical, children: [
                      Text(
                        AppStringCard.or,
                        // "OR",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your logic for login with OTP here
                  },
                  child: Center(
                    child: Text(
                      AppStringCard.logininwithotp,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(child: Image.asset(AppImage.iconnn)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        SizedBox(
                          child: Text(AppStringCard.dont,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your logic for signing up here
                          },
                          child: SizedBox(
                            child: Text(
                              //"Sign Up",
                              AppString.signup,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
