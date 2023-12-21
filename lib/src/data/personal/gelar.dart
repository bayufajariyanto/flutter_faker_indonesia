/// Daftar gelar belakang
const listGelarBelakang = [
  /// Ahli Madya (D3)
  {
    "singkatan": "A.Md.Akun.",
    "label_id": "Ahli Madya Akuntansi",
    "label_en": "Associate of Accounting"
  },
  {
    "singkatan": "A.Md.A.A.",
    "label_id": "Ahli Madya Asuransi dan Aktuaria",
    "label_en": "Associate of Insurance and Actuarial Associate"
  },
  {
    "singkatan": "A.Md.A.K.",
    "label_id": "Ahli Madya Analisis Kesehatan",
    "label_en": "Associate of Health Analysis"
  },
  {
    "singkatan": "A.Md.Pel.",
    "label_id": "Ahli Madya Pelayaran",
    "label_en": "Associate of Sailing"
  },
  {
    "singkatan": "A.Md.Kom.",
    "label_id": "Ahli Madya Komputer",
    "label_en": "Associate of Computer"
  },
  {
    "singkatan": "A.Md.Far.",
    "label_id": "Ahli Madya Farmasi",
    "label_en": "Associate of Pharmacy"
  },
  {
    "singkatan": "A.Md.G.",
    "label_id": "Ahli Madya Gizi",
    "label_en": "Associate of Nutritionist"
  },

  /// Sarjana (S1)
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Sains",
    "label_en": "Bachelor of Science"
  },
  {
    "singkatan": "S.T.",
    "label_id": "Sarjana Teknik",
    "label_en": "Bachelor of Engineering"
  },
  {
    "singkatan": "S.H.",
    "label_id": "Sarjana Hukum",
    "label_en": "Bachelor of Engineering"
  },
  {
    "singkatan": "S.E.",
    "label_id": "Sarjana Ekonomi",
    "label_en": "Bachelor of Economics"
  },
  {
    "singkatan": "S.Pd.",
    "label_id": "Sarjana Pendidikan",
    "label_en": "Bachelor of Education"
  },
  {
    "singkatan": "S.Ked.",
    "label_id": "Sarjana Kedokteran",
    "label_en": "Bachelor of Medicine"
  },
  {
    "singkatan": "S.Psi.",
    "label_id": "Sarjana Psikologi",
    "label_en": "Bachelor of Psychology"
  },
  {
    "singkatan": "S.Ars.",
    "label_id": "Sarjana Arsitektur",
    "label_en": "Bachelor of Architecture"
  },
  {
    "singkatan": "S.Sn.",
    "label_id": "Sarjana Seni Rupa",
    "label_en": "Bachelor of Fine Arts"
  },
  {
    "singkatan": "S.Ds.",
    "label_id": "Sarjana Desain",
    "label_en": "Bachelor of Design"
  },
  {
    "singkatan": "S.IP.",
    "label_id": "Sarjana Ilmu Politik",
    "label_en": "Bachelor of Political Science"
  },
  {
    "singkatan": "S.I.Kom.",
    "label_id": "Sarjana Ilmu Komunikasi",
    "label_en": "Bachelor of Communication"
  },
  {
    "singkatan": "S.Par.",
    "label_id": "Sarjana Pariwisata",
    "label_en": "Bachelor of Tourism"
  },

  {
    "singkatan": "S.P.",
    "label_id": "Sarjana Pertanian",
    "label_en": "Bachelor of Agriculture"
  },
  {
    "singkatan": "S.Pt.",
    "label_id": "Sarjana Peternakan",
    "label_en": "Bachelor of Animal Husbandry"
  },
  {
    "singkatan": "S.Hut.",
    "label_id": "Sarjana Kehutanan",
    "label_en": "Bachelor of Forestry"
  },
  {
    "singkatan": "S.Pi.",
    "label_id": "Sarjana Perikanan",
    "label_en": "Bachelor of Fishery"
  },
  {
    "singkatan": "S.Kel.",
    "label_id": "Sarjana Kelautan",
    "label_en": "Bachelor of Marine Science"
  },
  {
    "singkatan": "S.G.",
    "label_id": "Sarjana Geologi",
    "label_en": "Bachelor of Geology"
  },
  {
    "singkatan": "S.Met.",
    "label_id": "Sarjana Meteorologi",
    "label_en": "Bachelor of Meteorology"
  },
  {
    "singkatan": "S.Gd.",
    "label_id": "Sarjana Geodesi",
    "label_en": "Bachelor of Geodesy"
  },
  {
    "singkatan": "S.Kom.",
    "label_id": "Sarjana Informatika",
    "label_en": "Bachelor of Informatics"
  },
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Sistem Informasi",
    "label_en": "Bachelor of Information Systems"
  },
  {
    "singkatan": "S.T.I.",
    "label_id": "Sarjana Teknik Informatika",
    "label_en": "Bachelor of Information Technology"
  },
  {
    "singkatan": "S.E.",
    "label_id": "Sarjana Elektro",
    "label_en": "Bachelor of Electrical Engineering"
  },
  {
    "singkatan": "S.M.",
    "label_id": "Sarjana Mesin",
    "label_en": "Bachelor of Mechanical Engineering"
  },
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Kimia",
    "label_en": "Bachelor of Chemistry"
  },
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Biologi",
    "label_en": "Bachelor of Biology"
  },
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Matematika",
    "label_en": "Bachelor of Mathematics"
  },
  {
    "singkatan": "S.Si.",
    "label_id": "Sarjana Fisika",
    "label_en": "Bachelor of Physics"
  },
  {
    "singkatan": "S.Farm.",
    "label_id": "Sarjana Farmasi",
    "label_en": "Bachelor of Pharmacy"
  },
  {
    "singkatan": "S.K.M.",
    "label_id": "Sarjana Kesehatan Masyarakat",
    "label_en": "Bachelor of Public Health"
  },
  {
    "singkatan": "S.Gz.",
    "label_id": "Sarjana Gizi",
    "label_en": "Bachelor of Nutrition"
  },
  {
    "singkatan": "S.Kep.",
    "label_id": "Sarjana Keperawatan",
    "label_en": "Bachelor of Nursing"
  },
  {
    "singkatan": "S.Keb.",
    "label_id": "Sarjana Kebidanan",
    "label_en": "Bachelor of Midwifery"
  },
  {
    "singkatan": "S.Ak.",
    "label_id": "Sarjana Akuntansi",
    "label_en": "Bachelor of Accounting"
  },
  {
    "singkatan": "S.M.",
    "label_id": "Sarjana Manajemen",
    "label_en": "Bachelor of Management"
  },
  {
    "singkatan": "S.P.",
    "label_id": "Sarjana Pemasaran",
    "label_en": "Bachelor of Marketing"
  },
  {
    "singkatan": "S.E.P.",
    "label_id": "Sarjana Ekonomi Pembangunan",
    "label_en": "Bachelor of Development Economics"
  },
  {
    "singkatan": "S.H.I.",
    "label_id": "Sarjana Hubungan Internasional",
    "label_en": "Bachelor of International Relations"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Inggris",
    "label_en": "Bachelor of English Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Indonesia",
    "label_en": "Bachelor of Indonesian Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Jepang",
    "label_en": "Bachelor of Japanese Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Cina",
    "label_en": "Bachelor of Chinese Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Arab",
    "label_en": "Bachelor of Arabic Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Jerman",
    "label_en": "Bachelor of German Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Prancis",
    "label_en": "Bachelor of French Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Spanyol",
    "label_en": "Bachelor of Spanish Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Rusia",
    "label_en": "Bachelor of Russian Literature"
  },
  {
    "singkatan": "S.S.",
    "label_id": "Sarjana Sastra Yunani",
    "label_en": "Bachelor of Greek Literature"
  },

  /// Magister
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Sains",
    "label_en": "Master of Science"
  },
  {
    "singkatan": "M.T.",
    "label_id": "Magister Teknik",
    "label_en": "Master of Engineering"
  },
  {
    "singkatan": "M.H.",
    "label_id": "Magister Hukum",
    "label_en": "Master of Laws"
  },
  {
    "singkatan": "M.E.",
    "label_id": "Magister Ekonomi",
    "label_en": "Master of Economics"
  },
  {
    "singkatan": "M.Pd.",
    "label_id": "Magister Pendidikan",
    "label_en": "Master of Education"
  },
  {
    "singkatan": "M.Ked.",
    "label_id": "Magister Kedokteran",
    "label_en": "Master of Medicine"
  },
  {
    "singkatan": "M.Psi.",
    "label_id": "Magister Psikologi",
    "label_en": "Master of Psychology"
  },
  {
    "singkatan": "M.Ars.",
    "label_id": "Magister Arsitektur",
    "label_en": "Master of Architecture"
  },
  {
    "singkatan": "M.Sn.",
    "label_id": "Magister Seni Rupa",
    "label_en": "Master of Fine Arts"
  },
  {
    "singkatan": "M.Ds.",
    "label_id": "Magister Desain",
    "label_en": "Master of Design"
  },
  {
    "singkatan": "M.IP.",
    "label_id": "Magister Ilmu Politik",
    "label_en": "Master of Political Science"
  },
  {
    "singkatan": "M.I.Kom.",
    "label_id": "Magister Ilmu Komunikasi",
    "label_en": "Master of Communication"
  },
  {
    "singkatan": "M.Par.",
    "label_id": "Magister Pariwisata",
    "label_en": "Master of Tourism"
  },
  {
    "singkatan": "M.P.",
    "label_id": "Magister Pertanian",
    "label_en": "Master of Agriculture"
  },
  {
    "singkatan": "M.Pt.",
    "label_id": "Magister Peternakan",
    "label_en": "Master of Animal Husbandry"
  },
  {
    "singkatan": "M.Hut.",
    "label_id": "Magister Kehutanan",
    "label_en": "Master of Forestry"
  },
  {
    "singkatan": "M.Pi.",
    "label_id": "Magister Perikanan",
    "label_en": "Master of Fishery"
  },
  {
    "singkatan": "M.Kel.",
    "label_id": "Magister Kelautan",
    "label_en": "Master of Marine Science"
  },
  {
    "singkatan": "M.G.",
    "label_id": "Magister Geologi",
    "label_en": "Master of Geology"
  },
  {
    "singkatan": "M.Met.",
    "label_id": "Magister Meteorologi",
    "label_en": "Master of Meteorology"
  },
  {
    "singkatan": "M.Gd.",
    "label_id": "Magister Geodesi",
    "label_en": "Master of Geodesy"
  },
  {
    "singkatan": "M.Kom.",
    "label_id": "Magister Informatika",
    "label_en": "Master of Informatics"
  },
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Sistem Informasi",
    "label_en": "Master of Information Systems"
  },
  {
    "singkatan": "M.T.I.",
    "label_id": "Magister Teknik Informatika",
    "label_en": "Master of Information Technology"
  },
  {
    "singkatan": "M.E.",
    "label_id": "Magister Elektro",
    "label_en": "Master of Electrical Engineering"
  },
  {
    "singkatan": "M.M.",
    "label_id": "Magister Mesin",
    "label_en": "Master of Mechanical Engineering"
  },
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Kimia",
    "label_en": "Master of Chemistry"
  },
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Biologi",
    "label_en": "Master of Biology"
  },
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Matematika",
    "label_en": "Master of Mathematics"
  },
  {
    "singkatan": "M.Si.",
    "label_id": "Magister Fisika",
    "label_en": "Master of Physics"
  },
  {
    "singkatan": "M.Farm.",
    "label_id": "Magister Farmasi",
    "label_en": "Master of Pharmacy"
  },
  {
    "singkatan": "M.K.M.",
    "label_id": "Magister Kesehatan Masyarakat",
    "label_en": "Master of Public Health"
  },
  {
    "singkatan": "M.Gz.",
    "label_id": "Magister Gizi",
    "label_en": "Master of Nutrition"
  },
  {
    "singkatan": "M.Kep.",
    "label_id": "Magister Keperawatan",
    "label_en": "Master of Nursing"
  },
  {
    "singkatan": "M.Keb.",
    "label_id": "Magister Kebidanan",
    "label_en": "Master of Midwifery"
  },
  {
    "singkatan": "M.Ak.",
    "label_id": "Magister Akuntansi",
    "label_en": "Master of Accounting"
  },
  {
    "singkatan": "M.M.",
    "label_id": "Magister Manajemen",
    "label_en": "Master of Management"
  },
  {
    "singkatan": "M.E.P.",
    "label_id": "Magister Ekonomi Pembangunan",
    "label_en": "Master of Development Economics"
  },
  {
    "singkatan": "M.H.I.",
    "label_id": "Magister Hubungan Internasional",
    "label_en": "Master of International Relations"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Inggris",
    "label_en": "Master of English Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Indonesia",
    "label_en": "Master of Indonesian Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Jepang",
    "label_en": "Master of Japanese Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Cina",
    "label_en": "Master of Chinese Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Arab",
    "label_en": "Master of Arabic Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Jerman",
    "label_en": "Master of German Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Prancis",
    "label_en": "Master of French Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Spanyol",
    "label_en": "Master of Spanish Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Rusia",
    "label_en": "Master of Russian Literature"
  },
  {
    "singkatan": "M.S.",
    "label_id": "Magister Sastra Yunani",
    "label_en": "Master of Greek Literature"
  },

  /// Doktor
  /// {
  ///   "singkatan": "Dr.S.",
  ///   "label_id": "Doktor Sains",
  ///   "label_en": "Doctor of Science"
  /// },
  /// {
  ///   "singkatan": "Dr.T.",
  ///   "label_id": "Doktor Teknik",
  ///   "label_en": "Doctor of Science"
  /// },
  /// {
  ///   "singkatan": "Dr.H.",
  ///   "label_id": "Doktor Hukum",
  ///   "label_en": "Doctor of Laws"
  /// },
  /// {
  ///   "singkatan": "Dr.E.",
  ///   "label_id": "Doktor Ekonomi",
  ///   "label_en": "Doctor of Economics"
  /// },
];

/// Daftar gelar depan
const listGelarDepan = [
  {"singkatan": "Dr.", "label_id": "Doktor", "label_en": "Doctor", "sex": null},
  {"singkatan": "DR.", "label_id": "Doktor", "label_en": "Doctor", "sex": null},
  {"singkatan": "dr.", "label_id": "Dokter", "label_en": "Doctor", "sex": null},
  {"singkatan": "H.", "label_id": "Haji", "label_en": "Hajj", "sex": "pria"},
  {
    "singkatan": "Hj.",
    "label_id": "Hajjah",
    "label_en": "Hajj",
    "sex": "wanita"
  },
];
