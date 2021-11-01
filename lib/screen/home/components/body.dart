import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/home/custom_app_bar.dart';
import 'package:pharmacity/screen/home/components/hot_deal.dart';
import 'package:pharmacity/screen/home/components/product_catalog.dart';
import 'package:pharmacity/screen/home/components/prominent_brand.dart';
import 'package:pharmacity/screen/home/components/research_disease.dart';
import 'package:pharmacity/screen/home/components/service.dart';
import 'package:pharmacity/screen/home/components/suggest_product.dart';
import 'advertisement_carousel.dart';
import 'favorite_service.dart';
import 'pharmacity_location_button.dart';
import 'pharmacity_product.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.controller}) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.vertical,
        child: Container(
          color: kPrimaryColor,
          width: double.infinity,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
                  child: Column(
                    children: const [
                      PharmarcityLocationButton(),
                      SizedBox(height: 20),
                      AdvertisementCarousel(),
                      SizedBox(height: 20),
                      FavoriteService(),
                      SizedBox(height: 20),
                      ProductCatalog(),
                      SizedBox(height: 20),
                      PharmacityProduct(),
                      SizedBox(height: 20),
                      HotDeal(),
                      SizedBox(height: 20),
                      ProminentBrand(),
                      SizedBox(height: 20),
                      ResearchDisease(),
                      SizedBox(height: 20),
                      Service(),
                      SizedBox(height: 20),
                      SuggestProduct(),
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
