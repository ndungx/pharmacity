import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/pharmacity_location.dart/components/pharmacity_location_background.dart';
import 'package:pharmacity/screen/pharmacity_location.dart/components/pharmacity_maps.dart';
import 'pharmacity_location.dart';
import 'select_location.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Stack(
        children: [
          const PharmacityLocationBackground(),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(top: 200),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const SelectLocation(),
                  ),
                  const PharmacityMaps(),
                  Container(
                    color: kPrimaryColor,
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Có ',
                              ),
                              TextSpan(
                                text: '5 ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'nhà thuốc Pharmacity gần bạn',
                              ),
                            ],
                          ),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const PharmacityLocation(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
