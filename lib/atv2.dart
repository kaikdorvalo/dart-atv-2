import 'dart:math';

int calculate() {
  return 6 * 7;
}

class UseState<T> {
  T value;

  void setValue(T value) {
    this.value = value;
  }

  UseState(this.value);
}

class Car {
  int price;
  String name;

  Car(this.price, this.name);
}

class House {
  String? cep;
  String? color;

  House(this.cep, this.color);
}

void main() {
  UseState house = UseState(House('87950000', 'green'));
  String color = "";

  var random = Random();
  int number = random.nextInt(100);

  if (number < 50) {
    color = "blue";
  } else {
    color = "black";
  }

  house.setValue(House(house.value.cep, color));

  print(house.value.cep);
  print("The house is: ${house.value.color}");
}
