-- jan2025 + feb2025 + mar2025
-- add rows from tables
-- same col names
-- duplicate id will not be added, will throw error
-- if you want to keep duplicates, use UNION ALL

(select * from employees where department_id=1 and salary >80000)
union
(select * from employees where department_id=2 and salary >80000)
union
(select * from employees where department_id=3)
order by salary desc;
