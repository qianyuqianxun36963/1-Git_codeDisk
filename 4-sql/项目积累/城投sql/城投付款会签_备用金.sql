select  a.recordID,a.createTime,a.paymentContent,a.paymentAmount from (
select  pay.*  from wwoa_fkhq_paymentapplication pay ,WFPROCESSINST pro 
where pay.processInstID=pro.PROCESSINSTID
and pro.CURRENTSTATE='2' ) a , wwoa_fkhq_debitaccount b
where a.processInstID=b.processInstID
and b.debitItem='3'





select  recordID,pay.createTime,paymentContent,paymentAmount,creatorID from wwoa_fkhq_paymentapplication pay ,WFPROCESSINST pro 
where pay.processInstID=pro.PROCESSINSTID
and pro.CURRENTSTATE='2'
