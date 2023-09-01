import 'accountant.dart';
import 'company.dart';
import 'employee.dart';

class FlutterDeveloper extends Employee {
  bool canUseBloc;
  bool canUseFireBase;
  bool canUseCleanArc;
  FlutterDeveloper(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsdone,
    required super.hoursWork,
    required this.canUseBloc,
    required this.canUseFireBase,
    required this.canUseCleanArc,
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
    canUseBloc : $canUseBloc
    canUseFireBase : $canUseFireBase
    canUseCleanArc : $canUseCleanArc
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
