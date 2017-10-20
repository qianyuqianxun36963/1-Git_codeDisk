package alibaba;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Stack;

//��Ŀ���Ǳʼ�����Ŀ��������ջA������ջB������Ҫ������ջA��ȡ��Ԫ�أ��ŵ�����ջB��ʹ������
//����˼·��������ջA:  3,1,2
//         ����ջB:    6,5,4,3,2,1
//
//         ��ʼ������������ջA������ջ��Ԫ�ط����������
//         ���һ��ջA ��Ԫ��С�ڵ���ջB ��Ԫ�أ�ֱ��B.push(A.pop());
//         �������ջA ��Ԫ�ش���ջB ��Ԫ�ء�
//                 ��һ������ջA ��Ԫ�ص�����temp�ݴ档
//                 A   : 3,1
//                 temp: 2
//                 B   : 6,5,4,3,2,1
//                 �ڶ�����Ȼ��B��С��temp��ֵȫ����A�С�
//                 A   : 3,1,1
//                 temp: 2
//                 B   : 6,5,4,3,2
//                 ����������tempԪ�طŵ�Bջ����
//                 A   : 3,1,1
//                 temp: 
//                 B   : 6,5,4,3,2,2
//                 ���Ĳ����ٻص���ʼ����



public class ����ջ����ջ {
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
