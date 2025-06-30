delimiter //

drop function if exists netpay;

create function netpay(
	salary decimal(10,2),
    deduction1 decimal(10,2),
    deduction2 decimal(10,2)
)returns decimal(10,2)
deterministic
begin
	declare answer decimal(10,2);
    set answer = salary - (deduction1 + deduction2);
    return answer;
end; 
//
delimiter ;