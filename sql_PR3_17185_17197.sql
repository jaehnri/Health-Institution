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
	idExame int not null,
	idDiagnostico int not null,
	Constraint FK_idMedico foreign key (idMedico) references Medico(idMedico),
	Constraint FK_idPaciente foreign key (idPaciente) references Paciente(idPaciente),
	Constraint FK_idExame foreign key (idExame) references Exame(idExame),
	Constraint FK_idDiagnostico foreign key (idDiagnostico) references Diagnostico(idDiagnostico),
	data datetime not null
	
)

create table Exame
(
	idExame int identity(1, 1) primary key,
	idEspecialidade int not null,
	Constraint FK_exameEspecialidade foreign key (idEspecialidade) references Especialidade(idEspecialidade),
	nome varchar(50) not null,
)

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

/*create table Agenda
(
	idMedico int not null,
	idConsulta int not null,
	idPaciente int not null,
	Constraint FK_idMedico foreign key (idMedico) references Medico(idMedico),
	Constraint FK_idPaciente foreign key (idPaciente) references Paciente(idPaciente),
	Constraint FK_idConsulta foreign key (idConsulta) references Consulta(idConsulta)
) */

create table Especialidade
(
	idEspecialidade int identity (1,1) primary key,
	nome varchar(30) not null
)

create proc proxConsultas 
As

DECLARE @data datetime
SELECT @data = DATEADD(day, 2, GETDATE()) 

Begin
Select e.nome as Exame, m.nome as Médico, p.nome as Paciente, p.email as Email , c.data as Data, c.hora as Hora from medico as m, exame as e, paciente as p, consulta as c where c.data>=GETDATE() and c.data <= @data and p.idPaciente = c.idPaciente and c.idMedico = m.idMedico and c.idExame = e.idExame
End

exec proxConsultas


drop table consulta 
drop table paciente
drop table medico 
drop table Secretaria
drop table Especialidade
drop table MedicoEspecialidade
drop table agenda
drop table diagnostico
drop table exame

insert into especialidade values ('Psiquiatra')
insert into especialidade values ('Cardiologista')
insert into especialidade values ('Dermatologista')
insert into especialidade values ('Geriatra')
insert into especialidade values ('Otorrinolaringologista')
insert into especialidade values ('Reumatologista')
insert into especialidade values ('Ortopedista')

