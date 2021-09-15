// Consider the following pair of variables

int  x;  // a variable located at address 1000 with initial value 0
int *p;  // a variable located at address 2000 with initial value 0

// If each of the following statements is executed in turn, 
// starting from the above state, show the value of both variables 
// after each statement:

/*
| 1000  | 2000  | -> address
|   x   |   p   | -> variable
|   3   |  NULL | -> values
*/

// x = 0
// p = 1000
p = &x; // & -> address of 

// x = 5
// p = 1000 
x = 5;

// x = 3
// p = 1000 
// *p == x
// x = 3
*p = 3; // -> *(1000) = 3

// x = 1000
// p = 1000 
x = (int)p;

// x = 2000
// p = 1000 
x = (int)&p;

// x = 2000
// p = NULL
p = NULL;

// x = 2000
// p = NULL
// BREAKS -> seg fault 
*p = 1;


node->value
node.value

struct node {
    int value;
    struct node *next;
}

struct node *node1; // pointer to a struct node (->)
struct node node2;  // struct node (.)

node1->data == (*node1).data
node2.data

If any of the statements would trigger an error, state what the error would be.