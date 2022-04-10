Exercios aula 12 - guanabara

1. Uma lista com o nome de todas as gafanhotas
    select * from gafanhotos
    where sexo = 'F';

2. Uma lista com os dados de todos aquele que nasceram entre 1/jan/2000 e 31/dez/2015
    select * from gafanhotos
    where nascimento between '2000-01-01' and '2015-12-31'
    order by nascimento;


3. Uma lista com o nome de todos os homens que trabalham como programadores
    select * from gafanhotos
    where profissao = 'programador' and sexo = 'M'
    order by nome;

4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J
    select * from gafanhotos
    where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'J%'; 

5. uma lista com o nome e a nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100 kg
    select nome, nacionalidade from gafanhotos
    where nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100.00' 
    order by nome;

6. Qual é maior altura entre ganhafanhotos homens que moram no Brasil
    select max(altura) from gafanhotos
    where nacionalidade = 'Brasil' and sexo = 'M'
    order by nome; 

7. Qual é a média de peso de gafanhotos cadastrados
    select avg(peso) from ganhafanhotos;


8. Qual é o menor peso entre ganhafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/dez/2000
    select min(peso) from gafanhotos
    where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';


9. Quantas gafanhotas mulheres tem mais de 1.90 de altura
    select count(*) From gafanhotos
    where sexo = 'F' and altura > '1.90'
    order by nome;
