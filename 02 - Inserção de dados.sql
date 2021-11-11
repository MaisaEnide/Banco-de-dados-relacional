*INSERÇÃO DOS DADOS NAS TABELAS DO BANCO DE DADOS RELACIONAL*


//Tabela INSTITUTO
insert into Instituto values (1, 'Ciencias Exatas');
insert into Instituto values (2, 'Ciencias Humanas');
insert into Instituto values (3, 'Ciencias Biologicas');

//Tabela CURSO
insert into Curso values (1001, 'Ciencia da Computacao', 1);
insert into Curso values (1002, 'Administracao de Empresas', 2);

//Tabela DISCIPLINA
insert into Disciplina values (2001, 'Banco de Dados I', 1001);
insert into Disciplina values (2002, 'Engenharia de Software I', 1001);
insert into Disciplina values (2003, 'Banco de Dados II', 1001);
insert into Disciplina values (2004, 'Interface Homem-Maquina', 1001);
insert into Disciplina values (2005, 'Engenharia de Software II', 1001);

//Tabela PROFESSOR
insert into Professor values (3001, 'Camila', 1500);
insert into Professor values (3002, 'Joao', 3000);
insert into Professor values (3003, 'Ana', 3000);
insert into Professor values (3004, 'Pedro', 2500);

//Tabela ALUNO
insert into Aluno values (1, 'Claudia', 'Vila Mariana', 20, 1001, 3001);
insert into Aluno values (2, 'Andrea', 'Lapa', 24, 1001, 3002);
insert into Aluno values (3, 'Regiane', 'Penha', 22, 1001, 3004);
insert into Aluno values (4, 'Rodrigo', 'Sumare', 20, 1002, 3001);
insert into Aluno values (5, 'Renata', 'Vila Mariana', 22, 1002, 3004);

//Tabela ALUNO_DISC (Aluno-Disciplina)
insert into Aluno_Disc values (1, 2001,8);
insert into Aluno_Disc values (1, 2002,7);
insert into Aluno_Disc values (4, 2003,6);
insert into Aluno_Disc values (4, 2004,10);
insert into Aluno_Disc values (4, 2005,8);

//Tabale PROF_DISC (Professor-Disciplina)
insert into Prof_Disc values (3001, 2001, 'Segunda', 201);
insert into Prof_Disc values (3002, 2002, 'Quarta', 104);
insert into Prof_Disc values (3001, 2003, 'Sexta', 105);
insert into Prof_Disc values (3004, 2004, 'Terca', 106);
insert into Prof_Disc values (3002, 2005, 'Quarta', 110);
