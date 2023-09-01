// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'accountant.dart';
import 'company.dart';
import 'person.dart';

abstract class Employee implements Person {
  @override
  String? address;

  @override
  int? age;

  @override
  String? name;

  @override
  String? phone;

  String _id;

  int _salary;

  bool takeSalaryIsdone;
  int hoursWork;
  Employee(
    this._id,
    this._salary, {
    required this.address,
    required this.age,
    required this.name,
    required this.phone,
    required this.takeSalaryIsdone,
    required this.hoursWork,
  });

  @override
  int get salary => _salary;
  @override
  String get id => _id;
  void setSalaryForEmployee(
    int newSalary, {
    Employee? e,
    Accountant? a,
    Company? c,
  }) {
    if (e != null) {
      e._salary = newSalary;
    }
    _salary = newSalary;
  }
}
