import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class FavoriteService extends StatelessWidget {
  const FavoriteService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dịch vụ yêu thích',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFavoriteService(
                icon: Icons.credit_card_rounded,
                title: 'Coupon của tôi',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const CouponScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
              _buildFavoriteService(
                icon: Icons.card_membership,
                title: 'Thẻ thành viên',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const MembershipScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
              _buildFavoriteService(
                icon: Icons.chat,
                title: 'Tư vấn trực tuyến',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const OnlineCounselingScreen();
                  //     },
                  //   ),
                  // );
                },
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFavoriteService(
                icon: Icons.phone_android,
                title: 'Dược sĩ trực tuyến',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const OnlinePharmacistScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
              _buildFavoriteService(
                icon: Icons.phone,
                title: 'Tổng đài đặt hàng',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const OrderingCallCenterScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
              _buildFavoriteService(
                icon: Icons.book_outlined,
                title: 'Thư viện bệnh lý',
                navigate: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const PathologyLibraryScreen();
                  //     },
                  //   ),
                  // );
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteService({
    required Function navigate,
    required IconData icon,
    required String title,
  }) {
    return GestureDetector(
      onTap: navigate as void Function()?,
      child: SizedBox(
        width: 50,
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Icon(Icons.circle, color: kPrimaryColor, size: 50),
                  Icon(icon, color: Colors.white, size: 25)
                ],
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
