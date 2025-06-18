/*
* Name: Miguel Muniz , 8001437775, 1002 , ASSIGNMENT_ 4
* Description : Finds the base of an inputed power, uses a binary search to find a certain value in an array, finally searches an array at a certain point and looks around its adjacent elements till x is found.
* Input : power(2, 10) ; isValueInArray(arr, 0, 16, 2) ? "yes" : "no"; findTheX(maze1, 1, 1,0,0); 
* Output :2^10 = 1024; Is 21 in the array? no; Found the X at (2,3)
*/
#include <iostream>
#include <exception>

using namespace std;

const int WIDTH = 4;
const int HEIGHT = 5;

//Function prototypes
int power(const int&, int);
bool isValueInArray(int[], int, int, const int&);
void findTheX(char grid[HEIGHT][WIDTH], const int& x, const int& y,int, int);

//First maze to solve
char maze1[HEIGHT][WIDTH] = {
	{' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' '},
	{' ', ' ', 'X', ' '},
	{' ', ' ', ' ', ' '},
};

//Second maze to solve
char maze2[HEIGHT][WIDTH] = {
	{' ', 'X', 'O', ' '},
	{' ', ' ', 'O', ' '},
	{' ', ' ', 'O', ' '},
	{' ', ' ', 'O', ' '},
	{' ', ' ', ' ', ' '},
};

//Array for the search function
int arr[16]{ 1, 2, 5, 6, 7, 9, 10, 12,
			15, 18, 19, 20, 22, 23, 28, 30 };

//Main just calls each of the individual recursion functions
int main()
{
	int functionToTest = -1;

	//Print a prompt
	cout << "Which function should be tested?" << endl;
	cout << "(1) power" << endl;
	cout << "(2) isValueInArray" << endl;
	cout << "(3) findTheX" << endl;

	cin >> functionToTest; //Read in the choice
	while (cin.fail() || functionToTest < 1 || functionToTest > 4)
	{
		cout << "Error, invalid choice. Please pick a number 1-4" << endl;
		cin.ignore(1024, '\n');
		cin.clear();
	}

	//After the read works, run the testing code for the choice
	switch (functionToTest)
	{
		case 1:
			cout << "2^10 = " << power(2, 10) << endl;
			cout << "4^0 = " << power(4, 0) << endl;
			break;
		case 2:
			cout << "Is 2 in the array? " <<
				(isValueInArray(arr, 0, 16, 2) ? "yes" : "no") << endl;
			cout << "Is 6 in the array? " <<
				(isValueInArray(arr, 0, 16, 6) ? "yes" : "no") << endl;
			cout << "Is 21 in the array? " <<
				(isValueInArray(arr, 0, 16, 21) ? "yes" : "no") << endl;
			break;
		case 3:
			cout << "---- Maze 1 ----" << endl;
			findTheX(maze1, 1, 1,0,0);
			cout << "---- Maze 2 ----" << endl;
			findTheX(maze2, 3, 2,0,0);
			break;
	}
}

/* Finds the base to the given power*/
int power(const int& base, int pow)
{
	//Check for the base case; anything to the 0th is trivial to solve
	//Otherwise, recursively take the power of a base with a lower pow

	//*** YOUR CODE HERE ***
	if (pow == 0) return 1;
		return power(base, pow-1) * base; 
		
}

/* Tells whether or not the given value is in the array with the given length
and starting at the given start index 
(Allow students to either implement this linearly or 
with binary search as a challenge) */
bool isValueInArray(int arr[], int start, int length, const int& value)
{
	//Check if the array is of length 0, in which case, the solution is trivial
	//(we can't find any value in an empty array)
	
	//Check if the current element being looked at is a match
	//If so, we found it

	//If we did not find the element, recursively search for it

	//*** YOUR CODE HERE ***
	int mid;
        if (start > length){
            return false; 
   
		} else {
        	mid = (start + length) / 2; 
            if(value == arr[mid]){
                return mid;
			} else if (value > arr[mid]){        
            	return arr, value, mid + 1, start;
               
			} else {                        
            	return arr, value, start, mid - 1;
			}
		}
}

/* Tries to find the 'X' char in the array. This starts the check at the spot with the
given x, y coordinate, and then searches all adjacent spaces in the array. 'O' chars are
considered walls and cannot be traversed. Prints the position the x was found at*/
void findTheX(char grid[HEIGHT][WIDTH], const int& x, const int& y,int row,int column)
{
	//If the char at the current spot is an X, then we solved it
	//Print the message andmark the spot as a O now to make sure we don't find it twice
	//Else if the char is an 'O', it is either a wall or has been verified 
	//to not contain the X

	//If this is not the X or an O, mark this spot as a O then recursively try the right, left, above
	//and below spots only if each ear in bounds of the array

	//You can assume the grid always has dimensions of the consts HEIGHT and WIDTH
	//by the parameter declaration above and that the X is always findable. Consider
	//that with row major arrays, y should come before x when accessing, as well

	//*** YOUR CODE HERE ***
	/*
	if(grid[y][x] == 'X'){
        cout << "Found the X at (" << x << "," << y << ")" << endl;
	} else if (grid[y][x] == ' '){
		grid[y][x] = 'O';
		//cout << "meow" << endl;
		return findTheX(grid, x, y);
	} else if (grid[y][x] == 'O'){                        
			if(grid[y+1][x] && y+1 < HEIGHT){ 
				grid[y+1][x];
				cout << "up" << endl;
				return findTheX(grid, x, y);
			} else if (grid[y][x+1] && x+1 < WIDTH){
				grid[y][x+1];
				cout << "right" << endl;
				return findTheX(grid, x, y);
			} else if (grid[y-1][x] && y-1 > 0){
				grid[y-1][x];
				cout << "down" << endl;
				return findTheX(grid, x, y);
			}else if (grid[y][x-1] && x+1 > 0){
				grid[y][x-1];
				cout << "left" << endl;
				return findTheX(grid, x, y);
			}
	}
	*/
	/*
		for (int i = 0; i < 4; i++){
        for (int j = 0; j < 5; j++){ 
			cout << grid[i][j];
			}
		}
		grid[column+1][row] && column + 1 < HEIGHT
	*/
	

	//int row = x, column = y;
	//cout << column << "," << row << endl;

    if(grid[column][row] == 'X'){
        cout << "Found the X at (" << row << "," << column << ")" << endl;
	} else if (grid[column][row] == ' '){
		grid[column][row] = 'O';
		//cout << "meow" << endl;
		return findTheX(grid, x, y, column, row);
	} else if (grid[column][row] == 'O'){   
		                  
			if(column < 5){ 
				column += 1;
				//cout << "C: "<<column << endl;
				//grid[column+1][row];
				//cout << grid[column+1][row] << endl;
				//cout << "up" << endl;
				return findTheX(grid, x, y, column, row);
			} else if (row < 4){
				row += 1;
				//grid[y][row+1];
				//cout << "right" << endl;
				return findTheX(grid, x, y, column, row);
			} else if (column > 1){
				column -= 1;
				//grid[y-1][row];
				//cout << "down" << endl;
				return findTheX(grid, x, y, column, row);
			}else if (row > 1){
				row -= 1;
				//grid[y][row-1];
				//cout << "left" << endl;
				return findTheX(grid, x, y, column, row);
			}
	}	
}