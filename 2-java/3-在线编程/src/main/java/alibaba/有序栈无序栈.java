package alibaba;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Stack;

//题目：那笔记下题目：无序列栈A，有序栈B，现在要从无序栈A中取出元素，放到有序栈B中使得有序。
//解题思路：无序列栈A:  3,1,2
//         有序栈B:    6,5,4,3,2,1
//
//         初始步：遍历无序栈A，根据栈顶元素分两类操作：
//         情况一：栈A 顶元素小于等于栈B 顶元素，直接B.push(A.pop());
//         情况二：栈A 顶元素大于栈B 顶元素。
//                 第一步：将栈A 顶元素弹出到temp暂存。
//                 A   : 3,1
//                 temp: 2
//                 B   : 6,5,4,3,2,1
//                 第二步：然后将B中小于temp的值全弹到A中。
//                 A   : 3,1,1
//                 temp: 2
//                 B   : 6,5,4,3,2
//                 第三步：将temp元素放到B栈顶。
//                 A   : 3,1,1
//                 temp: 
//                 B   : 6,5,4,3,2,2
//                 第四步：再回到初始步。



public class 有序栈无序栈 {
	static Stack<Integer> orderStack = new Stack<Integer>();
	static Stack<Integer> unorderStack = new Stack<Integer>();
	public static void main(String args[]){
//		for(int i=6;i>0;i--)
//		{orderStack.push(i);}
//		
//		unorderStack.push(3);
//		unorderStack.push(1);
//		unorderStack.push(2);
		
		Collections.addAll(orderStack,6,5,4,3,2,1);
		Collections.addAll(unorderStack,3,1,2);
		
		printStack(orderStack);
		printStack(unorderStack);
		
		int temp;
		while(!unorderStack.isEmpty()){
			if(unorderStack.peek()<=orderStack.peek()) {orderStack.push(unorderStack.pop());}
			if(!unorderStack.isEmpty()){
				if(unorderStack.peek()> orderStack.peek()) {
					temp = unorderStack.pop();
					while(orderStack.peek()<temp){unorderStack.push(orderStack.pop());}
					orderStack.push(temp);
				}
			}
		}
		
		printStack(orderStack);
	
	}
	
	public static void printStack(Stack stack){for(int i = 0; i<stack.size();i++) System.out.print(stack.get(i)+" ");System.out.println();}
}
