DECLARE
CURSOR salary_upd IS 
SELECT employee_id as empid, job_title, floor(months_between(sysdate, HIRE_DATE) /12) as period from EMPLOYEES;
rec salary_upd%rowtype;
temp NUMBER;
BEGIN
  OPEN salary_upd;
  LOOP
    FETCH salary_upd INTO rec;
    EXIT WHEN salary_upd%notfound;
    if(rec.period<5) Then
      if(rec.job_title='Accounting Manager') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Programmer') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Public Relations Representative') then temp:=dbms_random.value(3000,4000);
      elsif(rec.job_title='Purchasing Clerk') then temp:=dbms_random.value(1000,2000);
      elsif(rec.job_title='Sales Representative') then temp:=dbms_random.value(1000,2000);
elsif(rec.job_title='Administration Vice President') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Marketing Representative') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Stock Manager') then temp:=dbms_random.value(3000,4000);
elsif(rec.job_title='Administration Assistant') then temp:=dbms_random.value(3000,4000);
      elsif(rec.job_title='President') then temp:=dbms_random.value(10000,12000);
      elsif(rec.job_title='Finance Manager') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Purchasing Manager') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Human Resources Representative') then temp:=dbms_random.value(2000,3000);
      elsif(rec.job_title='Accountant') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Shipping Clerk') then temp:=dbms_random.value(1000,2000);
elsif(rec.job_title='Stock Clerk') then temp:=dbms_random.value(2000,3000);
      elsif(rec.job_title='Public Accountant') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Marketing Manager') then temp:=dbms_random.value(6000,7000);
      elsif(rec.job_title='Sales Manager') then temp:=dbms_random.value(6000,7000);
      
END IF;
    elsif(rec.period>=5 and rec.period<10) Then 
      if(rec.job_title='Accounting Manager') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Programmer') then temp:=dbms_random.value(5000,6000);
elsif(rec.job_title='Public Relations Representative') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Purchasing Clerk') then temp:=dbms_random.value(2000,3000);
      elsif(rec.job_title='Sales Representative') then temp:=dbms_random.value(2000,3000);
      elsif(rec.job_title='Administration Vice President') then temp:=dbms_random.value(6000,7000);
elsif(rec.job_title='Marketing Representative') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Stock Manager') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='Administration Assistant') then temp:=dbms_random.value(4000,5000);
      elsif(rec.job_title='President') then temp:=dbms_random.value(12000,14000);
elsif(rec.job_title='Finance Manager') then temp:=dbms_random.value(6000,7000);
      elsif(rec.job_title='Purchasing Manager') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Human Resources Representative') then temp:=dbms_random.value(3000,4000);
      elsif(rec.job_title='Accountant') then temp:=dbms_random.value(5000,6000);
elsif(rec.job_title='Shipping Clerk') then temp:=dbms_random.value(2000,3000);
      elsif(rec.job_title='Stock Clerk') then temp:=dbms_random.value(3000,4000);
      elsif(rec.job_title='Public Accountant') then temp:=dbms_random.value(5000,6000);
      elsif(rec.job_title='Marketing Manager') then temp:=dbms_random.value(7000,8000);
      elsif(rec.job_title='Sales Manager') then temp:=dbms_random.value(7000,8000);
      END IF;    
    END IF;  
        UPDATE EMPLOYEES
        SET salary = temp
        where employee_id = rec.empid;
  END LOOP;
  CLOSE salary_upd;
END;
