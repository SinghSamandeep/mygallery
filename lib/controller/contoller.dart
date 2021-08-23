import 'package:get/get.dart';
import 'package:jrs_project/api/api_fetch.dart';
import 'package:jrs_project/models/image_model.dart';

class ImageController extends GetxController{
  var imageGrid = <Datum>[].obs;

  ApiFetch apiFetch = ApiFetch();

  var isLoading = true.obs;

  @override
  void onInit() {
    calliImageMethod();
    super.onInit();
  }

  calliImageMethod() async {
    print("hello");


  try {
      isLoading.value = true;
      var result = await apiFetch.fetchImage();
      if (result != null) {
        imageGrid.addAll(result);
      } else {
        print("null");
      }
    } finally {
      isLoading.value = false;
    }
    update();
  }
}