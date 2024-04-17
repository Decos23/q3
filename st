public class Stack {

    int arr[];
    int top;
    int capacity;

    Stack(int size){

        arr = new int[size];
        capacity = size;
        top = -1;
    }

    Boolean isFull(){
       return top+1 == capacity;
    }

    Boolean isEmpty(){
        return top == -1;
    }

   void push(int x){
        if(isFull()){
            System.out.println("Already Full!");
        }
        else{
           top++;
           arr[top] = x;
           System.out.println("Inserting :"+ x); 
        }
      
        } 
    
        void pop(){
            if(isEmpty()){
                System.out.println("Is Empty");
            }
            else{
                System.out.println("Removing :"+ arr[top]);
                top--;
            }
        }
        void printStack(){
            System.out.println("Printing stack");
            for(int i=0; i<=top; i++){
                System.out.println(arr[i]);
            }
        }

       void size(){
           System.out.println(top+1);
        }

    public static void main(String[]args){
        Stack myStack = new Stack(5);

        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        
        myStack.pop();
        myStack.pop();

        myStack.printStack();

        myStack.size();

    }
    
}
