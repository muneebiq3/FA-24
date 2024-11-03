class Person {
final String name;
int? age;
Person(this.name, {this.age});
set changeAge(int age){
  this.age = age;
}
String get getName => name;

}
void main(){
Person p =Person('Ahmed');

}