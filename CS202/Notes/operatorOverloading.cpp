/*
    int add(int x, int y);
    int add(int x, int y, int z);
    float add(float x, float y);

    //Cannot be overloaded:
    sizeof()
    scope (::)
    dot (.)
    arrow (->)

    int x = 4;
    int y = 3;
    int z;
    
    z = x + y
  //^return value, x and y are parram
    z = operator + (2,y)

    int operator + (const int &x, const int &y);


    __ Coord{
    private:
        int x;
        int y;
    friend cord operator + (const coord 2, const coord 2);
    };

    int main(){
        coord x(5,7);
        coord y(3,9);
        coord z;
        z = x + y;
    }

    coord operator + (const coord op1, const cord &op2){
        coord result;
        result.x = op1.x + op2.x;
        result.y = op1.y + op2.y;
        return result;
    }


    //Friend functions can access 
    All members of a class but
    DO NOT belong to the class
    
    Access modifiers do not apply to friend functions.


    a++ 
    //return a, then increment

    ++a
    //increment a, then return.

    dummy int hack.
    
    if an object is being called, best practice to use this operator





*/