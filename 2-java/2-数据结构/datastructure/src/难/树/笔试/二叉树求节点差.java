package ��.��.����;

import org.junit.Test;

public class ��������ڵ�� {

	@Test
	public void check() {
		int			a[]		= { -1, 45, 6, 7, 12, 89, 2, 17 };
		Status		status	= new Status( -10000, 10000 );
		���ڵ�			node	= new ���ڵ�( a[0] );
		
		operate op      = new operate(status);
		
		for ( int i = 1; i < a.length; i++ )
		{
			op.insert( node, a[i] );
		}
		
		op.FindMax_Min( node );
		op.Max_Min_abs();
	}

}

class ���ڵ� {
	���ڵ�	leftChild;
	���ڵ�	rightChild;
	int	intege;

	public ���ڵ�( int intege )
	{
		super();
		this.intege = intege;
	}
}

class  Status {
	int	max;
	int	min;
	public Status( int max, int min )
	{
		super();
		this.max	= max;
		this.min	= min;
	}
}

class operate{
	
	Status status;
	
	operate(Status status){
		this.status = status;
	}
	
/* ����statusus */
	public void insert(���ڵ� root, int i )
	{
		if ( root == null )
		{
			System.out.println( "��Ϊ��" );
		} 
		else {
			if ( root.intege < i )
			{
				if ( root.leftChild != null )
				{
					insert( root.leftChild, i );
				} else {
					root.leftChild =  new ���ڵ�( i ) ;
				}
			} else {
				if ( root.rightChild != null )
				{
					insert( root.rightChild, i );
				} else {
					root.rightChild = new ���ڵ�( i ) ;
				}
			}
		}
	}


/* ���룬�����ҵ����ڵ����ֵ����Сֵ */
	public void FindMax_Min( ���ڵ� root )
	{
		if ( root == null )
		{
			System.out.println( "����Ϊ��" );
		} else {
			if ( root.intege > status.max )
			{
				status.max = root.intege;
			}
			if ( root.intege < status.min )
			{
				status.min = root.intege;
			}
			if ( root.leftChild != null )
			{
				FindMax_Min( root.leftChild );
			}
			if ( root.rightChild != null )
			{
				FindMax_Min( root.rightChild );
			}
		}
	}

	public void Max_Min_abs()
	{
		System.out.println( status.max - status.min );
	}
}

