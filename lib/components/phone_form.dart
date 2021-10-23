import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/components/form_error.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/otp/otp_forgot_password.dart';
import 'package:pharmacity/utils/keyboard.dart';

class PhoneForm extends StatefulWidget {
  const PhoneForm({Key? key}) : super(key: key);

  @override
  _PhoneFormState createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phoneNumber;
  String? password;
  final textFieldFocusNode = FocusNode();
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() => errors.add(error));
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() => errors.remove(error));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              FormError(errors: errors),
              const SizedBox(height: 10),
            ],
          ),
          _buildPhoneFormField(),
          const SizedBox(height: 100),
          DefaultButton(
            text: 'Gửi mã xác nhận',
            enabled: true,
            textColor: Colors.white,
            backgroundColor: kPrimaryColor,
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                KeyboardUtil.hideKeyboard(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OTPForgotPassword(),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField _buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      textInputAction: TextInputAction.done,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNullError);
        } else if (phoneValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidPhoneError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNullError);
          return "";
        } else if (!phoneValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidPhoneError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Số điện thoại",
        isDense: true,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        prefixIcon: Icon(Icons.local_phone, size: 24),
      ),
    );
  }
}
