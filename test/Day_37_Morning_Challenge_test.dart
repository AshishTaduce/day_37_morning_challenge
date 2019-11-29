import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(maxWater([4,8,6,7,6,5]), 20);
    expect(maxWater([1,8,6,2,5,4,8,3,7]), 49);
  });
}
