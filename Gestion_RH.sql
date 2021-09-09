create database Gestion_RH
go
use Gestion_RH
drop database Gestion_RH
/* ----------- La Création de la table Employé ----------- */
create table employé(
	matricule varchar(40) primary key,
	nom_employé varchar(30),
	prénom_employé varchar(30),
	date_embauche date,
	salaire float, /* I NEED TO CHANGE money BY float */
	age int,
	adresse varchar(40),
	poste_travaille varchar(40),
	nationalité varchar(20),
	phone varchar(10),
	sexe varchar(6),
	carte_identité varchar(12),
	date_naissance date,
	compte_bancaire varchar(35)
);
select * from employé
go
update employé
set nom_employé = 'hansary', prénom_employé = 'aymane'
where matricule = '2'
go
/* --------------------- */
create proc proc_ajouter_emp_cmpt @matricule varchar(40), @nom_employé varchar(30),@prénom_employé varchar(30),
@date_embauche date,@salaire float, @age int, @adresse varchar(40), @poste_travaille varchar(40), @nationalité varchar(20),
@phone varchar(10), @sexe varchar(6), @carte_identité varchar(12), @date_naissance date, @compte_bancaire varchar(35)
as
begin
	insert into employé values(@matricule, @nom_employé, @prénom_employé, @date_embauche, @salaire, @age, @adresse, @poste_travaille,
	@nationalité, @phone, @sexe, @carte_identité, @date_naissance, @compte_bancaire);

	insert into compte values(@matricule,@carte_identité,@carte_identité,@carte_identité);
end
					/* ---------------------------------------------- */
exec proc_ajouter_emp_cmpt @matricule='A3', @nom_employé='moujahid', @prénom_employé='Ali', @date_embauche='2021-01-01',
@salaire=3500, @age=20, @adresse='maroc, casablanca', @poste_travaille='développeur', @nationalité='marocain', @phone=0623091445,
@sexe='Autre', @carte_identité='BB202121', @date_naissance='2001-03-24', @compte_bancaire='AZE 87D 09J K65';

exec proc_ajouter_emp_cmpt @matricule='2', @nom_employé='karrach', @prénom_employé='hassan', @date_embauche='2020-01-01',
@salaire=3500, @age=22, @adresse='maroc, casablanca', @poste_travaille='désigner', @nationalité='marocain', @phone=0623434445,
@sexe='M', @carte_identité='BE9871', @date_naissance='1998-03-24', @compte_bancaire='RZE SDS 98J G65';

exec proc_ajouter_emp_cmpt @matricule='1', @nom_employé='karrach', @prénom_employé='hassan', @date_embauche='2020-01-01',
@salaire=3500, @age=22, @adresse='maroc, casablanca', @poste_travaille='désigner', @nationalité='marocain', @phone=0623434445,
@sexe='Male', @carte_identité='BE987150', @date_naissance='1998-03-24', @compte_bancaire='RZE SDS 98J G65';
/* --------------------- */

select poste_travaille from employé where matricule = '1';
select * from compte;
select * from employé;
delete employé where matricule = '2'
go
/* ----------- La Création de la table Compte ----------- */
--create table compte(
--	matricule varchar(40) primary key foreign key references employé(matricule) on delete cascade,
--	nom_utilisateur varchar(50),
--	mot_passe varchar(40),
--	couleurPréférée varchar(20),
--	amiPréférée varchar(20)
--);

create table compte(
	matricule varchar(40) foreign key references employé(matricule) on delete cascade,
	nom_utilisateur varchar(50),
	mot_passe varchar(40),
	Nom_grand_pere varchar(20) unique,
	primary key(matricule, nom_utilisateur, Nom_grand_pere)
);
--drop table compte
go
insert into compte values('A1','aa','aa','aa');
insert into compte values('A2','admin','admin','admin');
insert into compte values('A3','mm','mm','mm');
insert into compte values('A4','tt','tt','tt');
go
select * from compte;

update compte
set mot_passe = 'bb', nom_utilisateur = 'bb', Nom_grand_pere = 'bb'
where matricule = 'A4'

select matricule, nom_utilisateur, mot_passe from compte where Nom_grand_pere = 'RED';

select count(*) from compte where nom_utilisateur = 'RED';
go
/* ----------- La Création de la table Projet ----------- */
--ALTER TABLE projet
--DROP CONSTRAINT FK__projet__matricul__29572725;
create table projet(
	référence varchar(40) primary key,
	nom_projet varchar(50),
	description_projet varchar(60),
	budget float,
	matricule_chéf_projet varchar(40),
	nom_chéf_projet varchar(50),
	date_début date,
	date_fin date
);
go
insert into projet values('A3','Gestion RH','Cette Projet gestioner les employées',20000,'Z21','Aymane Hansary','2020-04-02','2021-08-21'),
('A4','Gestion Cars','Cette Projet gestioner les voitures de locastion',100000,'Z2','Ali Moujahid','2011-04-02','2012-12-30');
/*    -----------       
DECLARE @a AS VARCHAR(100) = '02/04/2020'
CAST(@a as date)
print ''

CREATE TRIGGER truc
AFTER UPDATE date_début ON projet
AS
begin
UPDATE projet SET date_début = CAST(date_début as date)
end
       ----------   */
insert into projet values('A6','ZAA','ZAA',20000,'Z21','Aymane Hansary','2011-04-02','2011-04-02')
go
select * from projet;
go
/* ----------- La Création de la table Liste_Affectation ---------- */
create table Liste_Affectation(
	Id int identity,
	matricule varchar(40),
	nom_employé varchar(50),
	prénom_employé varchar(50),
	poste_travaille varchar(40),
	référence varchar(40),
	nom_projet varchar(50),
	nom_chéf_projet varchar(50),
	primary key(matricule, référence, Id)
);
go
update Liste_Affectation 
set poste_travaille = 'poste_trav'
where id = 22

select count(*) from employé; select count(*) from projet;

insert into Liste_Affectation values('Z21','Aymane','Hansary','devloper','A1','Gestion RH','Aymane Hansary');
insert into Liste_Affectation values('Z2','Ali','Moujahid','devloper','A1','Gestion RH','Aymane Hansary');
insert into Liste_Affectation values('Z21','Aymane','Hansary','devloper','A2','Gestion Cars','Ali Moujahid');
insert into Liste_Affectation values('Z2','Ali','Moujahid','devloper','A2','Gestion Cars','Ali Moujahid');
go
select * from Liste_Affectation;
go
/* -------- Select All Tables-------- */
select * from compte;
select * from employé;
select * from projet;
select * from Liste_Affectation;

select matricule from compte where mot_passe = 'Azerty0294' /* this lign to know the 'matricule' of user to use it in [session] */

/* -------- Une procedur pour 'insertion' de table Employe & Compte -------- */
create proc ajouter_Liste_Affectation @matricule_ varchar(40), @nom_emp varchar(40),@prénom_emp varchar(40),
@pst_travaile varchar(40),@référence_ varchar(40), @nom_projet_ varchar(40), @nom_chéf_prj varchar(40)
as
if exists(select e.matricule,p.référence from employé e, projet p where e.matricule = @matricule_ and p.référence = @référence_) 
begin
	insert into Liste_Affectation values(@matricule_, @nom_emp, @prénom_emp, @pst_travaile, @référence_, @nom_projet_, @nom_chéf_prj)
end
else
begin
	print'------------ EROOR THIS MATRICULE AND REFERENCE NOT EXISTS ------------'
end
/* ---------- */
exec ajouter_Liste_Affectation @matricule_ = 'Z2', @nom_emp = 'Abdelah', @prénom_emp = 'Ben mbarek',
@pst_travaile = 'comptabilité',@référence_ = 'A1', @nom_projet_ = 'gestion_gym', @nom_chéf_prj = 'aymane';
/* ---------- */
