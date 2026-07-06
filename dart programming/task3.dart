import 'dart:io';
class Employee {
  String employeeId = "";
  String employeeName = "";
  String department = "";
  void displayEmployeeInfo() {
    print("\nEmployee ID : $employeeId");
    print("Employee Name : $employeeName");
    print("Department : $department");
  }
}
class Salary extends Employee {
  double basicSalary = 0;
  double hra = 0;
  double da = 0;
  double bonus = 0;
  double grossSalary = 0;
  double tax = 0;
  double netSalary = 0;
  double calculateGrossSalary() {
    grossSalary = basicSalary + hra + da + bonus;
    return grossSalary;
  }
  double calculateTax() {
    if (grossSalary > 80000) {
      tax = grossSalary * 0.20;
    } else if (grossSalary > 50000) {
      tax = grossSalary * 0.10;
    } else {
      tax = 0;
    }
    return tax;
  }
  double calculateNetSalary() {
    netSalary = grossSalary - tax;
    return netSalary;
  }
  void displaySalarySlip() {
    displayEmployeeInfo();
    print("\nBasic Salary : ₹$basicSalary");
    print("HRA          : ₹$hra");
    print("DA           : ₹$da");
    print("Bonus        : ₹$bonus");
    print("\nGross Salary : ₹$grossSalary");
    print("Tax          : ₹$tax");
    print("Net Salary   : ₹$netSalary");
  }
}
class Manager extends Salary {
  double performanceIncentive = 0;
  @override
  double calculateGrossSalary() {
    grossSalary =
        basicSalary + hra + da + bonus + performanceIncentive;
    return grossSalary;
  }
  @override
  void displaySalarySlip() {
    displayEmployeeInfo();
    print("\nBasic Salary          : ₹$basicSalary");
    print("HRA                   : ₹$hra");
    print("DA                    : ₹$da");
    print("Bonus                 : ₹$bonus");
    print("Performance Incentive : ₹$performanceIncentive");

    print("\nGross Salary : ₹$grossSalary");
    print("Tax          : ₹$tax");
    print("Net Salary   : ₹$netSalary");
  }
}

void main() {
  Manager manager = Manager();
  print("Enter Employee ID:");
  manager.employeeId = stdin.readLineSync()!;
  print("Enter Employee Name:");
  manager.employeeName = stdin.readLineSync()!;
  print("Enter Department:");
  manager.department = stdin.readLineSync()!;
  print("Enter Basic Salary:");
  manager.basicSalary = double.parse(stdin.readLineSync()!);
  print("Enter HRA:");
  manager.hra = double.parse(stdin.readLineSync()!);
  print("Enter DA:");
  manager.da = double.parse(stdin.readLineSync()!);
  print("Enter Bonus:");
  manager.bonus = double.parse(stdin.readLineSync()!);
  print("Enter Performance Incentive:");
  manager.performanceIncentive =
      double.parse(stdin.readLineSync()!);
  manager.calculateGrossSalary();
  manager.calculateTax();
  manager.calculateNetSalary();
  manager.displaySalarySlip();
}