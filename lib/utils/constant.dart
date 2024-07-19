import 'package:flutter/material.dart';

@immutable
final class AppConstant {
// api key

  static const openRouteServiceApiKey =
      "5b3ce3597851110001cf6248051e849115c1413a943881916c121cb9";

  //URL
  static const mapUrl = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';

  //pages

  static const homeScreenBodyTitle = 'Aktif İlanlar';
  static const activeJobsScreenTitle = 'Onaylanan İş';
  static const homeScreenDetailTitle = 'İlan Detay';
  static const costumerMessageScreenTitle = 'Mesaj Ekranı';

  //Paddings
  static const extraLargePadding = 40.0;
  static const largePadding = 30.0;
  static const padding25 = 25.0;
  static const padding20 = 20.0;
  static const padding15 = 15.0;
  static const padding10 = 10.0;
  static const padding5 = 5.0;

  //
  static const deliveryMessageTitle = 'Teslimat Kodunu Giriniz ';
  static const deliveryMessageSubTitle =
      'Müşteriden alınan 6 haneli teslimat kodu giriniz';
  static const deliveryCode = "Teslimat Kodu";
  static const text = "Mesaj";
  static const revoke = "İptal Et";
  static const revokeSubTitle =
      'Teslimatı iptal etmek istediğinize emin misiniz?';
  static const revoking = 'İptal Ediliyor';
  static const wrongCode = 'Kod yanlış veya geçersiz';
  static const enterTheCode = 'Kodu Giriniz';
  static const iAccept = 'Onaylıyorum';
  static const iAcceptV2 = 'Onayla';
  static const cancel = 'Vazgeç';

  static const accept = 'Kabul Et';
  static const deliveyRulesSubTitle =
      "Teslimat koşulları aşılırsa ceza uygulanacaktır";
  static const deliveyRulesTitle = 'İşi Kabul Ediyorum';
}
