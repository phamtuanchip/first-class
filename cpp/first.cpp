// my second program in C++
#include <iostream>
#include <string>
#include <sstream>
//#include <array>
using namespace std;
#define PI 3.14159
#define NEWLINE '\n'


template <class T, class U>
bool are_equal (T a, U b)
{
  return (a==b);
}
template <class T, int N>
T fixed_multiply (T val)
{
  return val * N;
}
namespace foo
{
  int value() { return 5; }
}

namespace bar
{
  const double pi = 3.1416;
  double value() { return 2*pi; }
}

namespace first
{
  int x = 5;
  int y = 10;
}

namespace second
{
  double x = 3.1416;
  double y = 2.7183;
}

void increase (void* data, int psize)
{
  if ( psize == sizeof(char) )
  { char* pchar; pchar=(char*)data; ++(*pchar); }
  else if (psize == sizeof(int) )
  { int* pint; pint=(int*)data; ++(*pint); }
}

int main ()
{
  cout << "Hello World! ";
  cout << "I'm a C++ program";
  cout << "\n";
  int a;
  int b(3);    
  int result;

  // process:
  a = 5;
  b = 2;
  a = a + 1;
  result = a - b;

  // print out the result:
  cout << result;

  
  a=5;               // initial value: 5
           // initial value: 3
  int c(2);              // initial value: 2
  

  a = a + b;
  result = a - c;
   cout << "\n";
  cout << result << endl; //endl == "\n"

  double r=5.0;               // radius
  double circle;
  const double pi = 3.1415926;
  const char tab = '\t';
  const char newline = '\n';
	
  circle = 2 * pi * r;
  cout << circle;
  cout << newline;
  
  string mystring;
  cin >> mystring;
  cout << "you tiped: " << mystring << endl;
  int i;
  cout << "Please enter an integer value: ";
  cin >>i;
  
  cout << "The value you entered is : " << i;
  cout << " and its double is : " << i*2 << ".\n";
 
  string mystr;
  float price=0;
  int quantity=0;

  cout << "Enter price: ";
  getline (cin,mystr);
  stringstream(mystr) >> price;
  cout << "Enter quantity: ";
  getline (cin,mystr);
  stringstream(mystr) >> quantity;
  cout << "Total price: " << price*quantity << endl;
  
   if (are_equal(10,10.0))
    cout << "x and y are equal\n";
  else
    cout << "x and y are not equal\n";
  
  std::cout << fixed_multiply<int,2>(10) << '\n';
  std::cout << fixed_multiply<int,3>(10) << '\n';
  
  cout << foo::value() << '\n';
  cout << bar::value() << '\n';
  cout << bar::pi << '\n';
  
  using first::x;
  using second::y;
  cout << x << '\n';
  cout << y << '\n';
  cout << first::y << '\n';
  cout << second::x << '\n';
  
  int myarray[3] = {10,20,30};

  for (int i=0; i<3; ++i){
    ++myarray[i];
  }  

  for (int i=0; i<3; ++i) {
    cout << myarray[i] << '\n';
  }
  
  //array<int,3> myarray2 {10,20,30};

  //for (int i=0; i<myarray2.size(); ++i)
    //++myarray2[i];

  //for (int i=0; i<myarray2.size(); ++i)
   // cout << myarray2[i] << '\n';
   int firstvalue = 5, secondvalue = 15;
  int * p1, * p2;

  p1 = &firstvalue;  // p1 = address of firstvalue
  p2 = &secondvalue; // p2 = address of secondvalue
  *p1 = 10;          // value pointed to by p1 = 10
  *p2 = *p1;         // value pointed to by p2 = value pointed by p1
  p1 = p2;           // p1 = p2 (value of pointer is copied)
  *p1 = 20;          // value pointed by p1 = 20
  
  cout << "firstvalue is " << firstvalue << '\n';
  cout << "secondvalue is " << secondvalue << '\n';
  
  char a = 'x';
  int b = 1602;
  increase (&a,sizeof(a));
  increase (&b,sizeof(b));
  cout << a << ", " << b << '\n';
  
  getchar();
  // terminate the program:
  return 0;
  
}
