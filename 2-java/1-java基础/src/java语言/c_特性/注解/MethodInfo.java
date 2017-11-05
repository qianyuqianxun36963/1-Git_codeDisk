package java����.c_����.ע��;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Target(ElementType.METHOD)
@Inherited
@Retention(RetentionPolicy.RUNTIME)
public @interface MethodInfo {
    String author() default "wangyajun";
    String date();
    int version() default 1;
    String comments();
}
/*
ע�ⷽ�������в�����
ע�ⷽ���ķ������;�����ԭʼ���ͣ��ַ�����ö�٣�ע�⣬���������͹��ɵ����顣
ע�ⷽ�����԰���Ĭ��ֵ��
ע����԰�������󶨵�Ԫע�⣬Ԫע��Ϊע���ṩ��Ϣ��������Ԫע�����ͣ�

1. @Documented �C ��ʾʹ�ø�ע���Ԫ��Ӧ��javadoc�����ƹ����ĵ�������Ӧ������������������������ע���Ӱ��ͻ��˶�ע��Ԫ�ص�ʹ�á����һ���������������Documentedע�⣬��ô����ע����Ϊ��ע��Ԫ�صĹ���API��һ���֡�

2. @Target �C ��ʾ֧��ע��ĳ���Ԫ�ص����࣬һЩ���ܵ�ֵ��TYPE, METHOD, CONSTRUCTOR, FIELD�ȵȡ����TargetԪע�ⲻ���ڣ���ô��ע��Ϳ���ʹ�����κγ���Ԫ��֮�ϡ�

3. @Inherited �C ��ʾһ��ע�����ͻᱻ�Զ��̳У�����û�����������ʱ���ѯע�����ͣ�ͬʱ��������Ҳû��������͵�ע�⣬��ôע�����ͻ��Զ���ѯ����ĸ��࣬������̽��᲻ͣ���ظ���ֱ�������͵�ע�ⱻ�ҵ�Ϊֹ�����ǵ�����ṹ�Ķ��㣨Object����

4. @Retention �C ��ʾע�����ͱ���ʱ��ĳ��̣�������RetentionPolicy���������ܵ�ֵ��SOURCE, CLASS, �Լ�RUNTIME��
*/