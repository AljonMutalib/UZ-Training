int age = 18;
double price = 10.5;

String name = 'Aljon';

num numbers = 10;

bool isTrue = true;

List<int> intList = [1,2,3,4,5];

List<String> stringList = ['Aljon','Mutalib'];

Map<String, int> peopleAges = {
  "Joshua": 24,
  "Josh": 25,
  "Ace": 26,
};


void main(){
  
  print('Map: $peopleAges');
  
  int grade = 76;
  
  if(grade >= 75){
    print('Passed');
  }else{
    print('Failed');
  }
  
  if(grade >= 75 && grade <= 79){
    print('Good');
  }else if(grade>= 80 && grade <= 89){
    print('Average');
  }else if(grade >= 90 && grade <= 100){
    print('Excellent');
  }else{
    print('Failed');
  }
  
  if(grade == 75 || grade > 75){
    print('Using OR Operator : Passed');
  }else{
    print('Using OR Operator : Failed');
  }
  
  //Foor Loop
  for(int x= 0; x < 5; x++){
    print('Using Foor Loop : $x');
  }
  
  //ForEach
  var counterx = ['Aljon','Mutalib','Test'];
  for(var ctx in counterx){
	  print('Using ForEach : $ctx');
  }
  
  //while Loop
  var ctr = 1;
  var maxCtr = 10;
  while(ctr<=maxCtr){
    print('Using While Loop: $ctr');
    ctr = ctr+1;
  }
  
  // 1 out of 5 is the highest
  int gpa = 1;
  switch (gpa) {
    case 4:
      print("Home Page");
      break;
    case 3:
      print("News Page");
      break;
    case 2:
      print("Profile Page");
      break;
    case 1:
      print("Login Page");
      break;
    default:
      print("Something went wrong");
  }
}
