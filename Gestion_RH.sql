create database Gestion_RH
go
use Gestion_RH
drop database Gestion_RH
/* ----------- La Cr�ation de la table Employ� ----------- */
create table employ�(
	matricule varchar(40) primary key,
	nom_employ� varchar(30),
	pr�nom_employ� varchar(30),
	date_embauche date,
	salaire float, /* I NEED TO CHANGE money BY float */
	age int,
	adresse varchar(40),
	poste_travaille varchar(40),
	nationalit� varchar(20),
	phone varchar(10),
	sexe varchar(6),
	carte_identit� varchar(12),
	date_naissance date,
	compte_bancaire varchar(35)
);
select * from employ�
go
update employ�
set nom_employ� = 'hansary', pr�nom_employ� = 'aymane'
where matricule = '2'
go
/* --------------------- */
create proc proc_ajouter_emp_cmpt @matricule varchar(40), @nom_employ� varchar(30),@pr�nom_employ� varchar(30),
@date_embauche date,@salaire float, @age int, @adresse varchar(40), @poste_travaille varchar(40), @nationalit� varchar(20),
@phone varchar(10), @sexe varchar(6), @carte_identit� varchar(12), @date_naissance date, @compte_bancaire varchar(35)
as
begin
	insert into employ� values(@matricule, @nom_employ�, @pr�nom_employ�, @date_embauche, @salaire, @age, @adresse, @poste_travaille,
	@nationalit�, @phone, @sexe, @carte_identit�, @date_naissance, @compte_bancaire);

	insert into compte values(@matricule,@carte_identit�,@carte_identit�,@carte_identit�);
end
					/* ---------------------------------------------- */
exec proc_ajouter_emp_cmpt @matricule='A3', @nom_employ�='moujahid', @pr�nom_employ�='Ali', @date_embauche='2021-01-01',
@salaire=3500, @age=20, @adresse='maroc, casablanca', @poste_travaille='d�veloppeur', @nationalit�='marocain', @phone=0623091445,
@sexe='Autre', @carte_identit�='BB202121', @date_naissance='2001-03-24', @compte_bancaire='AZE 87D 09J K65';

exec proc_ajouter_emp_cmpt @matricule='2', @nom_employ�='karrach', @pr�nom_employ�='hassan', @date_embauche='2020-01-01',
@salaire=3500, @age=22, @adresse='maroc, casablanca', @poste_travaille='d�signer', @nationalit�='marocain', @phone=0623434445,
@sexe='M', @carte_identit�='BE9871', @date_naissance='1998-03-24', @compte_bancaire='RZE SDS 98J G65';

exec proc_ajouter_emp_cmpt @matricule='1', @nom_employ�='karrach', @pr�nom_employ�='hassan', @date_embauche='2020-01-01',
@salaire=3500, @age=22, @adresse='maroc, casablanca', @poste_travaille='d�signer', @nationalit�='marocain', @phone=0623434445,
@sexe='Male', @carte_identit�='BE987150', @date_naissance='1998-03-24', @compte_bancaire='RZE SDS 98J G65';
/* --------------------- */

select poste_travaille from employ� where matricule = '1';
select * from compte;
select * from employ�;
delete employ� where matricule = '2'
go
/* ----------- La Cr�ation de la table Compte ----------- */
--create table compte(
--	matricule varchar(40) primary key foreign key references employ�(matricule) on delete cascade,
--	nom_utilisateur varchar(50),
--	mot_passe varchar(40),
--	couleurPr�f�r�e varchar(20),
--	amiPr�f�r�e varchar(20)
--);

create table compte(
	matricule varchar(40) foreign key references employ�(matricule) on delete cascade,
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
/* ----------- La Cr�ation de la table Projet ----------- */
--ALTER TABLE projet
--DROP CONSTRAINT FK__projet__matricul__29572725;
create table projet(
	r�f�rence varchar(40) primary key,
	nom_projet varchar(50),
	description_projet varchar(60),
	budget float,
	matricule_ch�f_projet varchar(40),
	nom_ch�f_projet varchar(50),
	date_d�but date,
	date_fin date
);
go
insert into projet values('A3','Gestion RH','Cette Projet gestioner les employ�es',20000,'Z21','Aymane Hansary','2020-04-02','2021-08-21'),
('A4','Gestion Cars','Cette Projet gestioner les voitures de locastion',100000,'Z2','Ali Moujahid','2011-04-02','2012-12-30');
/*    -----------       
DECLARE @a AS VARCHAR(100) = '02/04/2020'
CAST(@a as date)
print ''

CREATE TRIGGER truc
AFTER UPDATE date_d�but ON projet
AS
begin
UPDATE projet SET date_d�but = CAST(date_d�but as date)
end
       ----------   */
insert into projet values('A6','ZAA','ZAA',20000,'Z21','Aymane Hansary','2011-04-02','2011-04-02')
go
select * from projet;
go
/* ----------- La Cr�ation de la table Liste_Affectation ---------- */
create table Liste_Affectation(
	Id int identity,
	matricule varchar(40),
	nom_employ� varchar(50),
	pr�nom_employ� varchar(50),
	poste_travaille varchar(40),
	r�f�rence varchar(40),
	nom_projet varchar(50),
	nom_ch�f_projet varchar(50),
	primary key(matricule, r�f�rence, Id)
);
go
update Liste_Affectation 
set poste_travaille = 'poste_trav'
where id = 22

select count(*) from employ�; select count(*) from projet;

insert into Liste_Affectation values('Z21','Aymane','Hansary','devloper','A1','Gestion RH','Aymane Hansary');
insert into Liste_Affectation values('Z2','Ali','Moujahid','devloper','A1','Gestion RH','Aymane Hansary');
insert into Liste_Affectation values('Z21','Aymane','Hansary','devloper','A2','Gestion Cars','Ali Moujahid');
insert into Liste_Affectation values('Z2','Ali','Moujahid','devloper','A2','Gestion Cars','Ali Moujahid');
go
select * from Liste_Affectation;
go
/* -------- Select All Tables-------- */
select * from compte;
select * from employ�;
select * from projet;
select * from Liste_Affectation;

select matricule from compte where mot_passe = 'Azerty0294' /* this lign to know the 'matricule' of user to use it in [session] */

/* -------- Une procedur pour 'insertion' de table Employe & Compte -------- */
create proc ajouter_Liste_Affectation @matricule_ varchar(40), @nom_emp varchar(40),@pr�nom_emp varchar(40),
@pst_travaile varchar(40),@r�f�rence_ varchar(40), @nom_projet_ varchar(40), @nom_ch�f_prj varchar(40)
as
if exists(select e.matricule,p.r�f�rence from employ� e, projet p where e.matricule = @matricule_ and p.r�f�rence = @r�f�rence_) 
begin
	insert into Liste_Affectation values(@matricule_, @nom_emp, @pr�nom_emp, @pst_travaile, @r�f�rence_, @nom_projet_, @nom_ch�f_prj)
end
else
begin
	print'------------ EROOR THIS MATRICULE AND REFERENCE NOT EXISTS ------------'
end
/* ---------- */
exec ajouter_Liste_Affectation @matricule_ = 'Z2', @nom_emp = 'Abdelah', @pr�nom_emp = 'Ben mbarek',
@pst_travaile = 'comptabilit�',@r�f�rence_ = 'A1', @nom_projet_ = 'gestion_gym', @nom_ch�f_prj = 'aymane';
/* ---------- */
