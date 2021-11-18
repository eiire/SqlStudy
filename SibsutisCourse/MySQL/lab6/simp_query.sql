-- 31. На основе таблице HR.EMPLOYEES построить запрос для получения ответа на 
-- вопрос, какой станет зарплата у сотрудников в случае её повышения на 20%.
-- select EMPLOYEE_ID, SALARY, (SALARY + SALARY * 0.25) AS highest20percent 
--     from HR.EMPLOYEES;
    
-- 41. По данным из таблицы HR.DEPARTMENTS отобразить все сведения об отделе 
-- маркетинга.

-- select * from HR.DEPARTMENTS where DEPARTMENT_NAME = 'Marketing';

-- 28. Из таблицы HR.EMPLOYEES выбрать данные по сотрудникам, у которых 3-я цифра 
-- телефонного номера имеет значение 3 или 5. Список упорядочить по телефонному 
-- номеру.
-- select * from HR.EMPLOYEES 
--     WHERE REGEXP_LIKE (PHONE_NUMBER, '^\d\d(3|5)[.]\d\d\d[.]\d\d\d\d$') 
--     order by PHONE_NUMBER;

-- 9. Из таблицы HR.EMPLOYEES выдать значения SALARY так, чтобы они могли
-- повторяться, но только в разных департаментах. По столбцу SALARY сделать 
-- сортировку в порядке возрастания и ограничиться значениями не выше 4000.
-- select distinct t1.SALARY, t1.DEPARTMENT_ID from HR.EMPLOYEES t1 
--      join HR.DEPARTMENTS t2 on t1.DEPARTMENT_ID = t2.DEPARTMENT_ID order by t1.DEPARTMENT_ID, t1.SALARY;
-- select distinct salary, DEPARTMENT_ID from HR.EMPLOYEES where salary <= 4000 
--     order by SALARY;

-- 40. По данным из таблицы HR.JOBS получить список должностей с минимальной 
-- зарплатой выше 8000.
-- select JOB_TITLE from HR.JOBS where MIN_SALARY > 8000;

-- 37. Из таблицы HR.EMPLOYEES выдать значения FIRST_NAME так, чтобы они могли 
-- повторяться, но только в разных департаментах. Столбец FIRST_NAME 
-- отсортировать в алфавитном порядке.
-- select distinct FIRST_NAME, DEPARTMENT_ID from HR.EMPLOYEES order by FIRST_NAME;

-- По таблице HR.EMPLOYEES получить список сотрудников, которые приняты на 
-- работу с начала 1999 г. и не относятся к департаментам 50, 80, 100.
select * from HR.EMPLOYEES where HIRE_DATE > '11-Nov-1999';

-- 15. По таблице HR.EMPLOYEES получить список сотрудников, которые приняты на 
-- работу с начала 1999 г. и не относятся к департаментам 50, 80, 100.
-- select * from HR.EMPLOYEES where HIRE_DATE > '01-jan-1999' and DEPARTMENT_ID not in (50, 80, 100);

-- 23. По таблице HR.EMPLOYEES получить список сотрудников, у которых имя 
-- (FIRST_NAME) или фамилия (LAST_NAME) начинается с символа S.
-- select * from HR.EMPLOYEES where REGEXP_LIKE (first_name, '^S') or REGEXP_LIKE (LAST_NAME, '^S')

-- 35. По данным из таблицы HR.JOBS вычислить разницу между максимальной и 
-- минимальной зарплатой для каждой должности. Сделать сортировку по увеличению разницы.
-- select JOB_TITLE, (MAX_SALARY - MIN_SALARY) as diff from HR.JOBS order by diff

-- 13. По таблице HR.EMPLOYEES получить список сотрудников, которые работают в 
-- департаментах 20, 60 и 90.
select * from HR.EMPLOYEES where DEPARTMENT_ID in (20, 60, 90);

select * from hr.employees;
select COMMISSION_PCT, job_id, count(COMMISSION_PCT), count(job_id) from hr.employees group by job_id, COMMISSION_PCT;

