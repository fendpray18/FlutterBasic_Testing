import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  final txtCounter = find.byValueKey('counter');
  final titlePageOne = find.text("Counter App Home Page");
  final btnPageTwo = find.byType('TextButton');
  final btnIncrement = find.byTooltip('Increment');
  final titlePageTwo = find.text("Page 2");

  FlutterDriver _driver;

  //Constructor
  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<String> getCounterValue() async {
    return await _driver.getText(txtCounter);
  }

  Future<String> getTitlePageOne() async {
    return await _driver.getText(titlePageOne);
  }

  Future<String> getTitlePageTwo() async {
    return await _driver.getText(titlePageTwo);
  }

  Future<void> clickBtnPlus() async {
    return await _driver.tap(btnIncrement);
  }

  Future<void> clickPageTwo() async {
    return _driver.tap(btnPageTwo);
  }
}
