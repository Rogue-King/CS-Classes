/*
* Name: Miguel Muniz , 8001437775, 1002 , ASSIGNMENT_ 4
* Description : Prints out vectors, then checks vector sizes, then checks if + and * operators are functional, then tests a incorrect statment with diffrent sized vectors.
* Input : v1 + v2 ; v1 * v3
* Output : <11.3,2,1.6,-0.1> ; Encountered an error when multiplying:v1 and v2 are of different sizes and could not be multiplied;
*/
#include <iostream>
#include <fstream>
#include "vector.h"

using namespace std;

int main(int argc, char* argv[])
{
	Vector v1, v2, v3;
	ifstream infile;
	if (argc != 2) {
		cout << "ERROR: Invalid Arguments";
		return -1;
	}
	infile.open(argv[1]);
	if (!infile.good())
	{
		cout << "Could not open " << argv[1] << ". Did you put it in the same directory?" << endl;
		return -1;
	}

	//Read in each of the vectors
	infile >> v1 >> v2 >> v3;
	
	// Close file
	infile.close();

	//Test all of our operations:
	cout << "v1 = " << v1 << endl;
	cout << "v2 = " << v2 << endl;

	Vector v4 = v3;

	cout << "Testing = ..." << endl;
	cout << "Checking if v3 and v4 are the same" << endl;
	cout << "v3 = " << v3 << endl;
	cout << "v4 = " << v4 << endl;

	cout << "Testing math operations" << endl;
	cout << "v1 + v2 = " << v1 + v2 << endl;
	cout << "v1 * v2 = " << v1 * v2 << endl;

	cout << "Testing an invalid operation" << endl;
	try {
		cout << v1 * v3 << endl;
	}
	catch (DimensionMismatchException& e)
	{
		cout << "Encountered an error when multiplying:" << e.what() << endl;
	}
}

//---------------- Vector operator and function implementations ----------------

/**/
Vector operator + (Vector v1, Vector v2)
{
	//Add the two vectors together elementwise if they have the same 
	//size/dimensionality and return a result Vector
	//Else throw an exception

	//*** YOUR CODE HERE ***
	if(v1.size == v2.size){
	//Vector result;
	Vector result = Vector(v1.size);
	for(int i = 0; i < v1.size; i++){
    result.contents[i] = v1.contents[i] + v2.contents[i];
	}
	return result;
	} else {
		throw DimensionMismatchException("v1 and v2 are of different sizes and could not be added"); 
	}
}

/**/
float operator * (Vector v1, Vector v2)
{
	//Find the scalar dot product if their dimensions match, otherwise
	//throw an exception.
	//Recall that the dot product is the sum of all elementwise products
	//(See the rubric for the detailed explanation)

	//*** YOUR CODE HERE ***
	if(v1.size == v2.size){
	float sum = 0;
	for(int i = 0;i < v1.size; i++){
		sum += v1.contents[i] * v2.contents[i];
	}
	return sum;
	} else {
		throw DimensionMismatchException("v1 and v2 are of different sizes and could not be multiplied"); 
	}
}

/**/
void Vector::operator = (Vector other)
{
	//Make a deep copy of the other vector's contents and copy over
	//any other member variables

	//Make sure to deallocate any existing contents array if it exists

	//*** YOUR CODE HERE ***
	for(int i = 0;i < size; i++){
		if(i > size) {
			if (contents[i] != 0) {
				delete contents;
			}
		}
	}

	contents = new float[other.size];
	size = other.size;
	for(int i = 0;i < other.size; i++){
		contents[i] = other.contents[i];
	}
}

/**/
ostream& operator << (ostream& out, const Vector& v)
{
	//Print the vector to the out stream in the form <x0, x1, x1, ..., xn-1>
	//Return the stream when done

	//*** YOUR CODE HERE ***

	out << "<" <<  v.contents[0];
	for(int i = 1;i < v.size; i++){
		out << "," << v.contents[i];
	}
	out << ">" << endl;
	 
	return out;
}

/**/
istream& operator >> (istream& in, Vector& v)
{
	//Reads a vector from a stream by first reading the size, then
	//the elements that will fill up the Vector
	//Make sure to allocate the array somehow before reading in values
	//and deallocate any existing space beforehand
	//Return the stream when done

	//You can assume no error checking is needed; the user enters everything fine

	//*** YOUR CODE HERE ***
	in >> v.size;
	v.contents = new float[v.size];
	for(int i = 0;i < v.size; i++){
		if(i > v.size) {
			if (v.contents[i] != 0) {
				delete v.contents;
			}
		}
	}
	for(int i = 0;i < v.size; i++){
		in >> v.contents[i];
	}
    return in;
}

/**/
Vector::Vector(int size)
{
	//Allocate an array of the given size and store the size param in
	//the size memeber

	//*** YOUR CODE HERE ***
	contents = new float[size];
	this-> size = size;
}

/**/
Vector::Vector(const Vector& other)
{
	//A copy constructor should make a copy of the existing other
	//Vector. This should be nearly identical to an = overload,
	//just without the need to deallocate any existing memory
	//(since this is a creation event, memory can't be already allocated beforehand)

	//*** YOUR CODE HERE ***
	contents = new float[other.size];
	size = other.size;
	for(int i = 0;i < other.size; i++){
		contents[i] = other.contents[i];
	}
}

/**/
Vector::~Vector()
{
	//Deallocate the existing contents array if it exists
	//This should be 2 lines max

	//*** YOUR CODE HERE ***
	delete[] contents;
	contents = nullptr;
}
