/*Step-by-step approach:

Initialize a counter length to 0.
Start from the head of the list, assign it to current.
Traverse the list:
Increment length for each node.
Move to the next node (current = current->next).
Return the final value of length */


// Define the Node class
class Node {
  int data; // Data held by the node
  Node? next; // Pointer to the next node

  Node(this.data); // Constructor to initialize the data
}

// Class to represent the Singly Linked List
class SinglyLinkedList {
  Node? head; // Head of the linked list

  // Function to insert a new node at the end
  void insertAtEnd(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  // Function to find the length of the linked list
  int findLength() {
    int length = 0;
    Node? current = head;
    while (current != null) {
      length++;
      current = current.next;
    }
    return length;
  }
}

void main() {
  // Create an instance of SinglyLinkedList
  SinglyLinkedList list = SinglyLinkedList();

  // Insert elements into the linked list
  list.insertAtEnd(10);
  list.insertAtEnd(20);
  list.insertAtEnd(30);
  list.insertAtEnd(40);

  // Find and print the length of the linked list
  int length = list.findLength();
  print('Length of the linked list: $length');
}
