package java����.a_��֯.c_��.��װ;

import java����.a_��֯.c_��.��װ.����.��������;

public class ���ڷ��� {
	public static void main(String args[]){
		System.out.println("���ڷ���:");
		System.out.println("\n�������౾���ڲ�����:");
		��������.func();
		
		System.out.println("\n����ʵ������:");
		�������� jiben = new ��������();
		jiben.publicfunction();
		jiben.packagefunction();
		jiben.protectedfunction();
//		jiben.privatefunction();  //ͬһ�����ڵ���,�����Է���private ��Ա����������ԭʼ���ڿ��Է��ʡ�
		
		System.out.println("\n����ʵ��(����)����:");
		�������� nchild = new ��������();
		nchild.publicfunction();
		nchild.protectedfunction();
		nchild.packagefunction(); //�������࣬�̳��˸�����Ѻó�Ա�������Ѻó�Ա������
//		nchild.privatefunction();  //ͬһ�����ڵ���,�����Է���private ��Ա����������ԭʼ���ڿ��Է��ʡ�
		
		System.out.println("\n����ʵ��(����)����:");
		��������  wchild = new ��������();
		wchild.publicfunction();
		wchild.protectedfunction();
//		wchild.packagefunction(); //�������࣬û�м̳и�����Ѻó�Ա�������Ѻó�Ա������
//		wchild.privatefunction();  //ͬһ�����ڵ���,�����Է���private ��Ա����������ԭʼ���ڿ��Է��ʡ�
	}
}

