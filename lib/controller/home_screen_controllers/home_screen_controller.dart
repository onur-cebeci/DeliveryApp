import 'package:flutter/material.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:flutter/widgets.dart';

class HomeScreenController extends ChangeNotifier {
  final List<JobsModel> jobsList = const [
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "Manisa",
      targetLocation: "İzmir",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Onur Cebeci",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "Aydın",
      targetLocation: "İstanbul",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Çağrı Gültekin",
      mapLat: 37.835207,
      mapLng: 27.837937,
    ),
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "Karşıyaka",
      targetLocation: "Bornova",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Esra Gümüş",
      mapLat: 41.008237,
      mapLng: 28.978358,
    ),
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "Adana",
      targetLocation: "Mersin",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Cihat Baştek",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "İstanbul",
      targetLocation: "İzmit",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Melike Gül",
      mapLat: 41.008237,
      mapLng: 28.978358,
    ),
    JobsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      packageLocation: "Manisa",
      targetLocation: "İzmir",
      id: "56465",
      state: "Aktif",
      price: "1000",
      sum: "20",
      productType: "kutu",
      address:
          "It is a long established fact that a reader will be distracted by the readable content of a page ",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      advertiser: "Onur Cebeci",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
  ];
}
