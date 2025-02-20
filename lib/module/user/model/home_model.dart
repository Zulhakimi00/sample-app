UserHomeModel userHomeModelFromJson(Map<String, dynamic> str) =>
    UserHomeModel.fromJson(str);

class UserHomeModel {
  List<Employee> employees;

  UserHomeModel({
    required this.employees,
  });

  factory UserHomeModel.fromJson(Map<String, dynamic> json) => UserHomeModel(
        employees: List<Employee>.from(
            json["employees"].map((x) => Employee.fromJson(x))),
      );
}

class Employee {
  String name;
  String email;

  Employee({
    required this.name,
    required this.email,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        name: json["name"],
        email: json["email"],
      );
}
