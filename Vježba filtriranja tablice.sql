use knjiznica;

-- filtiranje tablice vjezba
select * from autor;

-- zadatak: 1 koliko ima autora koji se zovu kao ja?
select * from autor where ime='Domagoj';

-- zadatak: 1.1 koliko ima autora koji se prezivaju Juric
 select * from autor where prezime='Juric';

 -- zadatak:1.2 koliko iam autora kojima je prezime Juric?
 select * from autor where prezime='Juric';

-- zadatak: 2 Cura došla u knjižnicu i želi ?itati knjigu o ljubavi, preoporu?iti joj knjijgu
select * from katalog where naslov like '%ljubav%';

-- zadatak 2.1 ?ovjek je doša u knjižnicu i želi ?itati knjigu o znanosti, preporu?iti knjigu
select * from katalog where naslov like '%znanost%';

-- zadatak 3 na?ite autore koji su ro?eni 1980 godine
select * from autor where datumrodenja between '1980-01-01' and '1980-12-31';

-- zadatak 3.1 na?ite autore koji su ro?eni 1969 godine
select * from autor where datumrodenja between '1969-01-01' and '1969-12-31';

-- zadatak 4 na?ite ženske autore koji su ro?eni 2000 godine

select * from autor where datumrodenja between '2000-01-01' and '2000-12-31'
and ime like '%a%';

-- zadatak 5 izlistajte prezimena autora za koje se nezna datum ro?enja
select prezime from autor where datumrodenja is null;

-- zadatak 5.1 izlistajte sve imena autora za koje se nezna datum ro?enja
select ime from autor where datumrodenja is null;

-- zadatak 5.2 izlistajte sve autore kataloga za koje se zna mjesto
select autor from katalog where mjesto is not null;

