import 'dart:io';

import 'accountant.dart';
import 'company.dart';
import 'flutter_dec.dart';
import 'manager.dart';
import 'project.dart';
import 'team.dart';

void main(List<String> args) {
  FlutterDeveloper flutterDev = FlutterDeveloper(
    '20201700614',
    100,
    address: 'address',
    age: 21,
    name: 'kerolos',
    phone: '01227447196',
    takeSalaryIsdone: false,
    hoursWork: 201,
    canUseBloc: true,
    canUseFireBase: true,
    canUseCleanArc: true,
  );
  FlutterDeveloper flutterDev2 = FlutterDeveloper(
    '20201700614',
    100,
    address: 'address',
    age: 21,
    name: 'kerolos',
    phone: '01227447196',
    takeSalaryIsdone: false,
    hoursWork: 201,
    canUseBloc: true,
    canUseFireBase: true,
    canUseCleanArc: true,
  );

  Manager manager = Manager(
    '2020',
    100,
    address: 'address',
    age: 40,
    name: 'manager1',
    phone: '012',
    takeSalaryIsdone: true,
    hoursWork: 200,
  );
  Manager teamLeader = Manager(
    '20201',
    101,
    address: 'addressLeader',
    age: 40,
    name: 'manager11',
    phone: '0121',
    takeSalaryIsdone: true,
    hoursWork: 201,
  );
  Accountant accountant = Accountant(
    '600',
    340,
    address: 'address',
    age: 30,
    name: 'Accountant1',
    phone: '011',
    takeSalaryIsdone: true,
    hoursWork: 199,
  );
  Project eCommerce = Project(
    title: 'E',
    price: 2000,
    receivingDate: DateTime.now(),
    deadline: DateTime(2023, 9, 7, 17, 30),
  );
  Project eCommerce2 = Project(
    title: 'E',
    price: 2000,
    receivingDate: DateTime.now(),
    deadline: DateTime(2023, 9, 7, 17, 30),
  );
  Team team = Team(
    teamName: 'Instant',
    teamLeader: teamLeader,
    flutterGroup: [flutterDev],
    backendGroup: [],
    uiUxGroup: [],
    allTeamDeveloper: [flutterDev],
    projects: [eCommerce],
  );
  Company company = Company(
      name: 'instant',
      address: 'el dokki',
      phone: '00000789',
      account: 2,
      manager: manager,
      accountant: accountant,
      listOfTeames: [],
      listOfemployee: [flutterDev]);

  sentanceDraw('salary before add');
  print(flutterDev.salary);
  sentanceDraw("manager change salary");
  manager.setSalaryForEmployee(
    200,
    e: flutterDev,
    c: company,
  );
  print(flutterDev.salary);
  sentanceDraw("Accountant change salary");
  accountant.setSalaryForEmployee(
    260,
    e: flutterDev,
    c: company,
  );
  print(flutterDev.salary);

  sentanceDraw("User try to change his salary");
  flutterDev.setSalaryForEmployee(50);
  print(flutterDev.salary);
  sentanceDraw("Check if company has employee or not");
  print(company.isEmployeeExist(flutterDev));

  sentanceDraw("info of company");
  print(company.toString());

  sentanceDraw('TEST TEAM CLASSSSS');

  team.getAllProjects();
  sentanceDraw('****************************');
  team.showNameAllDevelopers();
  sentanceDraw('****************************');
  team.showNamesFlutterDevelopers();
  sentanceDraw('****************************');
  team.showNamesBackendDevelopers();
  sentanceDraw('****************************');
  team.showNamesUiUxDevelopers();
  sentanceDraw('****************************');
  team.addProject(eCommerce, teamLeader.id);
  sentanceDraw('****************************');
  team.addEmployeeToTeam(flutterDev2);
  sentanceDraw('****************************');
  team.removeEmployeeFromTeam(flutterDev2);
  sentanceDraw('****************************');
  team.groupBackendFinished(eCommerce, teamLeader.id);
  // sentanceDraw('****************************');
  team.groupBackendFinished(eCommerce2, teamLeader.id);
  // sentanceDraw('****************************');
  sentanceDraw('ProjectTESTTTTTT');
  print(eCommerce.toString());
}

void sentanceDraw(String s) {
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('\n| $s |');
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('');
}
