class CategoryDetail {
  final String? svg;
  final String? img;
  final String title;

  CategoryDetail({
    this.svg,
    this.img,
    required this.title,
  });
}

class CategoryDetailList {
  static final List<CategoryDetail> ctgPharmacity = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
  ];

  static final List<CategoryDetail> ctgPharmaceuticals = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/Thu%E1%BB%91c_ko_k%C3%AA_%C4%91%C6%A1n.png',
      title: 'Thuốc không kê đơn',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/P00218_Rx_Da_li%E1%BB%85u.png',
      title: 'Thuốc kê đơn',
    ),
  ];

  static final List<CategoryDetail> ctgHealthCare = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.01_D%C6%B0%E1%BB%A3c_m%E1%BB%B9_ph%E1%BA%A9m_2.01-Dermo_Skincare_Duoc_my_pham1.jpg',
      title: 'Dược mỹ phẩm',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.04Th%E1%BB%B1c_ph%E1%BA%A9m_dinh_d%C6%B0%E1%BB%A1ng_2.04-Nutrition_Food_Thuc_pham_dinh_duong.jpg',
      title: 'Thực phẩm dinh dưỡng',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.06_D%E1%BB%A5ng_c%E1%BB%A5_s%C6%A1_c%E1%BB%A9u_2.06-First_Aids_Dung_cu_so_cuu1.jpg',
      title: 'Dụng cụ sơ cứu',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.07_K%E1%BA%BF_ho%E1%BA%A1ch_gia_%C4%91%C3%ACnh_2.07-Family_Planning_Ke_hoach_gia_dinh_-_Copy.jpg',
      title: 'Kế hoạch gia đình',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.08_Ch%C4%83m_s%C3%B3c_M%E1%BA%AFtTaiM%C5%A9i_2.08-For_EyeEarNose_Cham_soc_MatTaiMui.jpg',
      title: 'Chăm sóc Mắt/Tai/Mũi',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.09_Ch%C4%83m_s%C3%B3c_ch%C3%A2n_2.09-Foot_Care_Cham_soc_chan2.jpg',
      title: 'Chăm sóc chân',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.10_Kh%E1%BA%A9u_trang_y_t%E1%BA%BF_2.10-Medical_Face_Mask_Khau_trang_y_te.jpg',
      title: 'Khẩu trang y tế',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.11.png',
      title: 'Chống muỗi',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.12.png',
      title: 'Dầu tràm, dầu xoa bóp',
    ),
  ];

  static final List<CategoryDetail> ctgPersonalCare = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.02_S%E1%BA%A3n_ph%E1%BA%A9m_ph%C3%B2ng_t%E1%BA%AFm_3.02-Bath_Care_San_pham_phong_tam.png',
      title: 'Sản phẩm phòng tắm',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.03_Ch%C4%83m_s%C3%B3c_c%C6%A1_th%E1%BB%83_3.03-Body_Care_Cham_soc_co_the.png',
      title: 'Chăm sóc cơ thể',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.04_S%E1%BA%A3n_ph%E1%BA%A9m_kh%E1%BB%AD_m%C3%B9i_3.04-Deodorant_San_pham_khu_mui.png',
      title: 'Sản phẩm khử mùi',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.05_Ch%C4%83m_s%C3%B3c_t%C3%B3c_3.05-Hair_Care_Cham_soc_toc.png',
      title: 'Chăm sóc tóc',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.06_V%E1%BB%87_sinh_ph%E1%BB%A5_n%E1%BB%AF_3.06-Feminine_Hygiene_Ve_sinh_phu_nu.png',
      title: 'Vệ sinh phụ nữ',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.07_Ch%C4%83m_s%C3%B3c_nam_gi%E1%BB%9Bi_3.07-Men_Care_Cham_soc_nam_gioi.png',
      title: 'Chăm sóc nam giới',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.08_Ch%C4%83m_s%C3%B3c_r%C4%83ng_mi%E1%BB%87ng_3.08-Oral_Care_Cham_soc_rang_mieng.png',
      title: 'Chăm sóc răng miệng',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/3.09_S%E1%BA%A3n_ph%E1%BA%A9m_t%E1%BA%A9y_l%C3%B4ng_3.09-Deplilatories_San_pham_tay_long.png',
      title: 'Sản phẩm tẩy lông',
    ),
  ];

  static final List<CategoryDetail> ctgConvenienceProduct = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/5.01_H%C3%A0ng_t%E1%BB%95ng_h%E1%BB%A3p_5.01-General_Merchandise_Hang_tong_hop.png',
      title: 'Hàng tổng hợp',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/H%C3%A0ng_b%C3%A1ch_h%C3%B3a.png',
      title: 'Hàng bách hóa',
    ),
  ];

  static final List<CategoryDetail> ctgFunctionalProduct = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.01_6.01-TPCN_Nh%C3%B3m_ti%C3%AAu_h%C3%B3a_6.01-VMS_For_Stomach_TPCN_Nhom_tieu_hoa.png',
      title: 'TPCN Nhóm tiêu hóa',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.02_6.02-TPCN_Nh%C3%B3m_tim_m%E1%BA%A1ch_-_Huy%E1%BA%BFt_%C3%A1p_6.02-VMS_For_Heart_TPCN_Nhom_tim_mach_-_h.png',
      title: 'TPCN Nhóm tim mạch',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.02.03_6.02.03-TPCN_Nh%C3%B3m_%C4%91%C6%B0%E1%BB%9Dng_huy%E1%BA%BFt_6.02.03-Diabetic_TPCN_Nhom_Duong_Huyet.png',
      title: 'TPCN Nhóm đường huyết',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.03_6.03-TPCN_Nh%C3%B3m_h%C3%B4_h%E1%BA%A5p_6.03-VMS_For_Lungs_TPCN_Nhom_ho_hap.png',
      title: 'TPCN Nhóm hô hấp',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.04_6.04-TPCN_Nh%C3%B3m_th%E1%BA%A7n_kinh_6.04-VMS_For_Brain_TPCN_Nhom_than_kinh.png',
      title: 'TPCN Nhóm thần kinh',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.05_6.05-TPCN_Nh%C3%B3m_c%C6%A1_x%C6%B0%C6%A1ng_kh%E1%BB%9Bp_6.05-VMS_For_Bone__Joint_TPCN_Nhom_co_xuong_kho.png',
      title: 'TPCN Nhóm cơ xương khớp',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.06_6.06-TPCN_Gi%E1%BA%A3m_c%C3%A2n_6.06-VMS_Dietary_TPCN_Giam_Can.jpg',
      title: 'TPCN Giảm cân',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.17.png',
      title: 'TPCN Chăm sóc sắc đẹp',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.08_6.08-TPCN_Ch%C4%83m_s%C3%B3c_s%E1%BB%A9c_kh%E1%BB%8Fe_nam_v%C3%A0_n%E1%BB%AF_6.08-VMS_Mens__Womens_Health_TPCN_Cham.jpg',
      title: 'TPCN Chăm sóc sức khỏe nam và nữ',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.09_6.09-TPCN_Nh%C3%B3m_M%E1%BA%AFtTaiM%C5%A9i_6.09-VMS_For_EyeEarNose_TPCN_Nhom_MatTaiMui_-_Copy.png',
      title: 'TPCN Nhóm Mắt/Tai/Mũi',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.10_6.10-TPCN_Vitamin_t%E1%BB%95ng_h%E1%BB%A3p_v%C3%A0_kho%C3%A1ng_ch%E1%BA%A5t_6.10-VMS_General_Vitamins__Mineral.png',
      title: 'TPCN Vitamin tổng hợp và khoáng chất',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.11.png',
      title: 'TPCN Chăm sóc tóc',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.14_6.14-TPCN_Nh%C3%B3m_kh%C3%A1c_6.14-VMS_Others_TPCN_Nhom_khac.png',
      title: 'TPCN Nhóm khác',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.15_6.15-TPCN_cho_gan_6.15-VMS_For_Liver_TPCN_Cho_Gan.png',
      title: 'TPCN cho gan',
    ),
  ];

  static final List<CategoryDetail> ctgMomBaby = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/photo_2021-08-23_21-10-35_8080.png',
      title: 'Chăm sóc em bé',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.12_6.12-TPCN_D%C3%A0nh_cho_tr%E1%BA%BB_em_6.12-VMS_For_Kids_TPCN_Danh_cho_tre_em.png',
      title: 'TPCN dành cho trẻ em',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/photo_2021-08-23_21-08-20.png',
      title: 'Sản phẩm dành cho mẹ',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/6.16.png',
      title: 'TPCN dành cho phụ nữ mang thai',
    ),
  ];

  static final List<CategoryDetail> ctgBeautyCare = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/4.01_Ch%C4%83m_s%C3%B3c_m%E1%BA%B7t_4.01-Face_Care_Cham_soc_mat.png',
      title: 'Chăm sóc mặt',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/4.02_S%E1%BA%A3n_ph%E1%BA%A9m_ch%E1%BB%91ng_n%E1%BA%AFng_4.02-Sun_Care_San_pham_chong_nang.png',
      title: 'Sản phẩm chống nắng',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/4.03_D%E1%BB%A5ng_c%E1%BB%A5_l%C3%A0m_%C4%91%E1%BA%B9p_4.03-Beauty_Accessories_Dung_cu_lam_dep.png',
      title: 'Dụng cụ làm đẹp',
    ),
  ];

  static final List<CategoryDetail> ctgMedicalEquipment = [
    CategoryDetail(
      svg: 'assets/icons/all_products.svg',
      title: 'Xem tất cả',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05.01_Nhi%E1%BB%87t_k%E1%BA%BF_2.05.01-Thermometers_Nhiet_ke_l.png',
      title: 'Nhiệt kế',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05.02_M%C3%A1y_%C4%91o_huy%E1%BA%BFt_%C3%A1p_2.05.02-Blood_Pressure_Monitors_May_do_huyet_ap.png',
      title: 'Máy đo huyết áp',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05.03_M%C3%A1y_%C4%91o_%C4%91%C6%B0%E1%BB%9Dng_huy%E1%BA%BFt_2.05.03-Blood_Glucose_Monitors_May_do_duong_huyet.png',
      title: 'Máy đo đường huyết',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05.04_M%C3%A1y_x%C3%B4ng_kh%C3%AD_dung_2.05.04-Nebulizer__Aspirators_May_xong_khi_dung.png',
      title: 'Máy xông khí dubg',
    ),
    CategoryDetail(
      img:
          'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/category-icons/2.05.05_Thi%E1%BA%BFt_b%E1%BB%8B_y_t%E1%BA%BF_kh%C3%A1c_2.05.05-Other_Medical_Devices_Thiet_bi_y_te_khac.png',
      title: 'Thiết bị y tế khác',
    ),
  ];
}
