#include <iostream>

using namespace std;

int main(){
    int a = 5,b = 4,*aX = &a,*bX = &b;
    int out, *pOut = &out;
    *aX - *bX = pOut;
    cout << *pOut << endl;

//Dynamic Memory Allocation:
//New:
    int *p = nullptr;
    p = new int;
    *p =5;
//Delete:
    delete p; 
    p = nullptr; 
//If there is a new there has to be a delete

//Download Valgrind

int *p;
p = new int[5];
p[0] = 1;
p[1] = 2;
delete []p;

//ex from assignment 1:
/*
    int main(){
        card**cards;
        cards = new *Card;
        *cards = new Cards(..........);
    }
    //ex from 2
    ITem *slots[5];

    slots[0] = newItem(...);
    slots[1] = newItem(...);


    //swaping two pointers
    Item *temp
    temp = slot[1]
    slots[1] = slots[0]
    slots[0] = temp;


    assignment 2 !!!!!!!!!!!!!!!!!!!!!!!!!!!
    deallocate each and every slot.
    A defined constructor can only be used once in a class
    Null pointers in remove item

    you can have a pointer and/or static cast to a superclass/bassclass but can not do same for subclasses. 

                cast
    Parent class => Subclass
    subclass => Parent()
    Subclass x=>x subclass 


    card *pile;
    pie = new Card[10]

    //this is better as its stores less space
    Card **pile;
    Pile = new*Card[10];
    for(........){
        pile[1] = null ptr
    }



    Snack *x[5]
    for(........){
        delete x[1];
        x[i]=nullptr;
    }

    delete x[2]
    x[2] = nullptr
    Seg Fault:
     if you access trach
*/


// One dimensional array
int *y;
y = new int[5];
delete[] y;

//Allocation. 
int **x;
x = new int*[3];
for(int i = 0; i < 3; i++){
    *(x+i) = new int[2];
}

**x=1;
*((*x) +1) = 2;
x[0][2] = 3;
x[1][0] = 4;


//Deallocation 
for(int i=0; i < 3; i++){
    delete[] *(x+1);
}
delete[] x; 


return 0;
}

int **arr;
arr = new int*[3]; //3 big blocks
for(int i = 0; i < 3; i++){
    arr[i] = new int[5]; // divided into 5
}//3 pointers pointing to 3 array's with 5 int's
arr[1][3]


for(){ delete[] contents;
contents[i] =nullptr;

}