Documentation about select command
#O resultado de uma coluna é chamado de resul set

#Command to select all the columns of the table cursos (example name)

    Select * From cursos;

#To sort according to that column
    Select * From cursos;
    Order by nome;

#To Put in 'descending' mode
    Select * From cursos;
    order by nome desc;

#Put in 'ascendent' mode
    Select * From cursos;
    order by name asc;

#To filter a column search
    select nome, carga, ano from cursos
    order by nome;

#If i want to order by "ano" and "nome" i use
    select nome, carga, ano from cursos
    order by ano, nome;

#Now let's start to filter lines'
    select * from cursos
    where ano = '2016'
    order by nome;
#Filtering the lines and columns
    select ano, nome from cursos
    where ano = '2016'
    order by nome;

#Filter the columns with a specific "value" (descrição = selecionar as colunas ano, nome e descrição da tabela cursos. onde o ano seja menor ou igual a 2015. ordenar por ano )
    select ano, nome, decricao from cursos
    where ano <= '2015'
    order by ano;

#With a specification "<" (less)
    Select ano, nome, descricao from cursos
    where ano < '2015'
    order by ano, nome;

#With a specification ">" (larger)  
    select ano, nome, decricao from cursos
    where ano > '2016'
    order by ano, nome;

#With a specification ">=" (greater equal)
    select ano, nome, decricao from cursos
    where ano >= '2016'
    order by ano, nome;

#With a specification "!> or <>" (diferent) -> Will appear every year other than 2016
    select ano, nome, descricao from cursos
    where ano != '2016'
    order by ano, nome;

#now i will show you how to select ranges and order the ano and nome by desc and asc
    select * from cursos
    where totaulas between '2014' and '2016'
    order by ano desc, nome asc;

#Diferença de "in" e "between" no "IN" você coloca serviços especificos e o "beteween" pode especificar faixas de valores
    select nome, descricao, ano from cursos
    where ano in (2014, 2016)
    order by ano;

#Cobining tests (carga acima de 35 e total de aulas abaixo de 30)
    select * from cursos
    where carga > 35 and totaulas < 30
    order by name;

#Now let's' start to use the operator 'like' to search for similar resources     
    select * from cursos
    where nome like 'P%';
    #With this command every name who has the inital word "P" will be appear, the " % " character is a wildcard that means "replace one or more characters"

#If we put the % in the end, every word who finishes with the letter "A" for example, will appear.  
    select * from cursos
    where nome like '&A';

#if we want to look for words that have the letter "a" anywhere
    select * from cursos
    where nome like '%A%';

#If we want to search words that don't' have the letter "A"
    select * from cursos
    where nome not like '%A%';

#To search for a world who start with "PH" and finish with "P"
    select * from cursos
    where nome like 'ph%p';
        #And if i want something that ends with a number or other word i only put one more %
            select * from cursos
            where nome like 'ph%p%'

 #Now if we want to search for a word who finish with a character we use "_"
    Select * from cursos
    where nome like 'ph%p_';
        #(começa com PH termina com P e depois tem um caractere)

#If we want to search something that start with a letter, have two characters and a "T" and finish with any character for example
    select * from cursos   
    where nome like 'p__T%';

#Let's' make an example with a name
    select * from gafanhotos
    where nome like '%Silva';
        #Any name that finish with Silva

#Pra explicar esse eu vou em portugues msm kkkkk. O comando 'distinct' serve para você distinguir uma  palavra em uma lista, por exemplo, na tabela há varias pessoas de varios paises e você deseja apenas saber quais são os paises que existem na tabela,
#em vez de repetir varios paises de acordo com cada pessoa ele ira mostrar apenas os existentes. Em caso de duvida ve o video do guanabara "Curso MySQL#12 min - 21:00"
    select distinct nacionalidade from gafanhotos;
     
#Now let's' start to see aggregation functions, the firs is the 'count' function, to count the rows of the tables
       select count(*) from cursos;
       #another example, in thid example we will make a count of the courses that have a workload greater than 40
       select count(*) from cursos where carga > 40;

#Another function is "max()", where you use to select the maximum result of a tables
    select max(carga) from cursos;
    
    #You can view the maximum resource for a expecific column too
        select max(totaulas) from cursos where ano = '2015';  -> within the courses of the year 2015 what was the maximum number of classes I had

#To make a search of the minimum result of a table use "min()"
    select min(carga) from cursos;
    
    #You can view the maximum resource for a expecific column too and you can add a parameter to show the name of the line for example
    select nome, min(totaulas) from cursos where ano = '2015';

#You can make a sum of the values ​​in the columns also with the "sum()" function
    select sum(totaulas) from cursos where ano = '2016';

#In addition to making a sum you can also take an average
    select avg(totaulas) from cursos where ano = '2016';

#For example, if we have 3 courses and each one with 3 hours each the result are = 9 hours of class, and the average will be 3 hours because we will divide the number of hours by the number of courses
