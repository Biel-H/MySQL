Select - Pt 2

#To group a table/column
    Select carga from cursos
    group by carga;

#To group a table/column and Count how many records there are within each grouping
    select carga ,count(*) from cursos
    group by carga;

#group using where
    select carga, count(*) from cursos where totaulas = 30
    group by carga;

#Group using a parameter "having" to search for a specifi number of results (Conte os anos da tabela cursos, agrupe todos por ano e todos tem q ter uma conta/resultado maior ou igual a 5 e ordene por uma conta em ordem decrescente)
    select ano, count(*) from cursos
    group by ano
    having count(ano) >= 5
    order by count(*) desc;

#To order by ano with totaulas is more than 30, i can select, filter, group and what i want to show
    select ano, count(*) from cursos
    where totaulas > 30
    group by ano
    having ano > 2013
    order by count(*) desc;

#If i want an average of a table with specifc types of filtering i use a select inside to another
    select carga, count(*) from cursos
    where ano > 2015
    group by carga
    having carga > (select avg(carga) from cursos);     



