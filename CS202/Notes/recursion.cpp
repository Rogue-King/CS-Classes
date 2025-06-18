/*
    A function that calls itself

    func1(){
        func1(); // Stack Overflow
    }

    Function calling itself is 
    a recursive function 

    _Recursive functions_
    1. Base case:
        condition when the recursion stops.
    2. Recursion case:
        condition when the function calls itself
    3. Reduction:
        Recursive function must reduce to its base case


    if fact(int n){
        if(n==1) return n; -> base case
        return n*fact(n-1); -> recurssion case //(n-1) -> reduction
    }
    ^^^^^^^^^^^

    @5 
    1 x
    2 5 * fact(4) //divide by 24
    return 120

    @4
    1 x
    2 4 * fact(3) //divide by 6
    return 24

    @3
    1 x
    2 3 * fact(2) //divide by 2
    return 6

    @2
    1 x
    2 2 * fact(1) //divide by 1
    return 2

    @1
    1 return 1
    2 x
    

    search(arr, z,size)
    if if find



    FREE function
    int power_l(int n, int p){
        int ans = 1;
        for (int i =0; 1< -; i++){
            ans = ans * n;
        } 
        return ans;
    }
    int power_r(int n, int p){
        if (p == 0) return 1;
        return power_r(n, p-1) * n; 
    }


*/