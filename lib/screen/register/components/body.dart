import 'package:flutter/material.dart';
import 'package:pharmacity/components/phone_form.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/login/components/extracare_header.dart';
import 'package:pharmacity/screen/login/components/pharmacity_header.dart';
import 'footer.dart';

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
                              Center(
                                heightFactor: 1.7,
                                child: PhoneForm(),
                              ),
                              Footer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
