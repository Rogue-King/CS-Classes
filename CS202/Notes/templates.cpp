/*
    template <typename T>    // (T) generic data type // nothing generic datatype //
    T add(T a, T b){

        return a + b;
    }
    int main(){
        cout << add <int>(3,4);
        cout << add <double>(1.1,2.3);
    }


    template<typename A> // if <class T = int> default datatype
    class myClass{
        A var;
    public:
        void print var();
        A getvar() const {return var;}
        setvar(A V) {this->var = v;}
    }
    //^^Evaluated at runtime

    myclass<that> obj;
    myclass<int> obj2;
    myclass<int> obj3
    //class can not exsits without these objects


    //Template MUST be defined in header file only. 


    template<class T, U>
    T var 1;
    U var 2;
    public:
    void set var 1(T,v){var1=v;}
         set var 2(U,v){var2=v;}
        T get var () ;
        U get var () ;
    };
    someClass<int,that>obj;



    Vectors:
    can use at,size;


    int main(){
        std::vector<int> arr;
        arr.push_back(4);
        arr.push_back(5);
        arr.push_back(6);
        arr.push_back(7);
        std::cout << arr[2]<< endl;
        std::cout << "size of arr = " << arr.size() << endl;
    }
*/