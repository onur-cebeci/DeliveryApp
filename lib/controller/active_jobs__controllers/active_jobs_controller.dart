import 'package:delivery_app/models/products_models/products_model.dart';
import 'package:flutter/material.dart';

class ActiveJobsController extends ChangeNotifier {
//
  bool isArrive = false;

//
  final List<ProductsModel> productsList = const [
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "İzmir",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "İstanbul",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 37.835207,
      mapLng: 27.837937,
    ),
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "Bornova",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 41.008237,
      mapLng: 28.978358,
    ),
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "Mersin",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "İzmit",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 41.008237,
      mapLng: 28.978358,
    ),
    ProductsModel(
      title: "",
      desc:
          'It is a long established fact that a reader will be distracted by the readable content of a page ',
      targetLocation: "İzmir",
      id: "56465",
      state: "Aktif",
      productType: "kutu",
      address: "It is a long established fact that a reader will",
      phone: "+905554446688",
      beginDate: "20.10.2024",
      endDate: "20.10.2024",
      mapLat: 38.407875,
      mapLng: 27.125710,
    ),
  ];

//

  void getIsArrive({required bool v}) {
    isArrive = v;
  }
}
