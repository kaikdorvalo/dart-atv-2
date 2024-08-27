import 'package:atv2/atv2.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('should be change use state house color', () {
    House house = House('87950000', 'green');

    UseState stateHouse = UseState<House>(house);
    stateHouse.setValue(House(house.cep, 'blue'));

    expect(house.color, "green");
    expect(stateHouse.value.color, "blue");
  });

  test('should be change use state house cep', () {
    House house = House('87950000', 'green');

    UseState stateHouse = UseState<House>(house);
    stateHouse.setValue(House("22", house.color));

    expect(house.cep, "87950000");
    expect(stateHouse.value.cep, "22");
  });
}
