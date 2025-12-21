import 'package:club_canva_proj/routes/routes.dart';
import 'package:club_canva_proj/screens/bouncing_icon.dart';
import 'package:club_canva_proj/strings.dart';
import 'package:club_canva_proj/widgets/reusable_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF121212),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Bouncingicon_Screen(),
                    SizedBox(height: 20),
                    Text_widget(
                      text: Strings.Loginpagetext,
                      fontWeight: FontWeight.bold,
                      fontsize: 32,
                      color: Colors.white,
                      textalign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text_widget(
                        text: Strings.Signintext,
                        fontWeight: FontWeight.normal,
                        fontsize: 14,
                        color: Color(0xFF9CA3AF),
                        textalign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text_widget(
                      text: Strings.emailtext,
                      fontWeight: FontWeight.normal,
                      fontsize: 14,
                      color: Colors.white,
                      textalign: TextAlign.left,
                    ),

                    formfield(Strings.loginlabeltext),
                    formfield(Strings.passwordlabeltext),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Strings.forgotpasswordtext,
                          style: TextStyle(
                            color: Color(0xFFED862D),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.getBottomnavRoute());
                      },
                      child: Text_widget(
                        text: Strings.loginbuttontext,
                        fontWeight: FontWeight.bold,
                        fontsize: 16,
                        color: Colors.white,
                        textalign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFED862D),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                              right: 20.0,
                            ),
                            child: Divider(color: Colors.grey, height: 36),
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 20.0,
                              right: 10.0,
                            ),
                            child: Divider(color: Colors.grey, height: 36),
                          ),
                        ),
                      ],
                    ),

                    alternate_loginbutton(Strings.continuewithgoogle),
                    alternate_loginbutton(Strings.continuewithapple),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text_widget(
                      text: Strings.donthaveaccounttext,
                      fontWeight: FontWeight.normal,
                      fontsize: 14,
                      color: Colors.white,
                      textalign: TextAlign.left,
                    ),
                    Text_widget(
                      text: Strings.signuptext,
                      fontWeight: FontWeight.bold,
                      fontsize: 14,
                      color: Color(0xFFED862D),
                      textalign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton alternate_loginbutton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text_widget(
        text: text,
        fontWeight: FontWeight.bold,
        fontsize: 16,
        color: Colors.white,
        textalign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Color(0xFF121212),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade700, width: 0.1),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }

  Padding formfield(labeltext) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          labelText: labeltext,
        ),
      ),
    );
  }
}
