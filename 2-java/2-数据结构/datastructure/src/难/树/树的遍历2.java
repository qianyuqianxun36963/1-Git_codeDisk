package ��.��;

import java.util.Stack;  
public class ���ı���2 {  
    protected Node root;    
        
    public ���ı���2(Node root) {    
        this.root = root;    
    }    
    
    public Node getRoot() {    
        return root;    
    }    
    
    /** ������ */    
    public static Node init() {    
        Node a = new Node('A');    
        Node b = new Node('B', null, a);    
        Node c = new Node('C');    
        Node d = new Node('D', b, c);    
        Node e = new Node('E');    
        Node f = new Node('F', e, null);    
        Node g = new Node('G', null, f);    
        Node h = new Node('H', d, g);    
        return h;// root    
    }    
    
    /** ���ʽڵ� */    
    public static void visit(Node p) {    
        System.out.print(p.getKey() + " ");    
    }    
    
    /** �ݹ�ʵ��ǰ����� */    
    protected static void preorder(Node p) {    
        if (p != null) {    
            visit(p);    
            preorder(p.getLeft());    
            preorder(p.getRight());    
        }    
    }    
    
    /** �ݹ�ʵ��������� */    
    protected static void inorder(Node p) {    
        if (p != null) {    
            inorder(p.getLeft());    
            visit(p);    
            inorder(p.getRight());    
        }    
    }    
    
    /** �ݹ�ʵ�ֺ������ */    
    protected static void postorder(Node p) {    
        if (p != null) {    
            postorder(p.getLeft());    
            postorder(p.getRight());    
            visit(p);    
        }    
    }    
  /**********************************************************************************************/  
    /** �ǵݹ�ʵ��ǰ����� */    
    protected static void iterativePreorder(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        if (p != null) {    
            stack.push(p);    
            while (!stack.empty()) {    
                p = stack.pop();    
                visit(p);    
                if (p.getRight() != null)    
                    stack.push(p.getRight());    
                if (p.getLeft() != null)  //Ϊʲôp.getLeft() �ں�getRight()��ǰӦΪwhile ѭ����һ�����pop visit����Ҫ��left���ϣ��ȷ��ʡ�֮�з����Ǽ�ѹ�����ʷ���  
                    stack.push(p.getLeft());    
            }    
        }    
    }    
      
    /** �ǵݹ�ʵ��������� */  //˼·������iterativePreorder һ�¡�  
    protected static void iterativeInorder(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        while (p != null) {    
            while (p != null) {    
                if (p.getRight() != null)    
                    stack.push(p.getRight());// ��ǰ�ڵ�������ջ    
                    stack.push(p);// ��ǰ�ڵ���ջ    
                    p = p.getLeft();    
            }    
            p = stack.pop();    
            while (!stack.empty() && p.getRight() == null) {    
                visit(p);    
                p = stack.pop();    
            }    
            visit(p);    
            if (!stack.empty())    
                p = stack.pop();    
            else    
                p = null;    
        }    
    }  
  
/*******************************************************************************************/  
      
/*******************************************************************************************/    
    /** �ǵݹ�ʵ��ǰ�����2 */    
    protected static void iterativePreorder2(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        Node node = p;    
        while (node != null || stack.size() > 0) {    
            while (node != null) {//ѹ�����е���ڵ㣬ѹ��ǰ����������ڵ�ѹ�����pop�����ҽڵ㡣�������㷨ʱ˼�������ԵĶ������ġ������ĸ��ڵ㶼Ҫѹ���ڵ��ж��ҽڵ㡣    
                visit(node);    
                stack.push(node);    
                node = node.getLeft();    
            }    
            if (stack.size() > 0) {//    
                node = stack.pop();    
                node = node.getRight();    
            }    
        }    
    }    
      
    /** �ǵݹ�ʵ���������2 */    
    protected static void iterativeInorder2(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        Node node = p;    
        while (node != null || stack.size() > 0) {    
            while (node != null) {    
                stack.push(node);    
                node = node.getLeft();    
            }    
            if (stack.size() > 0) {    
                node = stack.pop();    
                visit(node);   //��iterativePreorder2�Ƚ�ֻ����仰��λ�ò�һ��������ʱ�ٷ��ʡ�  
                node = node.getRight();    
            }    
        }    
    }  
      
 /*******************************************************************************************/  
    
    /** �ǵݹ�ʵ�ֺ������ */    
    protected static void iterativePostorder(Node p) {    
        Node q = p;    
        Stack<Node> stack = new Stack<Node>();    
        while (p != null) {    
            // ��������ջ    
            for (; p.getLeft() != null; p = p.getLeft())    
                stack.push(p);    
            // ��ǰ�ڵ������ӻ������Ѿ����    
            while (p != null && (p.getRight() == null || p.getRight() == q)) {    
                visit(p);    
                q = p;// ��¼��һ��������ڵ�    
                if (stack.empty())    
                    return;    
                p = stack.pop();    
            }    
            // ��������    
            stack.push(p);    
            p = p.getRight();    
        }    
    }    
    
    /** �ǵݹ�ʵ�ֺ������ ˫ջ�� */    
    protected static void iterativePostorder2(Node p) {//���������   ������ ���ݹ����ʣ��������õ�ѭ������ȥ��    
        Stack<Node> lstack = new Stack<Node>();//������ջ    
        Stack<Node> rstack = new Stack<Node>();//������ջ  
        Node node = p, right;    
        do {    
            while (node != null) {    
                right = node.getRight();    
                lstack.push(node);    
                rstack.push(right);    
                node = node.getLeft();    
            }    
            node = lstack.pop();    
            right = rstack.pop();    
            if (right == null) {    
                visit(node);    
            } else {    
                lstack.push(node);    
                rstack.push(null);    
            }    
            node = right;    
        } while (lstack.size() > 0 || rstack.size() > 0);    
    }    
    
    /** �ǵݹ�ʵ�ֺ������ ��ջ��*/    
    protected static void iterativePostorder3(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        Node node = p, prev = p;    
        while (node != null || stack.size() > 0) {    
            while (node != null) {    
                stack.push(node);    
                node = node.getLeft();    
            }    
            if (stack.size() > 0) {    
                Node temp = stack.peek().getRight();    
                if (temp == null || temp == prev) {    
                    node = stack.pop();    
                    visit(node);    
                    prev = node;    
                    node = null;    
                } else {    
                    node = temp;    
                }    
            }    
    
        }    
    }    
    
    /** �ǵݹ�ʵ�ֺ������4 ˫ջ��*/    
    protected static void iterativePostorder4(Node p) {    
        Stack<Node> stack = new Stack<Node>();    
        Stack<Node> temp = new Stack<Node>();    
        Node node = p;    
        while (node != null || stack.size() > 0) {    
            while (node != null) {    
                temp.push(node);    
                stack.push(node);    
                node = node.getRight();    
            }    
            if (stack.size() > 0) {    
                node = stack.pop();    
                node = node.getLeft();    
            }    
        }    
        while (temp.size() > 0) {//�Ѳ������ж����뵽��temp��  
            node = temp.pop();    
            visit(node);    
        }    
    }    
    
    /**  
     * @param args  
     */    
    public static void main(String[] args) {    
        ���ı���2 tree = new ���ı���2(init());   
        System.out.print(" �ݹ���� \n");    
        System.out.print(" Pre-Order:");    
        preorder(tree.getRoot());    
           
        System.out.print(" \n In-Order:");    
        inorder(tree.getRoot());  
          
        System.out.print("\n Post-Order:");    
        postorder(tree.getRoot());    
          
        System.out.print(" \n�ǵݹ����");  
        System.out.print(" \n Pre-Order:");    
        iterativePreorder(tree.getRoot());    
          
        System.out.print("\n Pre-Order2:");    
        iterativePreorder2(tree.getRoot());    
           
        System.out.print(" \n In-Order:");    
        iterativeInorder(tree.getRoot());  
          
        System.out.print("\n In-Order2:");    
        iterativeInorder2(tree.getRoot());    
          
        System.out.print("\n Post-Order:");    
        iterativePostorder(tree.getRoot());    
         
        System.out.print("\n Post-Order2:");    
        iterativePostorder2(tree.getRoot());    
           
        System.out.print("\n Post-Order3:");    
        iterativePostorder3(tree.getRoot());    
           
        System.out.print("\n Post-Order4:");    
        iterativePostorder4(tree.getRoot());    
        
    
    }    
  
}  
   
  
class Node {    
    private char key;    
    private Node left, right;    
    
    public Node(char key) {    
        this(key, null, null);    
    }    
    
    public Node(char key, Node left, Node right) {    
        this.key = key;    
        this.left = left;    
        this.right = right;    
    }    
    
    public char getKey() {    
        return key;    
    }    
    
    public void setKey(char key) {    
        this.key = key;    
    }    
    
    public Node getLeft() {    
        return left;    
    }    
    
    public void setLeft(Node left) {    
        this.left = left;    
    }    
    
    public Node getRight() {    
        return right;    
    }    
    
    public void setRight(Node right) {    
        this.right = right;    
    }    
}   