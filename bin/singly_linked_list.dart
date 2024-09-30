//in linked list , singly linked list in which we looking each element and value in link list.

// Define a Node class for the linked list
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

  // Function to traverse and print the elements of the linked list
  void traverse() {
    Node? current = head;
    while (current != null) {
      print('${current.data} '); // Print the data of the current node
      current = current.next; // Move to the next node
    }
    print(''); // Print a newline at the end
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();

  // Insert elements into the linked list
  list.insertAtEnd(10);
  list.insertAtEnd(20);
  list.insertAtEnd(30);
  list.insertAtEnd(40);

  // Traverse and print the elements of the linked list
  print('Traversal of the linked list:');
  list.traverse();
}
