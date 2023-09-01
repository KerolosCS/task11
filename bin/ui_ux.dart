import 'accountant.dart';
import 'company.dart';
import 'employee.dart';

class UiUXDevelober extends Employee {
  bool canUseFigma;
  bool canUseAdopeXd;
  UiUXDevelober(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsdone,
    required super.hoursWork,
    required this.canUseFigma,
    required this.canUseAdopeXd,
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
    canUseFigma : $canUseFigma 
    canUseAdopeXd : $canUseAdopeXd
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
