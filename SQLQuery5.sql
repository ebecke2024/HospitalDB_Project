select *
from Billing_items

select *
from Billing

create Trigger trg_billing_item_insert
on Billing_items
After insert, update, delete 
as
begin
	select a.total_amount 
	from Billing a
	join Billing_items b on a.bill_id = b.bill_id
	where a.total_amount + 
end;
