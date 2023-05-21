void main() {
  dLinkedList list = dLinkedList();
  List<int> array = [23, 34, 45, 56, 67, 89, 32];
  for (int element in array) {
    list.addData(element);
  }
  print("Before:");
  list.displayData();
  print("After:");
  list.reverseLinkedList();
}

class Node {
  int data;
  Node? next;
  Node? prev;
  Node({required this.data});
}

class dLinkedList {
  Node? head;
  Node? tail;

  void addData(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void displayData() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

// Reverse the Linked list
  void reverseLinkedList() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}
