create table Medico
(
	idMedico int identity(1, 1) primary key,
	nome varchar(30) not null,
	email varchar(30) not null,
	senha varchar(50) not null,
	telefone varchar(11) not null
)

create table MedicoEspecialidade
(
	idMedico int not null,
	idEspecialidade int not null
	Constraint FK_medico foreign key (idMedico) references Medico(idMedico),
	Constraint FK_especialidade foreign key (idEspecialidade) references Especialidade(idEspecialidade),
)

create table Paciente
(
	idPaciente int identity(1, 1) primary key,
	nome varchar(30) not null,
	email varchar(30) not null,
	senha varchar(50) not null,
	telefone varchar (11) not null,
	consultaMarcada int not null
)



create table Consulta
(
	idConsulta int identity(1, 1) primary key,
	idMedico int not null,
	idPaciente int not null,
	dataHora datetime not null,
	duracao varchar(5) not null,
	statusConsulta varchar(15) not null,
	avaliacao varchar(10),
	sintomas ntext,
	exames ntext,
	medicacoes ntext,
	observacoes ntext,
	Constraint FK_idMedico foreign key (idMedico) references Medico(idMedico),
	Constraint FK_idPaciente foreign key (idPaciente) references Paciente(idPaciente),
)

create table Exame
(
	idExame int identity(1, 1) primary key,
	idEspecialidade int not null,
	Constraint FK_exameEspecialidade foreign key (idEspecialidade) references Especialidade(idEspecialidade),
	nome varchar(50) not null,
)

create table Mes
(
	idMes int primary key,
	nomeMes varchar(20)
)

insert into Mes values (1, 'Janeiro')
insert into Mes values (2, 'Fevereiro')
insert into Mes values (3, 'Março')
insert into Mes values (4, 'Abril')
insert into Mes values (5, 'Maio')
insert into Mes values (6, 'Junho')
insert into Mes values (7, 'Julho')
insert into Mes values (8, 'Agosto')
insert into Mes values (9, 'Setembro')
insert into Mes values (10, 'Outubro')
insert into Mes values (11, 'Novembro')
insert into Mes values (12, 'Dezembro')


create table Diagnostico 
(
	idDiagnostico int identity (1,1) primary key,
	Diagnostico nchar not null,
)
 
create table Secretaria
(
	idSecretaria int identity(1, 1) primary key,
	nome varchar(30) not null,
	email varchar(30) not null,
	senha varchar(50) not null,
	telefone varchar(11) not null
)

create table Especialidade
(
	idEspecialidade int identity (1,1) primary key,
	nome varchar(30) not null
)



create proc proxConsultas 
As

	
BEGIN
	DECLARE @data datetime
	
	SELECT @data = DATEADD(day, 2, GETDATE())
	 
	Select m.nome as Médico, p.nome as Paciente, p.email as 'E-mail', c.dataHora as 'Data e Hora'  from medico as m, paciente as p, consulta as c where c.dataHora>=GETDATE() and c.dataHora <= @data and p.idPaciente = c.idPaciente and c.idMedico = m.idMedico

END

create proc ConsultasNomeMedico @nomeMedico varchar(30)
As
BEGIN

 select p.nome as Paciente, c.dataHora as Data, e.nome as Exame from medico as m, consulta as c, paciente as p, exame as e where c.idMedico = m.idMedico and m.nome = @nomeMedico and p.idPaciente = c.idPaciente and e.idExame = c.idExame

END

create proc agenda @idMedico int
as
BEGIN
	select c.idConsulta as 'ID', dataHora as DataHora, p.nome as Nome from consulta as c, paciente as p, medico as m where c.idMedico = @idMedico and m.idMedico = c.idMedico and c.idPaciente = p.idPaciente and c.statusConsulta = 'PENDENTE'
END


SELECT * FROM Consulta

select m.nome as Médico, count(distinct idPaciente) as Pacientes from Consulta as c, Medico as m where m.idMedico = c.idMedico and c.statusConsulta != 'CANCELADA' group by m.nome

select m.nome as Mes, count(c.idConsulta) from consulta as c, mes as m where


select * from Consulta
select * from paciente
select * from Especialidade
select * from Medico
select * from Exame

update Consulta set avaliacao = NULL where idConsulta = 2


insert into Especialidade values ('Pediatra')
insert into Especialidade values ('Urologista')
insert into Especialidade values ('Ginecologia')
insert into especialidade values ('Psiquiatra')
insert into especialidade values ('Cardiologista')
insert into especialidade values ('Dermatologista')
insert into especialidade values ('Geriatra')
insert into especialidade values ('Otorrinolaringologista')
insert into especialidade values ('Reumatologista')
insert into especialidade values ('Ortopedista')
insert into especialidade values ('Clinico Geral')

insert into Exame values(4, 'Exame de geriatra')
insert into Exame values(4, 'Exame de geriatra 2')


drop table consulta 
drop table paciente
drop table medico 
drop table Secretaria
drop table Especialidade
drop table MedicoEspecialidade
drop table agenda
drop table diagnostico
drop table exame



create table SolicitacaoDeConsulta
(
	idSolicitacao int identity(1, 1) primary key,
	idPaciente int not null,
	statusConsulta varchar(15) not null,
	sintomas ntext,
	exames ntext,
	medicacoes ntext,
	observacoes ntext,
	Constraint FRK_idPaciente foreign key (idPaciente) references Paciente(idPaciente),
)




select c.idConsulta as ID, m.nome as Medico, c.sintomas as Sintomas, c.exames as Exames, c. medicacoes as Medicações, c.observacoes as Observações from consulta as c, paciente as p, medico as m where m.idMedico = c.idMedico and c.idPaciente = p.idPaciente and p.nome = @nomePaciente and c.statusConsulta != 'PENDENTE' and c.statusConsulta != 'SOLICITACAO' and c.statusConsulta != 'CANCELADA'