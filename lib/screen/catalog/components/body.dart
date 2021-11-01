import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/category.dart';
import 'package:pharmacity/models/category_detail.dart';
import 'category_tab_bar.dart';
import 'category_tab_bar_view.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ListView.separated(
                itemCount: CategoryList.category.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox();
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        _pageController.jumpToPage(index);
                      });
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: CategoryTabBar(
                            image: CategoryList.category[index].img,
                            name: CategoryList.category[index].title,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: AnimatedContainer(
                            duration: kAnimationDuration,
                            height: (_selectedIndex == index)
                                ? MediaQuery.of(context).size.height * 0.17
                                : 0,
                            child: _selectedIndex == index
                                ? SvgPicture.asset(
                                    'assets/icons/selected_category.svg',
                                    height: MediaQuery.of(context).size.height *
                                        0.17,
                                    color: kPrimaryColor,
                                  )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgPharmacity,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgPharmaceuticals,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgHealthCare,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgPersonalCare,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgConvenienceProduct,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgFunctionalProduct,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgMomBaby,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgBeautyCare,
                  ),
                  CategoryTabBarView(
                    list: CategoryDetailList.ctgMedicalEquipment,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
