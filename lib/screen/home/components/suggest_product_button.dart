import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class SuggestProductButton extends StatefulWidget {
  const SuggestProductButton({Key? key}) : super(key: key);

  @override
  _SuggestProductButtonState createState() => _SuggestProductButtonState();
}

class _SuggestProductButtonState extends State<SuggestProductButton> {
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      splashColor: Colors.white,
      fillColor: Colors.white,
      borderRadius: BorderRadius.circular(10),
      renderBorder: false,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: isSelected[0]
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/all_products.svg',
                          color: Colors.white,
                          height: 25,
                          alignment: Alignment.center,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Tất cả',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kSecondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/all_products.svg',
                          height: 25,
                          alignment: Alignment.center,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Tất cả',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        ),
        _buildSuggestProductButton(
          selected: isSelected[1],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/01_D%C6%B0%E1%BB%A3c_ph%E1%BA%A9m_01-Medicine_Duoc_Pham.png',
          color: kSuccessColor,
          title: 'Dược phẩm',
        ),
        _buildSuggestProductButton(
          selected: isSelected[2],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/02_Ch%C4%83m_s%C3%B3c_s%E1%BB%A9c_kh%E1%BB%8Fe_02-Healthcare_Cham_soc_suc_khoe.png',
          color: const Color(0xFF834198),
          title: 'Chăm sóc sức khỏe',
        ),
        _buildSuggestProductButton(
          selected: isSelected[3],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/03_Ch%C4%83m_s%C3%B3c_c%C3%A1_nh%C3%A2n_03-Personal_Care_Cham_soc_ca_nhan.png',
          color: const Color(0xFF0D4DA1),
          title: 'Chăm sóc cá nhân',
        ),
        _buildSuggestProductButton(
          selected: isSelected[4],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/05_S%E1%BA%A3n_ph%E1%BA%A9m_ti%E1%BB%87n_l%E1%BB%A3i_05-CVS_San_pham_tien_loi.png',
          color: const Color(0xFF00B6F0),
          title: 'Sản phẩm tiện lợi',
        ),
        _buildSuggestProductButton(
          selected: isSelected[5],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/06_Th%E1%BB%B1c_ph%E1%BA%A9m_ch%E1%BB%A9c_n%C4%83ng_06_06-Vitamin__Supplement_Thuc_pham_chuc_nang.png',
          color: const Color(0xFFF33060),
          title: 'Thực phẩm chức năng',
        ),
        _buildSuggestProductButton(
          selected: isSelected[6],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/6.12.png',
          color: kPrimaryColor,
          title: 'Mẹ và bé',
        ),
        _buildSuggestProductButton(
          selected: isSelected[7],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/04_Ch%C4%83m_s%C3%B3c_s%E1%BA%AFc_%C4%91%E1%BA%B9p_04-Beauty_Care_Cham_soc_sac_dep.png',
          color: kSuccessColor,
          title: 'Chăm sóc sắc đẹp',
        ),
        _buildSuggestProductButton(
          selected: isSelected[8],
          img:
              'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/2.05_Thi%E1%BA%BFt_b%E1%BB%8B_y_t%E1%BA%BF_2.05-Healthcare_Equipment_Thiet_bi_y_te.png',
          color: const Color(0xFFF33060),
          title: 'Thiết bị y tế',
        ),
      ],
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int indexBtn = 0; indexBtn < isSelected.length; indexBtn++) {
            if (indexBtn == index) {
              isSelected[indexBtn] = true;
            } else {
              isSelected[indexBtn] = false;
            }
          }
        });
      },
    );
  }

  Widget _buildSuggestProductButton({
    required bool selected,
    required Color color,
    String? img,
    required String title,
  }) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      child: selected
          ? Padding(
              key: ValueKey(title),
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: kSecondaryColor,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        img!,
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
