import 'package:flutter/material.dart';
import 'package:obsnews/data/constant/colorconfig.dart';

class AppResponCode {
  AppResponCode._();

  static getKodePPOB({
    required String cKode,
    String cMessage = "",
  }) {
    if (cMessage.isEmpty) {
      switch (cKode) {
        case "01":
          cMessage = "Pulsa Prabayar";
          break;
        case "02":
          cMessage = "Pulsa Pascabayar";
          break;
        case "03":
          cMessage = "BPJS";
          break;
        case "04":
          cMessage = "PDAM";
          break;
        case "05":
          cMessage = "PLN Pascabayar";
          break;
        case "06":
          cMessage = "PLN Prabayar";
          break;
        case "07":
          cMessage = "Paket Data";
          break;
        case "08":
          cMessage = "Pulsa Lainnya";
          break;
        case "09":
          cMessage = "Telepon";
          break;
        case "10":
          cMessage = "Internet";
          break;
        case "11":
          cMessage = "Finance";
          break;
        case "12":
          cMessage = "E-Money";
          break;
        case "13":
          cMessage = "Transfer Dana";
          break;
        case "14":
          cMessage = "Payment VA";
          break;
      }
    }

    return cMessage;
  }

  static getRC({
    required String cKode,
    String cMessage = "",
  }) {
    if (cMessage.isEmpty) {
      switch (cKode) {
        case "00":
          cMessage = "Berhasil";
          break;
        case "01":
          cMessage = "PIN Salah";
          break;
        case "02":
          cMessage = "Nomor HP belum diaktivasi";
          break;
        case "03":
          cMessage = "Rekening tidak ditemukan";
          break;
        case "04":
          cMessage = "Saldo tidak cukup untuk transaksi ini";
          break;
        case "05":
          cMessage = "Rekening telah diblokir";
          break;
        case "06":
          cMessage = "Rekening sudah ditutup";
          break;
        case "07":
          cMessage = "Limit penarikan melebihi maksimum";
          break;
        case "08":
          cMessage = "Limit transfer melebihi maksimum";
          break;
        case "09":
          cMessage = "Kode produk tidak ditemukan";
          break;
        case "10":
          cMessage = "Belum ada tagihan / tagihan sudah lunas";
          break;
        case "11":
          cMessage = "Gangguan jaringan";
          break;
        case "12":
          cMessage = "Tidak ada mutasi";
          break;
        case "13":
          cMessage = "Transaksi dalam proses. Mohon tunggu sms konfirmasi";
          break;
        case "14":
          cMessage = "Nominal kurang dari angka minimal";
          break;
        case "15":
          cMessage = "Maaf, transaksi kirim uang melebihi limit";
          break;
        case "16":
          cMessage = "Bank tujuan belum terdaftar";
          break;
        case "17":
          cMessage = "Nomor HP yang dipilih tidak valid";
          break;
        case "18":
          cMessage =
              "Saldo dibawah minimum. Lakukan setoran tabungan agar dapat kembali menggunakan layanan ini.";
          break;
        case "19":
          cMessage = "Tidak ada data yang ditemukan";
          break;
        case "20":
          cMessage =
              "Akun kamu diblokir :( Hubungi pihak Bank untuk membuka blokir";
          break;
        default:
          cMessage = "Request timeout... coba lagi nanti";
      }
    }

    // W.showBottomSheet(
    //   backgroundColor: AppColorConfig.white,
    //   bottomSheetMode: BottomSheetMode.message,
    //   bottomSheet: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Container(
    //         padding: const EdgeInsets.symmetric(
    //           vertical: 8.0,
    //         ),
    //         child: W.textBody(
    //           cText: cMessage,
    //           fontSize: 16,
    //           fontFamily: FontFamily.poppins,
    //         ),
    //       ),
    //       const Divider(),
    //       SizedBox(
    //         width: double.infinity,
    //         child: W.button(
    //           onPressed: () {
    //             C.back();
    //           },
    //           child: W.textBody(
    //             cText: "OKE",
    //             fontFamily: FontFamily.poppins,
    //             fontWeight: FontWeight.w600,
    //             textColor: AppColorConfig.white,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
