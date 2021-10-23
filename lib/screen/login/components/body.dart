import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/login/components/create_password_box.dart';
import 'package:pharmacity/screen/login/components/footer.dart';
import 'package:pharmacity/screen/login/components/sign_in_form.dart';
import 'extracare_header.dart';
import 'pharmacity_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kPrimaryColor,
        child: SafeArea(
          child: Column(
            children: [
              const ExtraCareHeader(),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          child: Column(
                            children: const [
                              PharmacityHeader(),
                              SignInForm(),
                              SizedBox(height: 10),
                              CreatePasswordBox(),
                              SizedBox(height: 50),
                              Footer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
