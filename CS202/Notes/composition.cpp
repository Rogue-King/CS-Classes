#include <iostream>

using namespace std;

/*
    //Inheritance (is a)
    Class A{
        
    }
    Class B : public A{

    }


    //Composition (has a) -  Also called aggregation
    Class A {

    }
    Class B {
        A obj; 
    }

    UML Diagram 

    Inheritance is open arrow from child to parent
    * D is a child of class C
    *D is a C

    Composition(aggregation) is a closed/filled in arrow
    *B has a A (B has a object of class A)

    EX: Deck has card 
    attributes of card are inherited by card.

    you can assign a variable like this 
    Int b(6);
    

    Assignment 2 notes:

    Const is used to protect data from being modified- setters and print functions.  


    copy constructor: Card(const Card &obj)


    Card a;
    d.drawTopCard() - this is nowand object
    Card.showcard();

    d.drawTopCard().showcard();

    Binding:
    Early Binding -> compile time (default behavior)
    late Binding -> Runtime

    Virtual function(constructor): bound at run time. 
    virtual void showCard() 

    A polymorphic class must be inherited

    Show player function has biggest need for virtual, already implemented


    Pure virtual function:
    virtual void printItem const() = 0;


    Stack overflow:
    First in last out.

    Player has inventory, inventory has item.

    when testing, test item first 
    then its inherited members.
    then inventory 
    then Player
    then useItem() Last    
    
    for(....){
        if(slot[i]!=nullptr){
            delete slot[i];
        }
    }



    Copy Constructor:
    Class A {
        int x; {setter/getter}
        char y; 
    }

    Public
     A();
     A(Const A &obj);
    }
    A::A(const A > obj)
    this -> x = x; //calling obj (this)
    this -> y = y;

    int main(){
        A obj 1;
        obj1.setx(5);
        obj1.sety('a');
        A obj2(obj1);
         |calling obj|-obj2
        |param| - obj1

        A obj2 = obj1; //Initialization
        A obj3;
        obj3 = obj1 //Assignment


    }



*/