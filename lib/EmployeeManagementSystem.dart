void main() {
  FullTimeEmployee Alice = FullTimeEmployee('Alice', 'Engineering', 10000);
  FullTimeEmployee Charlie = FullTimeEmployee('Charlie', 'HR', 8000);
  PartTimeEmployee Bob = PartTimeEmployee('Bob', 'Engineering', 9, 500);
  PartTimeEmployee Diana = PartTimeEmployee('Diana', 'HR', 7, 1000);

  List mixedEmployees = [Alice, Bob, Charlie, Diana];
  for (var i in mixedEmployees) {
    print('${i.name} from ${i.department} earns \$${i.getMonthlySalaryy}');
  }
  print('==============================================================');
  Map employeesmap = {};
  for (var i in mixedEmployees) {
    employeesmap.addAll({
      'name': i.name,
      'department': i.department,
      'salary': i.getMonthlySalaryy
    });
  }
  print(employeesmap);
}

abstract class employees {
  String? name;
  String? department;
  employees(this.name, this.department);
}

class FullTimeEmployee extends employees {
  int? fixedSalary;
  FullTimeEmployee(super.name, super.department, this.fixedSalary);

  int get getMonthlySalaryy => fixedSalary!;
}

class PartTimeEmployee extends employees {
  int? hoursWorked;
  int? workHourPrice;

  PartTimeEmployee(
      super.name, super.department, this.hoursWorked, this.workHourPrice);
  int get getMonthlySalaryy {
    int monthlySalary = this.hoursWorked! * this.workHourPrice!;
    return monthlySalary;
  }
}
