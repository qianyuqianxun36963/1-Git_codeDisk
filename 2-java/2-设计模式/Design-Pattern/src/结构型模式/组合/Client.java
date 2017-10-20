package �ṹ��ģʽ.���;

//���ģʽ�������ӣ����������
//	                         ����
//        |    |    |
//��ɣ�  ��ͼ   ����    ����
//
//�������       �����ʾ����Ĳ��� -�����νṹ��
//          ��ϣ���û�������϶����뵥������Ĳ�ͬ

public class Client {
	public static void main(String args[]){
		I_Whole box = new Impl_Box("OutSide_Box");
		
		I_Part partS = new Impl_PartS("partS");
		I_Part partA = new Impl_PartA("partA");
		box.parts.add(partS);
		box.parts.add(partA);
		
		I_Whole inbox = new Impl_Box("InSide_Sox");
		inbox.whole=box.clone();
		inbox.whole.wholename = "InIn_Box";
		box.whole=inbox;
		
		printWhole(box);
	}
	
	public static void printWhole(I_Whole whole){
		System.out.println("Box: "+whole.wholename);
		for(I_Part part:whole.parts){
			System.out.println(part.name);
		}
		if(whole.whole!=null){
			System.out.println();
			printWhole(whole.whole);
		}
	}
}
