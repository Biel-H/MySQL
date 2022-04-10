Foreign key e introduction to join

#Innodb it's' a engine that suport foreign keys, another examples of engines are MyISAM and xtraDB.
#But only the InnoDB and xtraDB supports transations (ACID) and MyISAM not follow the rules of the ACID. 
#An explanation about ACID (Portuguese): https://medium.com/opensanca/o-que-%C3%A9-acid-59b11a81e2c6#:~:text=ACID%20%C3%A9%20um%20conceito%20que,%2C%20Consist%C3%AAncia%2C%20Isolamento%20e%20Durabilidade.


#Adding a foreign key -> basically you have to reference the table that you want to go and their priamry key  
    alter table gafanhotos
    add column cursopreferido int;

    alter table gafanhotos
    add foreign key (cursopreferido)
    references cursos (idcurso);

#To reference a entity to another table -> You will set a 'cursopreferido' for a gafanhoto
    update gafanhotos set cursopreferido = '6' where id = '1';

#referential integrity
    delete from cursos
    where idcurso = '6';
    #Referential integrity is a way to "protect" the delete of a column for example. When you relate a table to another table and add datas that are connected each other you can't' make inconsistencies like delete  the column that they are related.
    #Or in another words  i can't' modify a field if he affects my transaction

#Using join or inner join to make a search entry two different entities
    select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
    from gafanhotos join cursos
    on cursos.idcurso = gafanhotos.cursopreferido;
        
        #Irei selecionar os nomes dos gafanhotos  e o curso preferido deles, alem de mostrar o nome do curso preferido e o ano. isso sera uma pesquisa das duas tabelas 'gafanhotos' e 'cursos' e por ultimo irei relacionar as suas chaves como curso e sua chave primaria e gafanhotos com sua chave estrangeira

#If i want to make a "Nickname" i use the comand 'AS'
    select g.nome, g.cursopreferido, c.nome, c.ano
    from gafanhotos as g join cursos as c
    on c.idcurso = g.cursopreferido;

#The command 'inner join' consider only the relationships between the tables, but the commando outer join consider all the results of the two tables

#To use the outer join command you write like this:
    select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
    from gafanhotos outer join cursos
    on cursos.idcurso = gafanhotos.cursopreferido;

    #but you have to choose the side that you want to refer, for example i use the 'left outer join' to consider only the "gafanhotos" table
        select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
        from gafanhotos left outer join cursos
        on cursos.idcurso = gafanhotos.cursopreferido;

#And in a similar way i can choose the right side, and set the preference for the table cursos
    select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
    from gafanhotos right outer join cursos
    on cursos.idcurso = gafanhotos.cursopreferido;

# In an explanatory way, the 'inner join' gives the results only from the tables that are related to each other, for example in the 'gafanhotos' table and in the 'cursos' table which gafanhotos have which cursos they prefer. And only the results that actually have links will appear
# In the 'outer join' you will have all the results, being the grasshoppers who like such courses and those who don't like any, but in the 'outer join' you have to specify which side of the relationship will have preference using the 'right outer join' and 'left outer join''.

# De forma explicativa o 'inner join' da os  resultados apenas das tabelas que estão relacionadas entre si, por exemplo na tabela 'gafanhotos' e na tabela 'cursos' quais gafanhotos tem quais cursos preferidos. E apenas os resultados que possuem de fato ligações ira aparecer
# Já no 'outer join' você tera todos os resultados, sendo eles os gafanhotos que gostam de tais cursos e os que não gostam de nenhum, pórem no 'outer join' você tem que expecificar qual lado da relação tera preferencia usando o 'right outer join' e 'left outer join'.

