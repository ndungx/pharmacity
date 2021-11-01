import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class PharmarcityLocationButton extends StatelessWidget {
  const PharmarcityLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => PharmarcityLocationPage(),
        //   ),
        // );
      },
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 40),
                child: SizedBox(
                  height: 60,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Material(
                      color: kPrimaryColor,
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => PharmarcityLocationPage(),
                          //   ),
                          // );
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 200,
                            child: Opacity(
                              opacity: 0.1,
                              child: Image.asset(
                                'assets/images/globe.png',
                                fit: BoxFit.cover,
                                alignment: Alignment.centerRight,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 8, 0),
              child: Image.asset(
                'assets/images/pharmacity_store.png',
                scale: 3.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '643 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'nhà thuốc trên toàn quốc',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 10,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
