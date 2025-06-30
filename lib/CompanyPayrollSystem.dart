void main() {
  FulltimeEmployee nooh = FulltimeEmployee(name: 'nooh', monthlySalary: 10000);
  FulltimeEmployee mosa =
      FulltimeEmployee.emp2(name: 'mosa', monthlySalary: 12000);
  //
  ParttimeEmployee said =
      ParttimeEmployee(namee: 'said', hourPrice: 300, workedHoursAtDay: 10);
  //
  Freelancer ayoub = Freelancer(
      name: 'ayoub', numOfTask: 3, everyTasksPrice: [1000, 2000, 2500]);
  Freelancer khaled = Freelancer(
      name: 'Kaled',
      numOfTask: 5,
      everyTasksPrice: [4000, 9000, 3000, 2000, 400]);
  //
  List employees = [nooh, mosa, said, ayoub, khaled];
  //
  for (var employeesInfo in employees) {
    print('The employee ${employeesInfo.name} :');
    print('${employeesInfo.name} earn \$${employeesInfo.getMonthlySalary}');
  }
  //get the largest salary
  getTheLargestSalary() {
    int thelargestSalary = employees[0].getMonthlySalary;
    String? name;
    for (var i in employees) {
      if (i.getMonthlySalary > thelargestSalary) {
        thelargestSalary = i.getMonthlySalary;
        name = i.name;
      }
    }
    return 'the Employee ${name} has the largest salary which is \$${thelargestSalary}';
  }

  print('==============================');
  print('the largest salary is :');
  print(getTheLargestSalary());
}

abstract class Employee {
  String? name;
  Employee({this.name});
}

class FulltimeEmployee extends Employee {
  int? monthlySalary;
  FulltimeEmployee({required super.name, required this.monthlySalary});
  FulltimeEmployee.emp2({
    required super.name,
    required this.monthlySalary,
  });

  int get getMonthlySalary => this.monthlySalary!;
}

class ParttimeEmployee extends Employee {
  int workedHoursAtDay;
  int hourPrice;

  ParttimeEmployee({
    required String? namee,
    required this.hourPrice,
    required this.workedHoursAtDay,
  }) : super(name: namee);
  int get getMonthlySalary {
    int monthlysalary = workedHoursAtDay * hourPrice * 30;
    return monthlysalary;
  }
}

class Freelancer extends Employee {
  int? numOfTask;
  List everyTasksPrice = [];
  Freelancer({
    required super.name,
    required this.numOfTask,
    required this.everyTasksPrice,
  });
  int get getMonthlySalary {
    dynamic salary = 0;
    for (var i in everyTasksPrice) {
      salary = salary + i;
    }
    return salary;
  }
}
