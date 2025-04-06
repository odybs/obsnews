// ignore_for_file: constant_identifier_names, non_constant_identifier_names
class AppConfig {
  AppConfig._();

  static String cAppName = "Assist Digital Bank";
  static String cAppInfo = "Sistem Transaksi Mobile Banking";
  // static String cAppPackageName = "com.bprbepede.digitalbank.hybrid";
  static String cAppPackageName = "com.assistindo.digitalbank";
  static String cAppStoreID = "";
  static String cAppVersion = "1.0.0";
  static int nAppVersion = 1;

  // konfigurasi OAuth
  static String cSertifikatOAuth = "22d9287a83d1361e63aaffe206b3fd0d";
  static String cversiSertifikatOAuth = '1.0.11';

  static String cURLAksesTokenOAuth =
      "https://api.sis1.net:4436/assist-switching_v3/public/getaccesstoken";
  static String cURLRefreshTokenOAuth =
      "https://api.sis1.net:4436/assist-switching_v3/public/getaccesstokenfromrefresh";

  static String cURL =
      "aa.dev.sis1.net/assist-switching_erp/public/erp-merchant";
  // "https://api.sis1.net:4436/assist-switching_v3/public/mobile-digital";
  // static String cURL =
  //     "http://aa.dev.sis1.net/assist-switching_v3_pro/public/mobile-digital";
  static String cFBVapidKey =
      "AAAAh3fO_gY:APA91bGzdkSKqctaSbGQpNLLhKeQ2AK1_OX5ujhNrz10ENjRsmWQdpyzwcB9WmchBWkQC3KCOkpPm-MlTrm2THfAUOf-mfCy6otyo-grGOztRl_YZx3YyGnLVcG1TSudjvi1quyEm_Mi";

  //Config Demo
  static String cCIFDemoF = "0100";
  static String cCIFDemoL = "080000000";
  static String cHPDemo = "0800";
  static String cEMDemo = "demo@assistindo.com";
  static String lAgDemo = "A-000151";
  // static String lAgDemo = "A-000168";

  // DEMO
  static String cKodeAgen = "A-000151";
  static String cKodeAgenFitur = "0048";

  // UTAMA
  // static String cKodeAgen = "A-000168";
  // static String cKodeAgenFitur = "0043";

  static String cTipeBank = "BPR";
  static bool lShowLog = true;

  // konfigurasi database
  static String DB_Name = "main_app.db";
  static int DB_Version = 1;
  static String TBL_kontak_kirim_uang = "kontak_kirim_uang";
  static String TBL_produk_ppob = "produk_ppob";
  static String TBL_operator = "operator";

  // konfigurasi kode request aplikasi digital
  static const String JENIS_BANK = "BPRS";
  static const String MTI_DIGITAL_BANK = "002";
  static const String MTI_DIGITAL_BANK_AMBILDATA = "004";
  static const String MTI_DIGITAL_BANK_INQUIRY = "010";

  // konfigurasi produk transaksi
  static const String PRD_TANPA_REKENING = "00";
  static const String PRD_TABUNGAN = "10";
  static const String PRD_KREDIT = "30";
  static const String PRD_PURCHASE = "40";
  static const String PRD_PAYMENT = "41";

  // konfigurasi nama cache
  static String cacheAksesToken = "msAksesTokenOAuth";
  static String cacheRefreshToken = "msRefreshTokenOAuth";
  static String cacheDeviceID = "msDeviceID";
  static String cacheFCMToken = "msFCMToken";
  static String cacheNamaNasabah = "msNamaNasabah";
  static String cacheHP = "msHP";
  static String cacheEmail = "msEmail";
  static String cacheTRXKEY = "msTransaksiKey";
  static String cacheRekTabNasabah = "msRekTabNasabah";
  static String cacheProdukRekTabNasabah = "msProdRekTabNasabah";
  static String cacheRekUtamaTabNasabah = "msRekUtamaTabNasabah";
  static String cacheNamaRekUtamaTabNasabah = "msNamaRekUtamaTabNasabah";
  static String cacheKodeCIF = "msKodeCIF";
  static String cachePassword = "msPassword";
  static String cacheLogin = "msLogin";
  static String cacheDemoAccount = "msDemoAccount";
  static String cacheLastPulsaHP = "msLastPulsaHP";
  static String cacheLastBPJS = "msLastBPJS";
  static String cacheLastPulsaListrik = "msLastPulsaListrik";
  static String cacheLastListrik = "msLastListrik";
  static String cacheLastPDAM = "msLastPDAM";
  static String cacheLastTelepon = "msLastTelepon";
  static String cacheLastEmoney = "msLastEmoney";
  static String cacheOneSignalPlayerID = "playerid";

  // konfigurasi kode transaksi mobile digital ISO
  static String TRX_MB_CHECK_SALDO = "01";
  static String TRX_MB_MUTASI_TABUNGAN = "02";
  static String TRX_MB_TRANSFER_DEBET = "03";
  static String TRX_MB_AKTIVASI_NOMOR = "04";
  static String TRX_MB_INQUIRY_REKENING_TUJUAN = "06";
  static String TRX_MB_GANTI_PIN = "07";
  static String TRX_MB_CEK_PIN = "14";
  static String TRX_MB_PURCHASE = "20";
  static String TRX_MB_PAYMENT = "21";
  static String TRX_MB_INQUIRY_PAYMENT = "23";
  static String TRX_MB_DETAIL_MUTASI_TABUNGAN = "30";
  static String TRX_MB_LOGIN_VIA_OTP = "82";

  // konfigurasi kode transaksi mobile digital non ISO
  static String TRX_PRODUK = "1";
  static String TRX_PREFIX = "4";
  static String TRX_GET_TOKEN = "5";
  static String TRX_GET_KODE_BANK = "7";
  static String TRX_NI_GET_BROSUR = "9";
  static String TRX_NI_GET_BERITA = "8";
  static String TRX_NI_GET_CONFIG = "11";
  static String TRX_NI_GET_SYARAT_KETENTUAN = "13";
  static String TRX_CHECK_ACTIVE_ACCOUNT = "17";
  static String TRX_NI_GET_RIWAYAT_PPOB = "20";
  static String TRX_NI_GET_RIWAYAT_TRANSFER = "25";
  // static String TRX_NI_GET_TABUNGAN = "27";//get data tabungan anjukladang utama
  static String TRX_NI_GET_TABUNGAN = "50"; //get data tabungan pundhi demo
  static String TRX_NI_GET_AKUNKU = "30";
  static String TRX_NI_DATA_KELUHAN = "72";
  static String TRX_NI_GET_REKENING = "51";
  static String TRX_NI_GET_RIWAYAT_PENERIMA = "74";
  static String TRX_NI_RIWAYAT_PPOB = "74";
  static String TRX_NI_SAVE_RIWAYAT_PPOB = "76";

  /// untuk menu pembiayaan
  static const String MB_AMBILPEMBIAYAAN = "25";
  static const String MB_JADWALPEMBIAYAAN = "32";
  static const String MB_AMBILMUTASIPEMBIAYAAN = "33";

  static String TRX_GET_OTP_SMS = '08';
}
