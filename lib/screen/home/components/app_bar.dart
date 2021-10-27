import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/search/search_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                child: SizedBox(
                  height: 35,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchScreen(),
                        ),
                      );
                    },
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: const Text(
                          'Tìm kiếm',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        hintStyle: const TextStyle(
                          color: kSecondaryColor,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: kSecondaryColor,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                        decorationThickness: 0.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const NotificationScreen();
                //     },
                //   ),
                // );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const CartScreen();
                //     },
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
