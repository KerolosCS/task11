import 'company.dart';
import 'employee.dart';

class Accountant extends Employee {
  Accountant(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsdone,
    required super.hoursWork,
  });

  void calculateSalary(Employee emp, Company comp) {
    if (comp.listOfemployee.contains(emp)) {
      if (emp.hoursWork == 200) {
        print(emp.hoursWork * emp.salary);
      } else if (emp.hoursWork >= 200) {
        print((emp.hoursWork - 200) * (1.1 * emp.salary) +
            emp.hoursWork * emp.salary);
      } else {
        print((emp.hoursWork * emp.salary) -
            (200 - emp.hoursWork) * (1.1 * emp.salary));
      }
    } else {
      print('Error');
    }
  }

  void sendSalary(Employee emp) {
    emp.takeSalaryIsdone = true;
  }

  void addBonusEmployee(
    int bonus,
    Employee emp,
    Company comp,
  ) {
    emp.setSalaryForEmployee(emp.salary + bonus);
  }

  void minusFromEmployee(
    int minus,
    Employee emp,
    Company comp,
  ) {
    emp.setSalaryForEmployee(emp.salary - minus);
  }

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? e,
    Accountant? a,
    Company? c,
  }) {
    if (id == c?.accountant.id && c!.listOfemployee.contains(e)) {
      super.setSalaryForEmployee(newSalary, e: e);
      print("set salary successfully");
    } else {
      print('you Are not manager of ${c?.name} company ');
    }
  }
}
