/*
    _Linked Lists_
    int arr[5];
    arr[1]-3;
    cout << arr[1];


    _Node_
    1. Data 
        variables,
        class objects
    2.Pointers to
        next node(required)
        previous node(optimal)

    Class Node{
        //Data
        Node *next;
        Node *prev;
    }

    ()empty bracket is null

    _Linked Lists_
    _Node_
    1. Data (any data)  
    2. Pointers to Nodes -> 1. Node *next(required)
                            2. Node *prev(optional) or optimal

    Doubly linked lists 


    int *x = new int[5];

    _Linked Lists_
    1. List is empty
    2. Theres something in it.

    if empty
    Head = new Node(d);
    tail = head;

    if not empty
    tail -> next = new Node(d);
    tail = tail -> next;


    Node<T> *p -head -> next;
    while(p!= nullptr){
        delete head;
        head = p;
        p = p -> next
    }
    delete head;

    return data from the last node 
    then removes it. 

List conditions
    1. List is empty -> throw an exception (not my problem)
    2. List has one Node. ->
        T temp = tail -> data;
        delete tail;
        tail = head  = nullptr; 
    3. List has more than one Node ->
        Node<T> *p;
        while(p-> next != tail){
            p = p -> next;
        }
        delete tail;
        tail = p;
        return temp (-> tail-> next = nullptr);
    
*/