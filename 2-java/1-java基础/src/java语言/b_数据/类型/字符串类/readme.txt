�ȰѼ���֪ʶ���г�����

ֵ���ݣ�

������������Ϊ�������뷽��ʱ�����۸ò����ڷ������������ı䣬�ⲿ�ı���ԭ�����ǲ���ġ�

���ô��ݣ�

����������Ĳ���Ϊ������������(�ࡢ�ӿڡ�����)ʱ�� �����ı����������ͬʱ����ԭ��Ҳ����֮�ı䡣

���������Ĳ��������String�أ���ʱ���Ҫע���ˣ�ͨ��������Ϊ�ļ��������

�����String�ĸ�ֵ��ʽ�й�ϵ��ֱ�Ӹ�ֵ�Ͷ���ֵ��

�����String�ı�ֵ��ʽ�й�ϵ����=����ֵ�뷽����ֵ��

public static void main(String[] args) {
        String one = "Test one";//ֱ�Ӹ�ֵ
        String two = new String("Test two");//����ֵ
        changeString(one);
        changeString(two);
        System.out.println(one);
        System.out.println(two);
        changeStringOfConcat(one);
        changeStringOfConcat(two);
        System.out.println(one);
        System.out.println(two);
    }
     
    public static void changeString(String original){
        original = original + " is changed !";//"="��ֵ
        System.out.println("The changed inner String: " + original);
    }
     
    public static void changeStringOfConcat(String original){
        original = original.concat(" is changed of concat !");//������ֵ
        System.out.println("The changed inner String: " + original);
    }
��������

        The changed inner String: Test one is changed !

        The changed inner String: Test two is changed !

        Test one

        Test two

        The changed inner String: Test one is changed of concat !

        The changed inner String: Test two is changed of concat !

        Test one

        Test two

�ӽ���������Ƿ���֮ǰ��Ϊ�ļ��ֶ��Ǵ���ġ�

��ʵ��Ҫ���������һ�������һ��API/��ܵ���ֱ�ӵķ������ǿ�Դ�룬�����ҿ�String��Ĺ��캯��

    public String() {
        this.value = new char[0];
    }
 
    public String(String original) {
        this.value = original.value;
        this.hash = original.hash;
    }
���в��ѷ���Stringʵ����ͨ��char[]������ġ�

String���൱����char[]�İ�װ�ࡣ��װ�������֮һ�����ڶ���ֵ���в���ʱ�����ֳ����Ӧ�Ļ������͵����ʡ�