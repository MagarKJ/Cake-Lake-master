import 'package:cakelake/homepage/products/products_list.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //It extends GetxController, indicating that it will be used for managing the state in the application using GetX.
  RxList<Product> cartItems = <Product>[].obs;
  //RxList is a reactive list provided by GetX. It's declared as a list of Product objects. The obs extension makes it observable, meaning that changes to this list will automatically trigger updates in the user interface.

  void addToCart(Product product, int quantity) {
    for (int i = 0; i < quantity; i++) {
      cartItems.add(product);
    }
    update();

    // Trigger a rebuild to reflect the changes
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
    // Trigger a rebuild to reflect the changes
  }
}
