class Category {
  final String title;
  final String img;

  Category({
    required this.title,
    required this.img,
  });
}

class CategoryList {
  static final List<Category> category = [
    Category(
      img: 'https://payoo.vn/v2/img/merchants/pharmacity.png',
      title: 'Nhãn hàng Pharmacity',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/01_D%C6%B0%E1%BB%A3c_ph%E1%BA%A9m_01-Medicine_Duoc_Pham.png',
      title: 'Dược phẩm',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/02_Ch%C4%83m_s%C3%B3c_s%E1%BB%A9c_kh%E1%BB%8Fe_02-Healthcare_Cham_soc_suc_khoe.png',
      title: 'Chăm sóc sức khỏe',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/03_Ch%C4%83m_s%C3%B3c_c%C3%A1_nh%C3%A2n_03-Personal_Care_Cham_soc_ca_nhan.png',
      title: 'Chăm sóc cá nhân',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/05_S%E1%BA%A3n_ph%E1%BA%A9m_ti%E1%BB%87n_l%E1%BB%A3i_05-CVS_San_pham_tien_loi.png',
      title: 'Sản phẩm tiện lợi',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/06_Th%E1%BB%B1c_ph%E1%BA%A9m_ch%E1%BB%A9c_n%C4%83ng_06_06-Vitamin__Supplement_Thuc_pham_chuc_nang.png',
      title: 'Thực phẩm chức năng',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.12.png',
      title: 'Mẹ và Bé',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/04_Ch%C4%83m_s%C3%B3c_s%E1%BA%AFc_%C4%91%E1%BA%B9p_04-Beauty_Care_Cham_soc_sac_dep.png',
      title: 'Chăm sóc sắc đẹp',
    ),
    Category(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05_Thi%E1%BA%BFt_b%E1%BB%8B_y_t%E1%BA%BF_2.05-Healthcare_Equipment_Thiet_bi_y_te.png',
      title: 'Thiết bị y tế',
    )
  ];
}
