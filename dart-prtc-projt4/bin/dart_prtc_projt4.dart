// old practice
// void main(List<String> arguments) {
//   List<Map> studentsRecord = [
//     {
//       "Name": "BBA Morning",
//       "StudentsAgeList": [22, 33, 44, 12, 13, 25, 27]
//     },
//     {
//       "Name": "MBA Morning",
//       "StudentsAgeList": [22.5, 19, 24, 32, 23, 26, 27.5]
//     },
//     {"Name": "MBA Evening", "StudentsAgeList": []}
//   ];
//   getAllAverage(studentsRecord);
// }
//
// void getAllAverage(List<Map> records) {
//   records.forEach((element) {
//     double averageAgeStudents = getAverageAge(element["StudentsAgeList"]);
//     print("The Average Age in ${element["Name"]} is $averageAgeStudents ");
//   });
// }
//
// double getAverageAge(List<dynamic> ageList) {
//   if (ageList.length == 0) {
//     return 0;
//   }
//   double totalAge = 0;
//   ageList.forEach((element) {
//     totalAge += element;
//   });
//   return double.parse((totalAge / ageList.length).toStringAsFixed(2));

// }

// New Practice 30 Videos to 40
//  Laxical Scop

// String toplevel = "Top Level Variable";
// void main()
// {
//
//   String insidemain = "inside main function variable ";
//   void myfunction()
//   {
//     String insidemyfunction = "insidemyfunction variable";
//     void nestedmyfunction()
//     {
//       String nestedFunction = "inside nested function variable ";
//       print(insidemain);
//       print(insidemyfunction);
//       print(nestedFunction);
//       print(toplevel);
//
//     }
//     nestedmyfunction();
//   }
// myfunction();
//
// }

// anonymous function

// void main(){
// (){
//   print("I Am Adnan");
// }();
//
// final myName = (String name)
// {
//   print("My NAme Is $name");
// };
// myName("Adnan ");

// Function As first class object

//
// List names = ["Adnan","Zeeshan"];
// names.forEach((element) {
//   print(element);
// });

// final printmasg = (Function myfunction){
//   myfunction();
// };
//
// printmasg((){
//   print("My name Is Adnan");
//
// });

// typedef MessageFunction = String Function(String);
// void main() {
//   final getmsg = (String name) => "Hello $name";
//   final printmasg = (MessageFunction greetings, String name) {
//     String messageReceived = greetings(name);
//     print(messageReceived);
//   };
//   print(getmsg, 'Adnan');
//   print(getmsg, 'adnan');
//
//
// }

// Clasess

// void main() {
//   Classname myclasses = Classname();
//   print(myclasses.age);
//   print(myclasses.name);
//
// }
//
// class Classname {
// String name = "Adnan";
// int age = 20;
//
// }

// MyCar carclases = MyCar("Red");
// MyCar carclases2 = MyCar("Black");
// carclases2.color;
// print(carclases2.color);
// carclases.printMasg();
// carclases.increaseprice(400000);
// carclases.printcarcolor();
// print(carclases.color);
// print(carclases.price);
// print(carclases.wheels);
// }
// // clasess
//
// class MyCar {
//   String? color;
//   int wheels =4 ;
//   int price = 20000;
//
//
//   MyCar(String color){
//     this.color = color;
//   }
//
//   void printMasg(){
//     print("Hi From MyCar Class");
//   }
//
//   void printcarcolor(){
//     print("The Car Color is $color");
//   }
//
//   void increaseprice(int value){
//     price += value;
//
//   }
//
//
// }

// late keyword practice

// class Car {
// late int price;
// }
//
// void main() {
//   Car myClass = Car();
//    myClass.price =2000;
//    print(myClass.price);
//
//    Sample mysample = Sample();
//    mysample.templ();
//
//
// }
//
//
// class Sample {
//   late int price1 =templ();
//
//   int templ(){
//     print("Hello World");
//     return price1 =5;
//   }
// }

// Exercise of class and constructor and function

// class Bankaccount {
//   int Balance;
//   String title;
//
//   Bankaccount({required this.title, this.Balance = 0});
//
//   List<int> transactions = [];
//
//   bool deposit(int amount) {
//     Balance += amount;
//     transactions.add(amount);
//     return true;
//   }
//
//   bool withdraw(int amount) {
//     if (Balance > amount) {
//       Balance -= amount;
//       transactions.add(-amount);
//       return true;
//     }
//     return false;
//   }
//
//   void printTransaction() {
//     if (transactions.isEmpty) {
//       print("No Transaction Found");
//     } else {
//       transactions.forEach((transaction) {
//         print(transaction);
//       });
//       print("End Of Transactions");
//     }
//   }
//
//   String getTitle() => title;
//   int getBalance() => Balance;
// }
//
// void main() {
//   Bankaccount mybankAccount = Bankaccount(title: "Adnan");
//   print("The Title Of My Bank Account is ${mybankAccount.getTitle()}");
//   print("The initial bank Balance is ${mybankAccount.getBalance()}");
//
//   mybankAccount.printTransaction();
//   mybankAccount.deposit(2000);
//   mybankAccount.withdraw(1500);
//   mybankAccount.deposit(100);
//   print(mybankAccount.getBalance());
//   mybankAccount.printTransaction();
// }

// class Person {
//   Person({this.firstName,this.lastName});
//   String? firstName;
//   String? lastName;
//
//   void set fullName(String fullName){
//     final splittedName = fullName.trim().split("");
//     this.firstName = splittedName.removeAt(3);
//     this.lastName = splittedName.join("");
//   }
//
//   String get fullName => "${firstName} ${lastName}";
// }
//
// void main(){
//   Person me =Person(firstName: "Muhammad ",lastName: "Adnan");
//
//   print(me.fullName);
//   me.fullName = "Muhammad Zeeshan";
//   print(me.firstName);
//   print(me.lastName);
//   print(me.fullName);
//   print("My Name Is ${me.firstName} ${me.lastName}");
// }

//
//
// class BankAccount{
//   int balance;
// final  String title;
// int dollarRate =160;
//   BankAccount({this.balance = 0,required this.title});
//
//
//   bool deposit(int amount){
//     balance += amount;
//     return true;
//   }
//
//   bool withdraw(int amount){
//    if(balance > amount){
//      balance -= amount;
//      return true;
//    }
//    return false;
//   }
//
//   void set dollarDeposit(int dollaramount){
//     balance += dollaramount*dollarRate;
//   }
//   void set dollarwithdraw(int dollaramount){
//     final PakRs = dollaramount * dollarRate;
//     if(balance > PakRs){
//       balance -= PakRs;
//     }else{
//       print("Insufficient Balance");
//     }
//   }
//   double get balanceinDollar => balance / dollarRate;
// }
//
// void main(){
//   BankAccount mybankAccount = BankAccount(title: 'Adnan');
//   print("Title is ${mybankAccount.title}");
//   print("Initial balance is ${mybankAccount.balance}");
//   mybankAccount.dollarDeposit = 1000;
//   mybankAccount.dollarwithdraw = 220;
//
//   print("balance in dollar after transactions  \$ ${mybankAccount.balance}");
// }

// class BankNames {
//   static const String meezan = "Meezan Bank";
//   static const String ubl = "UBL Bank";
//   static const String hbl = "Habib Bank";
//
//   static void greetmessage(String name, String bankname) {
//     print("Welcom $name at the $bankname ");
//   }
// }
//  void main(){
//
//    print(BankNames.meezan);
//    print(BankNames.ubl);
//    print(BankNames.hbl);
//    BankNames.greetmessage("Adnan", BankNames.ubl);
//  }

// class private members pravtice

// class Bank {
//   Bank({required this.title, this.balance = 0});
//
//   late final String title;
//   int balance;
//
//   void deposit(int amount){
//     balance += amount;
//   }
//
//   void withdraw (int amount){
//     if(balance > amount){
//       balance -= amount;
//     }
//   }
//   int getbalance(){
//     return balance;
//   }
//
// }

// import 'bank.dart';

// void main(){
//   // Bank myaccount = Bank(title: "Amir",);
//   // myaccount.deposit(100);
//   // print(myaccount.currentbalance);
//   // // myaccount.deposit(100);
//   // // myaccount.currentbalance = 50;
//   // myaccount.deposit(500*300);
//   // print("The Current bank balance is ${myaccount.currentbalance}");
// }

// void main(){
//   Students students = Students();
//   students.id = "1";
//   print(students.id);
//   students.name = "Adnan";
//   students.fee = 1000;
//   print(students.name);
//   students.greet();
//   print(students.fee);
//
//   Teacher teacher = Teacher();
//   teacher.id = "2";
//   print(teacher.id);
//   teacher.name = "Amir";
//   print(teacher.name);
//   teacher.salary = 20000;
//   print(teacher.salary);
//   teacher.greet();
// }

//
// void main(){
//   Students student = Students(fee: 1000, name: "Adnan", id: "1");
//   print(student.id);
//   student.greet();
//   print(student.fee);
//
//
//   Teacher teacher = Teacher(salary: 20000, name: "Amir", id: 2);
//   print(teacher.id);
//   teacher.greet();
//   print(teacher.salary);
//
// }
//
// void main() {
//   Students student = Students(fee: 1000, name: "Adnan", id: "1");
//   student.greet();
//
//   Teacher teacher = Teacher(salary: 20000, name: "Amir", id: "2");
//   teacher.greet();
// }
//
// abstract class Person {
//   Person({required this.id, this.name});
//   String? id;
//   String? name;
//
//   greet() ;
// }
//
// class Students extends Person {
//   Students({required this.fee, required name, required id})
//       : super(id: id, name: name);
//   int? fee;
//
//   @override
//   greet() {
//     print("Hello $name your student id is $id and your fee is $fee");
//   }
// }
//
// class Teacher extends Person {
//   Teacher({required this.salary, required name, required id})
//       : super(id: id, name: name);
//   int? salary;
//
//   @override
//   greet() {
//     print("Hello $name your employee id is $id and your salary is $salary");
//   }
// }
