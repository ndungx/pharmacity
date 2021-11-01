import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class PharmacityLocation extends StatelessWidget {
  const PharmacityLocation({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _pharmacityLocation = const [
    {
      'name': '17 Bình Lợi',
      'address':
          '17 Bình Lợi, Phường 13, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC665'
    },
    {
      'name': 'Richmond',
      'address':
          'RS4 Block Riches thuộc DA CCCT kết hợp TMDV&VP tại số 207C Nguyễn Xí, Phường 26, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC573'
    },
    {
      'name': '306 Bùi Đình Túy',
      'address':
          '306 Bùi Đình Túy, Phường 12, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC553'
    },
    {
      'name': 'Saigon Pearl SH07',
      'address':
          'Shophouse SH07 căn S04 Saigon Pearl - 92 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC495'
    },
    {
      'name': '80 - 82 Vũ Huy Tấn',
      'address':
          '80 - 82 Vũ Huy Tấn, Phường 03, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC418'
    },
    {
      'name': '34 Vũ Tùng',
      'address':
          '34 Vũ Tùng, Phường 02, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC413'
    },
    {
      'name': '112 - 114 Bình Quới',
      'address':
          '112 - 114 Bình Quới, Phường 27, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC383'
    },
    {
      'name': '311 Lê Quang Định',
      'address':
          '311 Lê Quang Định, Phường 07, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
      'code': 'SGPMC370'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ...List.generate(
              _pharmacityLocation.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: kSecondaryColor, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Tên nhà thuốc: ',
                                  ),
                                  TextSpan(
                                    text: _pharmacityLocation[index]['name'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Địa chỉ: ',
                                  ),
                                  TextSpan(
                                    text: _pharmacityLocation[index]['address'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Địa chỉ: ',
                                  ),
                                  TextSpan(
                                    text: _pharmacityLocation[index]['code'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
