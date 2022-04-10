Inner join with a lot of tables

#when you use the join in a 'n for n' relationship you have to create a new table  following the 'DER' diagram
#remember that the relation 'n for n' is -> Table.gafanhoto - assiste - table.curso   with a table in the middle to put the foreign keys.

#Firt we will start creating the table
    create table gafanhoto_assiste_curso(
        id int not null auto_increment,
        data date,
        idgafanhoto int,
        idcurso,
        primary key (id),
        foreign key (idgafanhotos) references  gafanhotos (id),
        foreign key (idcurso) references  cursos (idcurso),
    ) default charset = utf8;

#Now we will insert datas in that tables
    insert into gafanhoto_assiste_curso values
    (default, '2014-03-01', '1', '2'),
    (default, '2015-12-22', '3', '6'),
    (default, '2014-01-01', '22', '12'),
    (default, '2016-05-12', '1', '19');

#Now we will do the junctions
    select * from gafanhotos g
    join gafanhoto_assiste_curso a 
    on g.id = a.idgafanhoto;

        #To show the name and some specifications of the table
            select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g
            join gafanhoto_assiste_curso a 
            on g.id = a.idgafanhoto;

#Now we will search for a data from a table on the other side of the relation using another 'join'
    select g.nome, c.nome from gafanhotos g
    join gafanhoto_assiste_curso a
    on g.id = a.idgafanhoto
    join cursos c
    on a.idcurso = c.idcurso;