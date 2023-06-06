use knjiznica;

-- Zadatak 1: Izlistajte sva imena i prezimena autora
select * from autor;

-- Zadatak 2: Izlistajte sve naslove knjiga u katalogu koje u sebi sadrže niz znakova ljub
select * from katalog where naslov like 'ljub%';

-- Zadatak 3: Izlistajte sva mjesta koji imaju definiran poštanski broj
select * from mjesto where postanskiBroj is not null;

-- Zadatak 4: Izlistajte nazive mjesta ?ija šifra nije izme?u 2000 i 3000
select * from mjesto where (sifra<2000 and sifra>3000);

-- Zadatak 5: Postoji li u Hrvatsoj mjesto koje po?inje sa slovom Y?
select * from mjesto where naziv like 'Y%';

-- Zadatak 6: Koliko je autora ro?eno 7. Prosinca 1980.?
select * from autor where datumrodenja='1980-12-07';

-- Zadatak 7: Izlistajte sve aktivne izdava?e ?iji naziv završava sa znakom . (to?ka)
select * from izdavac where naziv 

-- Zadatak 8: Izlistajte sve neaktivne izdava?e koji nemaju šifre 346, 234 i 589
select * from izdavac where not (sifra=346 and sifra=234 and sifra=589);

-- Zadatak 9: Izlistajte sve kataložne zapise ?ija je šifra ve?a od 3000 ili naslov u sebi sadrži rije? ljubav
select * from katalog where sifra>3000 or naslov like 'ljubav%';

