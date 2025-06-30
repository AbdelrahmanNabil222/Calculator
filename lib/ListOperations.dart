void main() {
  Fruits fru = Fruits();
  fru.addFruits(3, ['WaterrMelon', 'grapes']);
  fru.removeFruits('Orange');
  fru.checkIfExist('Apple');
  fru.numberofFruits();
}

class Fruits {
  List favFruits = ['Apple', 'Bananas', 'Orange', 'Strawberry'];

  //add fruits
  addFruits(int index, List addfru) {
    favFruits.insertAll(index, addfru);
    print(favFruits);
  }

  // remove fruits
  removeFruits(String removeFru) {
    favFruits.remove(removeFru);
    print(favFruits);
  }

  //check if exist
  checkIfExist(String check) {
    if (favFruits.contains(check)) {
      print('the fruit is exist');
    } else {
      print('the fruit not exist');
    }
  }

  numberofFruits() {
    print(favFruits.length);
  }
}
