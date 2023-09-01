import 'accountant.dart';
import 'employee.dart';
import 'manager.dart';
import 'team.dart';

class Company {
  String name;
  String address;
  String phone;
  int account;
  Manager manager;
  Accountant accountant;
  List<Team> listOfTeames = [];
  List<Employee> listOfemployee = [];

  Company({
    required this.name,
    required this.address,
    required this.phone,
    required this.account,
    required this.manager,
    required this.accountant,
    required this.listOfTeames,
    required this.listOfemployee,
  });

  bool isEmployeeExist(Employee emp) {
    if (listOfemployee.contains(emp)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return '''
    name : $name
    address : $address
    phone : $phone
    account : $account
    manager : ${manager.name}
    accountant : ${accountant.name}
    ''';
  }
}
