-- SQL LIVE

-- 26. Записи из таблицы HR.EMPLOYEES сгруппировать по коду должности (JOB_ID) и 
-- размеру комиссионной надбавки (COMMISSION_PCT), вычислить количество записей в 
-- каждой группе. Исключить из рассмотрения сотрудников, у которых нет комиссионной
-- надбавки, и произвести сортировку по столбцу JOB_ID.
-- select * from hr.employees;
-- select job_id, count(job_id) from hr.employees group by job_id;
select job_id, COMMISSION_PCT, count(job_id) as number_of_records_in_group 
    from hr.employees 
    where COMMISSION_PCT is not null 
    group by COMMISSION_PCT, job_id
    order by JOB_ID;
    
-- 23. По данным из таблицы HR.EMPLOYEES сформировать список департаментов, 
-- в которых количество сотрудников, получающих месячную зарплату ниже 7000, 
-- превышает 3.

-- select * from hr.employees;

-- Колличество работников с уникальной зарплатой в каждом департаменте
-- select DEPARTMENT_ID, count(SALARY) as numb_of_empls, SALARY 
--             from hr.employees 
--             group by DEPARTMENT_ID, SALARY;

-- Колличество работников с зарплатой ниже 7000 в каждом департаменте
-- select t2.DEPARTMENT_NAME, sum(t1.numb_empls) as numb_empls_slrs_less_7000
--     from (select DEPARTMENT_ID, count(SALARY) as numb_empls, SALARY 
--             from hr.employees 
--             group by DEPARTMENT_ID, SALARY) t1
--     join hr.DEPARTMENTS t2 on t1.DEPARTMENT_ID = t2.DEPARTMENT_ID
--     where t1.SALARY < 7000 
--     group by t2.DEPARTMENT_NAME;


select * 
    from (select t2.DEPARTMENT_NAME, sum(t1.numb_empls) as numb_empls_slrs_less_7000
        from (select DEPARTMENT_ID, count(SALARY) as numb_empls, SALARY 
                from hr.employees 
                group by DEPARTMENT_ID, SALARY) t1
        join hr.DEPARTMENTS t2 on t1.DEPARTMENT_ID = t2.DEPARTMENT_ID
        where t1.SALARY < 7000 
        group by t2.DEPARTMENT_NAME) 
    where NUMB_EMPLS_SLRS_LESS_7000 > 3;

-- 17. По данным из таблицы HR.EMPLOYEES найти минимальную и максимальную 
-- зарплату для каждого департамента.
    
select DEPARTMENT_ID, min(SALARY), max(SALARY) from hr.employees 
    where DEPARTMENT_ID is not null 
    group by DEPARTMENT_ID;
    
-- 9. По данным из таблицы HR.EMPLOYEES сформировать список тех менеджеров, у 
-- которых в подчинении находится более 6 сотрудников, получающих месячную 
-- зарплату (SALARY) в интервале от 2000 до 12000.

select * from (select count(MANAGER_ID) as numb_empls 
    from hr.employees 
    where salary >= 2000 and salary <= 12000
    group by MANAGER_ID) where NUMB_EMPLS > 6;
    
-- 11. По данным из таблицы HR.EMPLOYEES сформировать список должностей с 
-- указанием job_id, количества сотрудников, суммарной зарплаты и разницы между 
-- самой высокой и самой низкой зарплатой.

select job_id, count(EMPLOYEE_ID), sum(salary), max(salary) - min(salary) 
    from hr.employees 
    group by job_id;
    
-- 33. Записи из таблицы HR.JOBS сгруппировать по максимальному размеру зарплаты
-- (MAX_SALARY), вычислить количество записей в каждой группе и отобразить 
-- только те группы, в которых имеется не менее 2 записей.

select * 
    from (select MAX_SALARY, count(MAX_SALARY) as numb_rows from hr.JOBS group by MAX_SALARY) 
    where numb_rows >= 2;
    
-- 30. По данным из таблицы HR.EMPLOYEES посчитать, сколько сотрудников было 
-- принято на работу в 1-й половине каждого месяца в течение 2006-го года 
-- (см. подсказку).

select count(EMPLOYEE_ID) as numb_empls 
    from HR.EMPLOYEES 
    where TO_CHAR(HIRE_DATE, 'YYYY') = 2006 and TO_CHAR(HIRE_DATE, 'DD') <= 15;
    
-- 35. Записи из таблицы HR.COUNTRIES сгруппировать по коду региона (REGION_ID) 
-- и вычислить количество стран, относящихся в каждому региону.

select count(COUNTRY_ID) from HR.COUNTRIES group by REGION_ID;
