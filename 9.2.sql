CREATE OR REPLACE PROCEDURE upd_sal(title IN varchar2, prevsal IN Number)
IS TYPE salary_type IS TABLE OF EMPLOYEES.EMPLOYEE_ID%TYPE;
salary_tab salary_type;
BEGIN
SELECT employee_id BULK COLLECT INTO salary_tab 
  FROM employees 
  Where job_title = title;
   FORALL j IN salary_tab.FIRST..salary_tab.LAST
     UPDATE employees
SET salary = salary + (salary * (prevsal/100))
     WHERE employee_id = salary_tab(j);
END;
begin upd_sal('President',20);
End;



--select * from employees
