
import 'package:get/get.dart';

class FavorateclassController extends GetxController {

    RxList<String> fruitList = ["Orange","Banana","Mango","Apple"].obs;
    RxList temFruitList = [].obs;

    addToFavorate(String value){
      temFruitList.add(value);

    }

    removeFromFavorate(String value){
      temFruitList.remove(value);

    }
}