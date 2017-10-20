select auth.itemName as 'itemName', resultdata.transsum as 'transsum', resultdata.transmonth as 'transmonth', resultdata.salesum as 'salesum', resultdata.salemonth as 'salemonth', resultdata.allsum as 'allsum' from wwoa_fkhq_itemauth auth left join 
	        (select debitaccount.details,debitaccount.detailsID, 
	         	max(IF(debitaccount.debitItemName = '输配费用',debitaccount.amount,"0.00")) as 'transsum', 
	         	max(IF(debitaccount.debitItemName = '销售费用',debitaccount.amount,"0.00")) as 'salesum', 
	         	max(IF(debitaccount.debitItemName = '输配费用',debitaccount.monthamount,"0.00")) as 'transmonth', 
	         	max(IF(debitaccount.debitItemName = '销售费用',debitaccount.monthamount,"0.00")) as 'salemonth', 
	         	sum(debitaccount.amount) as 'allsum'
	         from 
	         	(
	            	select  accountgroup.debitItem,accountgroup.detailsID, accountgroup.debitItemName, accountgroup.details, accountgroup.amount as amount, c.monthamount as monthamount
	                from
	                (
	                	select account.debitItem as debitItem,account.detailsID as detailsID, account.debitItemName as debitItemName, account.details as details, sum(account.amount) as amount
	                    from
	                    	wwoa_fkhq_debitaccount_log account 
	                    where
                                date_format(account.paytime,'%Y')=date_format('15','%Y')
                                group by account.debitItem,account.detailsID,account.debitItemName, account.details
	                ) accountgroup 
	                left join                                           
	                (
	                	select detailsID,debitItem,sum(d.amount) as monthamount 
	                    from 
	                    	wwoa_fkhq_debitaccount_log d
	                    where
	                    	    	date_format(d.paytime,'%Y-%m')=date_format('15-3','%Y-%m') 	
				group by detailsID,debitItem
	                ) c 
	                on 
	                	c.detailsID=accountgroup.detailsID and c.debitItem=accountgroup.debitItem
	        	) debitaccount group by debitaccount.detailsID
	      	) resultdata on auth.itemID=resultdata.detailsID  where auth.itemID in (select items.itemID from wwoa_fkhq_debit_item items where items.debitID in (1,2));
	