import 'accountant.dart';
import 'company.dart';
import 'employee.dart';

class Manager extends Employee {
  Manager(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsdone,
    required super.hoursWork,
  });

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? e,
    Accountant? a,
    Company? c,
  }) {
    if (id == c?.manager.id && c!.listOfemployee.contains(e)) {
      // e?.setSalaryForEmployee(newSalary);
      super.setSalaryForEmployee(newSalary, e: e);
      print("set salary successfully");
    } else {
      print('you Are not manager of ${c?.name} company ');
    }
  }
}
