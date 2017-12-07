
发票1：

finance_invoice id 001 userid 001 

finance_invoice_order id 001 invoice_id 001 order_id 001

finance_invoice_order id 002 invoice_id 001 order_id 002

finance_invoice_order id 003 invoice_id 001 order_id 003

finance_order id 001 userid 001 account 46

finance_order id 002 userid 001 account 50

finance_order id 003 userid 001 account 23

发票2：

finance_invoice id 002 userid 002 

finance_invoice_order id 004 invoice_id 002 order_id 001

finance_invoice_order id 005 invoice_id 002 order_id 002

finance_invoice_order id 006 invoice_id 002 order_id 003

finance_order id 004 userid 002 account 10

finance_order id 005 userid 002 account 20

finance_order id 006 userid 002 account 15

统计查询：

	select brandid,sum(cnt) as counts from goods where userid = 1 group by brandid

简单的左关联查询

    select * from finance_invoice_order IO left join finance_invoice I on IO.invoice_id = I.id left join finance_order O on IO.order_id = O.id;


多条件分组查询

    select 
        O.userid,
        O.pay_type,
        sum(account) 
    from finance_invoice_order IO 
    left join finance_invoice I on IO.invoice_id = I.id 
    left join finance_order O on IO.order_id = O.id 
    group by O.pay_type,O.userid 

    userid                        pay_type                            sum(account)
    001                           学分费                               40.00
    002                           学分费                               50.00
    001                           考试费                               90.00
    002                           考试费                               25.00

使用 case when  进行多条件分组的 部分统计 

    select
        S.name,
        T.userid,
        T.account,
        MAX(case T.pay_type when '考试费' then T.account else 0 end) 'scoreFee',
        MAX(case T.pay_type when '学分费' then T.account else 0 end) 'examFee'
    from (
            select 
                O.userid,
                O.pay_type,
                I.id,
                sum(O.account) account
                from finance_invoice_order IO
                left join finance_order O on IO.order_id = O.id
                left join finance_invoice I on IO.invoice_id = I.id
                group by O.pay_type,O.userid
        ) T
    left join base_stubase S on T.userid = S.id
    group by T.userid


在江开数据库上练习：

select * from finance_invoice_order IO left join finance_invoice I on IO.invoice_id = I.id left join finance_order O on IO.order_id = O.id;

select O.schoolroll_id,O.pay_type_id,sum(pay_account) from finance_invoice_order IO left join finance_invoice I on IO.invoice_id = I.id left join finance_order O on IO.order_id = O.id group by O.pay_type_id,O.schoolroll_id 

select  T.schoolroll_id as schoolrollId,
        T.invoice_id as invoiceId,
        T.export_batch as exportBatch,
        T.has_export as "hasExport",
        T.invoice_time as "invoiceTime",
        S.name as "stuName",
        R.student_no as "schoolrollNo",
        P.id as "pointId",
        P.point_name as "pointName",
        P.point_code as "pointCode",
        MAX(case T.typeid when '0a1eec7fa7444856984be054c485cfd3' then T.account else 0 end) 'scoreFee',
        MAX(case T.typeid when '1e98bfd9adbd41bea509c987887017e2' then T.account else 0 end) 'examFee',
        T.payment_amount as paymentAmount
from (
        select 
            O.schoolroll_id,
            O.pay_type_id typeid,
            I.id invoice_id,
            I.point_id point_id,
            I.export_batch,
            I.has_export,
            I.invoice_time,
            I.has_del,
            I.payment_amount payment_amount,
            sum(pay_account) account 
        from finance_invoice_order IO 
        left join finance_invoice I on IO.invoice_id = I.id 
        left join finance_order O on IO.order_id = O.id 
        group by O.pay_type_id,O.schoolroll_id) T
left join roll_schoolroll R on T.schoolroll_id = R.id
left join roll_stu_base S on R.stu_base_id = S.id
left join sys_point P on T.point_id = P.id
WHERE T.HAS_DEL = 0
and  T.schoolroll_id = '2f8eb64ad1f84e05aced94ee561bcb7d'
group by  T.schoolroll_id
having  T.schoolroll_id = '2f8eb64ad1f84e05aced94ee561bcb7d'

