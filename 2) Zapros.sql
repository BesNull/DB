--01)актеры у фильмов
select RoleName, FIO, Filmtitle
from Actors, Roles
where actors.actorid=roles.actorid


--1) Актеры, которые не играли в фильмах со средним баллом ниже 7
select FIO
from actors
except
select FIO--, roles.filmtitle
from actors, roles
where actors.actorid=roles.actorid
and roles.filmtitle in
(
	select filmtitle
	from reviews
	group by filmtitle
    having avg(score)<7
)
--2) Режжисер, который снимает в одном и том же жанре
select FIO, pf.filmtitle, genre
from  PF, producers, gf
where 
PF.producerid=producers.producerid
and pf.filmtitle=gf.filmtitle
and gf.releasedate=pf.releasedate
group by FIO
having count( distinct genre)=1
--3)
select countryname, count(distinct title), films.releasedate
from Films, cf, gf, countries
where films.title=gf.filmtitle
and cf.countryname=countries.country
and cf.filmtitle=films.title
and Genre="Com"
and films.releasedate like '%2019%' 
group by country

--4)
Update reviews
set score=score+1
where ReviewText like '%soldat%' --or reviewtext like '%Soldat%')
and score <=9
