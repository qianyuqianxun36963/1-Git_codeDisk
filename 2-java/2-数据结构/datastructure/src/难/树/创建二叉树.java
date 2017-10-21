package 难.树;

class TreeNode  
{  
     int data;  
     TreeNode lchild ;  
     TreeNode rchild ;  
    public int getData()  
    {  
        return data;  
    }  
    public TreeNode getLchild()  
    {  
        return lchild;  
    }  
    public TreeNode getRchild()  
    {  
        return rchild;  
    }  
  
    public void setNode(int data,TreeNode lc,TreeNode rc){  
        this.data = data;  
        lchild = lc;  
        rchild = rc;  
    }  
      
    public TreeNode(){  
          
    }  
}  
  
class Counter{  
    public static int count=0;  
}  
  
public class 创建二叉树  
{  
    public static TreeNode createTree(TreeNode root, int[]a, int i)  
    {  
        if(i < a.length)  
        {  
            if(a[i] == 0)  
            {  
                root = null;  
                  
            }  
            else  
            {  
                  
                TreeNode tl = new TreeNode();  
                TreeNode tr = new TreeNode();  
                root.setNode(a[i],createTree(tl,a,++(Counter.count)),createTree(tr,a,++(Counter.count)));  
                  
            }  
              
        }  
        return root;  
    }  
    public static void traverse(TreeNode root)  
    {  
        if(root != null)  
        {  
            System.out.println(root.getData());  
            traverse(root.getLchild());  
            traverse(root.getRchild());  
        }else{  
            System.out.println(0);  
        }  
    }  
    public static void main(String[] args)  
    {  
        int[] a = {1,5};  
        TreeNode root = new TreeNode();  
          
        root = createTree(root,a,Counter.count);  
        if(root == null)  
        {  
            System.out.println("傻×");  
        }  
          
          
        traverse(root);  
    }  
}  