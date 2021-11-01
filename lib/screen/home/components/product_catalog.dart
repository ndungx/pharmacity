import 'package:flutter/material.dart';

class ProductCatalog extends StatelessWidget {
  const ProductCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Danh mục sản phẩm',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20.0,
                mainAxisExtent: 100.0,
              ),
              children: [
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/01_D%C6%B0%E1%BB%A3c_ph%E1%BA%A9m_01-Medicine_Duoc_Pham.png',
                  title: 'Dược phẩm',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const PharmaceuticalScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/02_Ch%C4%83m_s%C3%B3c_s%E1%BB%A9c_kh%E1%BB%8Fe_02-Healthcare_Cham_soc_suc_khoe.png',
                  title: 'Chăm sóc sức khỏe',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const HealthCareScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/03_Ch%C4%83m_s%C3%B3c_c%C3%A1_nh%C3%A2n_03-Personal_Care_Cham_soc_ca_nhan.png',
                  title: 'Chăm sóc cá nhân',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const PersonalCareScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/05_S%E1%BA%A3n_ph%E1%BA%A9m_ti%E1%BB%87n_l%E1%BB%A3i_05-CVS_San_pham_tien_loi.png',
                  title: 'Sảm phẩm tiện lợi',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const ConvenienceProductScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/06_Th%E1%BB%B1c_ph%E1%BA%A9m_ch%E1%BB%A9c_n%C4%83ng_06_06-Vitamin__Supplement_Thuc_pham_chuc_nang.png',
                  title: 'Thực phẩm chức năng',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const FunctionalFoodScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/6.12.png',
                  title: 'Mẹ và bé',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const MomBabyScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/04_Ch%C4%83m_s%C3%B3c_s%E1%BA%AFc_%C4%91%E1%BA%B9p_04-Beauty_Care_Cham_soc_sac_dep.png',
                  title: 'Chăm sóc sắc đẹp',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const BeautyCareScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                _buildProductCatalog(
                  img:
                      'https://pharmacity-ecm-core-dev.s3.amazonaws.com/category-icons/2.05_Thi%E1%BA%BFt_b%E1%BB%8B_y_t%E1%BA%BF_2.05-Healthcare_Equipment_Thiet_bi_y_te.png',
                  title: 'Thiết bị y tế',
                  navigate: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const MedicalEquipmentScreen();
                    //     },
                    //   ),
                    // );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProductCatalog({
    required Function navigate,
    required String img,
    required String title,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: navigate as void Function()?,
          child: SizedBox(
            width: 70,
            child: Column(
              children: [
                Image.network(
                  img,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
