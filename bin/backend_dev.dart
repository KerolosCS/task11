import 'accountant.dart';
import 'company.dart';
import 'employee.dart';

class BackendDevelover extends Employee {
  bool canUseExpressJs;
  bool canUseDjango;
  bool canUseLaravel;
  BackendDevelover(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsdone,
    required super.hoursWork,
    required this.canUseExpressJs,
    required this.canUseDjango,
    required this.canUseLaravel,
  });

  @override
  String toString() {
    return '''
    Id: $id
    salary : $salary
    address : $address
    age : $age
    name : $name
    phone : $phone
    takeSalaryIsdone : $takeSalaryIsdone
    hoursWork : $hoursWork
    canUseExpressJs : $canUseExpressJs
    canUseDjango : $canUseDjango
    canUseLaravel : $canUseLaravel
    ''';
  }
  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? e,
    Accountant? a,
    Company? c,
  }) {
    print('Can not change salary');
  }
}
