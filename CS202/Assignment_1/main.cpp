/*
    * Name: Miguel Muniz, 8001437775, 1002, HOMEWORK ASSIGNMENT_#1
    * Description: Takes input cards and then displays and sorts them by Value then Energy Cost
    * Input: Strike 0 1
    * Output: Strike  :: VAL 0 ENG 1
*/


#include <iostream>
#include <string>
#include <iomanip>
#include <fstream>

using namespace std;

/* ***********************************
    Class and Function Declaration
* ***********************************/
enum class SortBy {
        VALUE,
        ENERGYCOST
    };

class Card {
private:
    string name;    ///< Name of the card.
    int value;      ///< Cost of the card.
    int energyCost; ///< Energy required to play the card.
/// this is doxygen ///< this is doxygen for a variable
public:
    // Constructors and Destructor
    Card() : name(""), value(0), energyCost(0) {}   /// Default Constructor
    Card(string name, int value, int energyCost);   /// Parameterized Constructor
    
    // Accessors (Getters)
    int getEnergyCost() { return energyCost;}    /// Returns energyCost of the object.
    int getValue() { return value;}         /// Returns value of the object.
    string getName() { return name;}       /// Returns name of the object.

    // Mutators (Setters) have to use, don't touch
    void setEnergyCost(int);
    void setValue(int);
    void setName(string);

    // Functions
    void showCard();
    void operator= (const Card&);
};
// use any algorithm you like. bubble sort, insertion sort.
void sortCards(Card *cards, int size, SortBy order);


/* ***********************************
    Main Function
* ***********************************/
int main(int argc, char* argv[]) {
    Card cards[10];     ///< Array to store up to 10 cards.
    ifstream infile;    ///< Input file stream.
    string temp_str;    ///< Used for storing a string from file stream.
    int temp_int;       ///< Used for storing an integer from file stream.
    int counter = 0;    ///< Counts the number of cards read from the file.

    infile.open(argv[1]);
    if (infile.is_open() && argc == 2){ 
    while(true){
        infile >> temp_str;
        infile >> temp_int;
        cards[counter].setName(temp_str);
        cards[counter].setValue(temp_int);
        infile >> temp_int; ///reused 
        cards[counter].setEnergyCost(temp_int);
        counter ++;
        //cout << counter << "\n";
        if(infile.eof()){
            break; 
        }
    }
    } else if (argc != 2) {
        cout << "ERROR: Incorrect usage.\n";
        cout << "./a.out <filename>\n"; 
        return -1;
    }else if (!infile.is_open()){
        cout << "ERROR: Could not open file: " << argv[1] << "\n";
        return -1;

    }
    
    infile.close();
    /*
        YOUR CODE HERE

        File must be passed in as a parameter to the program. If the number
        of parameters are incorrect throw an error and return -1. If the file
        does not exist or cannot be opened, throw an error and return -1.

        Read the name, value, and energy cost of the card, and store
        it in the cards[10] array. Make sure to increment the counter
        after each entry. You can use the temp_int and temp_str variables
        for temporary storage to call the setName and setValue functions.
    */
    for (int i = 0; i < counter; i++) {
        cards[i].showCard();                      // Display all cards read.
    }
    cout << "\nSorting by Value...\n";
    sortCards(cards, counter, SortBy::VALUE);
    for (int i = 0; i < counter; i++) {
        cards[i].showCard();                      // Display all cards after sorting by value.
    }
    cout << "\nSorting by Energy Cost...\n";
    sortCards(cards, counter, SortBy::ENERGYCOST);
    for (int i = 0; i < counter; i++) {
        cards[i].showCard();                      // Display all cards after sorting by energyCost.
    }
    return 0;
}

/* *****************************************************************
    Function Definitions

    Make sure to write function descriptions above the 
    function. Using the following template:

    Brief function description. 
    @param parameter parameter description.
    @return what does the function return.

    Description for the sortCards function has been provided
    as an example.

* *****************************************************************/

/**
 * This is the parameterized constructor for which each object must pass through. Each parameter that
 * passes through goes throguh the same code found in there respective setters.  
 * @param name The inputed string from cards.txt
 * @param value The inputed integer from cards.txt
 * @param energyCost The inputed energyCost from cards.txt
 * @return none 
 */
Card::Card(string name, int value, int energyCost) {
    if (energyCost > 5){
        energyCost = 5;
    } else if (energyCost < 0){
        energyCost = 0;
    }
    this-> energyCost = energyCost;

    if (value > 8){
        value = 8;
    } else if (value < 0){
        value = 0;
    }
    this-> value = value;

    if(name.length() > 20 ){
        name = "";
    }
    this-> name = name;
    /*
        YOUR CODE HERE

        I recommend you write the setters first and then copy-paste the code here.

        # If name is over 20 characters, set it to empty string: ""
        # If value is over 8 set it to 8, if it is below 0, set it to 0.
        # If energyCost is over 5 set it to 5, if it is below 0, set it to 0.

        Constructors should not print anything! Do not use setters in the constructor
    */
}

/**
 * Takes integer cost and then is tested whether it exceeds 5. If true its set equal to 5.
 * cost is also tested if it is below zero in which its cost is set to 0; 
 * @param cost Inputed EnergyCost from cards.txt 
 * @return none 
 */
void Card::setEnergyCost(int cost) {
    //cout << "cost: " << cost << endl; 
    if (cost > 5){
        cost = 5;
    } else if (cost < 0){
        cost = 0;
    }
    this-> energyCost = cost;
    /*
        YOUR CODE HERE

        If energyCost is over 5 set it to 5, if it is below 0, set it to 0.

    */
}

/**
 * Takes integer Value and then is tested whether it exceeds 8. If true its set equal to 8
 * Value is also tested if it is below zero in which its Value is set to 0; 
 * A this pointer is used to connect the private value of Value to the value in the inputed array.
 * @param value Inputed Value from cards.txt 
 * @return none 
 */
void Card::setValue(int value) {
    //cout << "value: " << value << endl;
    if (value > 8){
        value = 8;
    } else if (value < 0){
        value = 0;
    }
     this-> value = value;
    
    /*
        YOUR CODE HERE

        If value is over 8 set it to 8, if it is below 0, set it to 0.
    */

}
/**
 * Takes string name and then tests whether its 20 characters or less.
 * If true, it then makes the string disappear and outputs an error message
 * A "this" pointer is used to connect the private value of string to the value in the inputed array.
 * @param name Inputed String from cards.txt
 * @return none 
 */
void Card::setName(string name) {
    //cout << name << endl; ///
    if(name.length() > 20 ){
        name = "";
        cout << "Name can't be longer than 20 characters.\n";
    }
    this-> name = name;
    /*
        YOUR CODE HERE

        If name is over 20 characters, set it to empty string ("") and
        print an error to std::cerr "Name can't be longer than 20 characters.".
    */
}

/**
 * Prints the card to terminal.
 * @return None.
 */
void Card::showCard() {
    cout << left << setw(20) << name << " :: " << setw(3) << "VAL " << setw(2) << value << setw(3) << " ENG " << setw(2) << energyCost << "\n";
}

/**
 * Performs a deep copy when using the assignment operator with the Card class.
 * 
 * This is an overloaded operator. We will cover this later in class. It has
 * been provided here to make sorting easier.
 * @param other R-value of assignment operator.
 * @return None.
 */
void Card::operator= (const Card& other) {
    this->name = other.name;
    this->value = other.value;
    this->energyCost = other.energyCost;
}


/**
 * Sorts an existing array of cards by a given parameter. Sorts in ascending order.
 * @param cards List of cards to sort.
 * @param size Size of list.
 * @param order Element used to sort by.
 * @return None
 */
void sortCards(Card *cards, int size, SortBy order) {
if(order == SortBy::VALUE){
    for (int i = 0; i < size - 1; i++) {
        for (int j = 1; j < size; j++){ 
            if (cards[j - 1].getValue() > cards[j].getValue()){ 
                swap(cards[j], cards[j - 1]); 
            }
        }        

    }
} else if (order == SortBy::ENERGYCOST){
    for (int i = 0; i < size - 1; i++) {
        for (int j = 1; j < size; j++){ 
            if (cards[j - 1].getEnergyCost() > cards[j].getEnergyCost()){ 
                swap(cards[j], cards[j - 1]); 
            }
        }        

    }
}
    /*
        YOUR CODE HERE

        Sort the cards by VALUE or ENERGYCOST depending upon the value of
        order parameter. Use the getValue and getEnergyCost functions to
        retrieve and compare the appropriate values. You may create a temporary
        Card object as required for swapping objects within the array.

        You may use Bubble Sort or any other sorting algorithm you like.
    */
}