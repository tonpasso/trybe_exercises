
-- PRÁTICA

	SELECT * FROM employees;
    
    SET SQL_SAFE_UPDATES = 0;

-- 1. Escreva uma query que exiba o maior salário da tabela.
	SELECT MAX(salary) AS 'Salário Mais Alto' FROM employees;
    
-- 2. Escreva uma query que exiba a diferença entre o maior e o menor salário.
	SELECT MAX(salary) - MIN(salary) 
    AS 'Diferença Maior e Menor Salário' 
    FROM employees;
    
-- 3. Escreva uma query que exiba a média salarial de cada JOB_ID, ordenando pela média salarial em ordem decrescente.
	SELECT JOB_ID, AVG(SALARY) AS 'Média_Salarial'  
    FROM employees
    GROUP BY JOB_ID
    ORDER BY `Média_Salarial` DESC;    

-- 4. Escreva uma query que exiba a quantidade de dinheiro necessária para realizar o pagamento de todas as pessoas funcionárias.
	SELECT SUM(salary) AS 'Total Pagamento' from employees;
    
-- 5. Escreva uma query que exiba quatro informações: o maior salário, o menor salário, a soma de todos os salários 
-- e a média dos salários.  Todos os valores devem ser formatados para ter apenas duas casas decimais.
	SELECT MAX(salary),
		   MIN(SALARY),
           SUM(SALARY),
		   ROUND(AVG(salary), 2) 
	FROM employees;
    
-- 6. Escreva uma query que exiba a quantidade de pessoas que trabalham como pessoas programadoras ( IT_PROG ).
	SELECT job_id, COUNT(*) as 'pessoas_programadoras'
    FROM employees   
    WHERE JOB_ID = 'it_prog';    
    
-- 7. Escreva uma query que exiba a quantidade de dinheiro necessária para efetuar o pagamento de cada profissão ( JOB_ID ).
	SELECT JOB_ID, SUM(SALARY)		   
	FROM employees
    GROUP BY JOB_ID;    
    
-- 8. Utilizando a query anterior, faça as alterações para que seja exibido somente a quantidade de dinheiro necessária para cobrir a folha de 
-- pagamento das pessoas programadoras ( IT_PROG ).
	SELECT JOB_ID, SUM(SALARY)		   
	FROM employees
    GROUP BY JOB_ID
    HAVING JOB_ID = 'IT_PROG';    

-- 9. Escreva uma query que exiba em ordem decrescente a média salarial de todos os cargos, exceto das pessoas programadoras ( IT_PROG ).
	SELECT JOB_ID, AVG(SALARY) AS 'Media_Salarial'		    
	FROM employees
    WHERE JOB_ID NOT LIKE 'IT_PROG'
    GROUP BY JOB_ID
    ORDER BY `Media_Salarial` DESC;    
    
-- 10. Escreva um query que exiba média salarial e o número de funcionários de todos os departamentos com mais de dez funcionários. 
-- Dica: agrupe pelo department_id.   
    SELECT DEPARTMENT_ID, 
	AVG(SALARY) 'Média Salarial',
    COUNT(*) 'QTD Funcionários'
    FROM employees
    GROUP BY DEPARTMENT_ID
    HAVING `QTD Funcionários` > 10;    
   
-- 11. Escreva uma query que atualize a coluna PHONE_NUMBER , de modo que todos os telefones iniciados por 515 agora devem iniciar com 777 .
	UPDATE employees
    SET PHONE_NUMBER = replace(phone_number, '515', '777')
    WHERE PHONE_NUMBER LIKE '515%';
        
-- 12. Escreva uma query que só exiba as informações dos funcionários cujo o primeiro nome tenha oito ou mais caracteres.
	SELECT * FROM employees
    WHERE length(first_name) >= 8;
    
-- 13. Escreva uma query que exiba as seguintes informações de cada funcionário: id , primeiro nome e ano no qual foi contratado (exiba somente o ano).
	SELECT EMPLOYEE_ID, FIRST_NAME, year(HIRE_DATE) 
    from employees;
    
-- 14. Escreva uma query que exiba as seguintes informações de cada funcionário: id , primeiro nome e dia do mês no qual foi contratado (exiba somente o dia).
	SELECT EMPLOYEE_ID, FIRST_NAME, day(HIRE_DATE) 
    from employees;
    
-- 15. Escreva uma query que exiba as seguintes informações de cada funcionário: id , primeiro nome e mês no qual foi contratado (exiba somente o mês).
	SELECT EMPLOYEE_ID, FIRST_NAME, month(hire_date)
    from employees;
    
-- 16. Escreva uma query que exiba os nomes dos funcionários em letra maiúscula.
	SELECT ucase(concat(first_name, ' ', last_name)) FROM employees;    
   
-- 17: Escreva uma query que exiba o sobrenome e a data de contratação de todos os funcionário contratados em julho de 1987.
	SELECT last_name, hire_date FROM employees
    WHERE month(hire_date) = 7
    AND year(hire_date) = 1987;    
    
-- 18: Escreva uma query que exiba as seguintes informações de cada funcionário: nome , sobrenome , tempo que trabalha na empresa (em dias).
    SELECT FIRST_NAME,
    LAST_NAME,
    datediff(current_date(), hire_date) 'dias trabalhados'
    FROM employees;    
