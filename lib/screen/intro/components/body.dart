import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/screen/accept_terms/accept_terms_screen.dart';
import '../../../constants.dart';
import 'introduction_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final List<Map<String, Object>> _introductionData = [
    {
      "image": "assets/images/intro_1.png",
      "title": "",
      "text": RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'Đăng nhập lần đầu ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: 'thành công để nhận ngay '),
            TextSpan(
              text: 'coupon giảm 50k ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: 'và '),
            TextSpan(
              text: 'mã dự thưởng ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'tham gia chương trình ',
            ),
            TextSpan(
              text: '"Tải ứng dụng, rinh quà khủng" ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'có cơ hội ',
            ),
            TextSpan(
              text: 'trúng Smart TV ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: 'trị giá gần 22 triệu đồng.')
          ],
        ),
      ),
    },
    {
      "image": "assets/images/intro_2.png",
      "title": "Nhà Thuốc trực tuyến siêu tiện lợi",
      "text":
          'Ngập tràn ưu đãi khủng, miễn phí vận chuyển từ 300k. Tích lũy điểm Extracare sau mỗi lần mua sắm.',
    },
    {
      "image": "assets/images/intro_3.png",
      "title": "Tư vấn cùng dược sĩ trực tuyến qua video.",
      "text":
          'Tư vấn đơn thuốc và cách sử dụng thuốc từ đội ngũ dược sĩ chuyên môn cao.'
    },
    {
      "title": "Tra cứu thông tin thuốc và triệu chứng bệnh",
      "image": "assets/images/intro_4.png",
      "text":
          'Cập nhật các thông tin sức khỏe mới nhất, tra cứu thông tin nhanh chóng và chính xác.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/intro_background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            alignment: Alignment.topCenter,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 16.0),
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: _introductionData.length,
                    itemBuilder: (context, index) => IntroductionContent(
                      image: _introductionData[index]['image'].toString(),
                      title: _introductionData[index]['title'].toString(),
                      text: _introductionData[index]['text'].toString(),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _introductionData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 25)),
                        DefaultButton(
                          text: 'Continue',
                          backgroundColor: Colors.white,
                          textColor: const Color(0xFF1562F9),
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext _context) =>
                                    const AcceptTermsScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 15),
      height: currentPage == index ? 6 : 4,
      width: currentPage == index ? 6 : 4,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color(0xFFFFFFFF)
            : const Color(0x77FFFFFF),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
