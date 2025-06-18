/*
    Virtuals and vitrutal constructors

    Late binding => bound at runtime
    Early binding = > bound at compile time

    virtual void print()
            void print() -> compiler chooses this every time 


    pass by refrence will have refrence to the memory location of the object
    pass by value will take the value of its latest function


    Slicing Problem
    solution to the problem: use a pointer


    Shallow copy:

    int *a, *b;
    
    a = new int [3];
    b = a; deleted[a];

    Deep Copy:
    a = new int[3];
    b = new int[3];

    for(int i =0; i < 3;i++){
        b[i] = a[i];
    }


    if base destructor is virtual:
    dogType::~dogType()
        (down arrow)
    petType::~petType
    

Non Virtual:

    Base Class
        non-polymorphic
        ^doesnt have virtuals
    ^Derived class   
    base_ptr = derived_ptr 
        delete bass_ptr

    derived Class destructor -> bass destructor

    Base class is parent 
    derived class is child 

    Polymorphic = one or more virtuals(assume destructor is not virtual)
    
Virtual:

    Bass Class 
        ^
    Derived Class 
    base_pt = derived_ptr
        delete base_ptr
    
    Base destructor is called

    arrow to if base destructor is virtual 




    base{
        virtual void func1();
        vitrual ~base(){};
    };

    derived{
        void func1();
        ~derived() {};
    };


    base *b;
    derived *d;

    d= new derived;
    b = d;
    b-> func1(); (dervied class function)
    delete b;

*/


/*
    Abstract Classes:

    Class A{
        public:
            &virtual& func1();

    }
    Class B : public A{
        public:
            func1();

    }
    A a *ptr b = new B;
    B b *ptr a = nullptr;
    b.func1(); //(Calls func in class B)
    a.func1(); //(Calls func in Class A)
    ptr a = ptr b;
    ptr a -> func1(); this calls Class B Early Binding - compile tim
    &ptr a -> func1();& this cals Class A, late binding -runtime 

    

    *Abstract Class is a class with at least one pure virtual member.
    *Abstract Class cannot be intantiated
                                ^create an object of 
    *Cannot us a parameter to a function
    *Cannot be returned from a funciton
    *Can create pointers

    Class A{
        public:
            virtual func1(); = 0;
                               ^-pure virtual function


    }
    Class B : public A{
        public:
            func1();

    }


    virtual void f() {} - blank virtual function

    Abstract Classes are designed to be used as base class

    Abstract Class exsist to be used as a base Class

    If a class derived from an abstract
    class does not define ALL purely 
    virtual function, it is also an
    abstract class. 

    A function in a class either
    has a definition OR is 
    purely virtual never both

    An abstract class can be 
    derived from a non-abstract
    class and virtual functions
    can be overidden by
    purely virtual funcitons.

    abstract classes cannot have constructors or deconstructors but can have virtualized versions of them.

    Void pointers can point to objects


*/