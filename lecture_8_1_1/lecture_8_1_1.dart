import 'dart:io';
void update(List l, int position, int value) {
  if (position < 0 || position >= l.length) {
    print("Invalid position");
  } else {
    l[position] = value;
    print("Element updated successfully");
  }
}

void insert(List l, int position, int value) {
  if (position < 0 || position > l.length) {
    print("Invalid position");
  } else {
    l.insert(position, value);
    print("Element inserted successfully");
  }
}

void delete(List l, int position) {
  if (position < 0 || position >= l.length) {
    print("Invalid position");
  } else {
    l.removeAt(position);
    print("Element deleted successfully");
  }
}

int getIndex(List l, int value) => l.indexOf(value);


void display(List l) => print(l);
 


void main() { 

   List <int> l = [10,20,30,40,50,60,70,80];

print(l);


stdout.write ("Please choose any one from below....\n");
stdout.write (".................................................................\n");
stdout.write ("\tFor update list                        : Enter 1\n");
stdout.write ("\tFor insert value in list               : Enter 2\n");
stdout.write ("\tFor delete value in list               : Enter 3\n");
stdout.write ("\tFor get the index of element           : Enter 4\n");
stdout.write ("\tFor exit                               : Enter 5\n");

int choice,value,position,index;
 
  stdout.write("Enter a Number any one of above : ");
  choice = int.parse(stdin.readLineSync()!);

	switch(choice)
				{
					case 1 : 
          stdout.write ("Enter a index number you want to update : ");
          position = int.parse(stdin.readLineSync()!);
          stdout.write ("Enter a new value                       : ");
          value = int.parse(stdin.readLineSync()!);
          update(l, position, value);
           print("$l");
          break;

        	case 2 : 
          stdout.write ("Enter an index number  at you want to insert the element : ");
          position = int.parse(stdin.readLineSync()!);
          stdout.write ("Enter a new value                                        : ");
          value = int.parse(stdin.readLineSync()!);
          insert(l, position, value);
           print("$l");
          break;

          case 3 : 
          stdout.write ("Enter a index number you want to delete : ");
          position = int.parse(stdin.readLineSync()!);
          delete(l, position);
           print("$l");
          break;

          case 4 : 
          stdout.write ("Enter a value to know index:");
          value = int.parse(stdin.readLineSync()!);
          index = getIndex(l, value);
          if (index == -1) {
          print("Element not found");
          } else {
          print("$value found at index $index");
         }
          print("$l");
          break;

          default:
           print("Invalid choice");
           break;
        
        }
}