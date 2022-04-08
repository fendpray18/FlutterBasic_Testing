import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class UserSeePageOne extends Given1WithWorld<String, FlutterWorld> {
  UserSeePageOne()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getTitlePageOne(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I see page one as {string}");
}

class ClickPageTwo extends WhenWithWorld<FlutterWorld> {
  ClickPageTwo()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickPageTwo();
  }

  @override
  RegExp get pattern => RegExp(r"I click the pagetwo button");
}

class UserSeePageTwo extends Then1WithWorld<String, FlutterWorld> {
  UserSeePageTwo()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getTitlePageTwo(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I see page two as {string}");
}
