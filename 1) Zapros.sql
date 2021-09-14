
--KR Zapros
 --1) группы, все студенты которых сдали на 4 и 5
 Select distinct GroupNum
From R5, R1
Where R5.FIO = R1.FIO and (ExamRate = 4 OR ExamRate = 5)
group by GroupNum

--пока этот самый правильный
Select *
from R1,R5
where R1.FIO = R5.FIO
Group by GroupNum
having ExamRate=5 OR ExamRate=4


Select *
from R1,R5
where R1.FIO = R5.FIO
Group by GroupNum
having count(ExamRate=3)=1 OR count(ExamRate=2)=1; 
-- 
Select R5.GroupNum
from R1,R5
where R1.FIO = R5.FIO
Group by GroupNum
having count(ExamRate=3)=1 OR count(ExamRate=2)=1; 

--получился вывод чуваков, у которых нет троек и двоек
Select *
From R5
where FIO not in (select FIO
from R1
Where (ExamRate=3 OR ExamRate=2)
)
--ВЕРНО!!!!!!!!!!!!!
Select Distinct GroupNum
 From R5
 Except
 Select GroupNum
 from r1, r5
 where r1.FIO=r5.FIO and (ExamRate<4 OR ExamRate is null)


--1
--Select distinct GroupNum
--from R5
--where FIO in (select FIO 
--from R1
--where (ExamRate=4 or ExamRate=5))

--2
--GroupNum(*)
--From R5, R1
--Where GroupNum not in (select FIO from R1 where (ExamRate=2 OR ExamRate=3))
--Where R5.FIO = R1.FIO and (ExamRate = 4 OR ExamRate = 5)
--group by GroupNum

--2) Дисциплины, по которым нет задолженностей, те.е студентов, получивших "плохо" или не сдавших экзамен
Select distinct DisciplineName
From R1
except
Select DisciplineName
from R1
where ExamRate<3 OR ExamRate is null

-- кто че должен
select disciplinename, FIO
from r2 join r5
on r2.groupnum=r5.groupnum
except
select disciplinename, fio
from r1
where examrate>2

----Верно!!!
select disciplinename
from r2
except
select disciplinename
from r2 join r5
on r2.groupnum=r5.groupnum
where not exists
(
	select *
	from r1
	where examrate>2
	and r1.disciplinename=r2.disciplinename
	and r1.fio=r5.fio
)


--- создать вью
CREATE VIEW Londonstaff
as select distinct disciplinename, FIO
from r2 join r5
on r2.groupnum=r5.groupnum
except
select disciplinename, FIO
from r1
where examrate>2
-- вычесть из вью
select distinct disciplinename
from r2
except
select disciplinename
from londonstaff



--3) Студентов, сдавших несколько экхаменов на одинаковую оценку
Select *
From R1 a
where exists (select *
from r1 b
where (b.FIO==a.FIO)
AND (b.ExamRate=a.ExamRate)
AND (b.DisciplineName<>a.DisciplineName)
AND ExamRate>2
)

или

Select a.FIO
From R1 a, r1 b 
where (b.DisciplineName<>a.DisciplineName)
and (b.FIO==a.FIO)
and (b.ExamRate=a.ExamRate)
AND a.ExamRate>2
group by a.FIO

--4) Преподавателей, на экзаменах у которых не было неявок
--Работает если у препода один предмет
Select *
from R3 a where DisciplineName not in
(select DisciplineName
from R1 b
where ExamRate is null
--AND a.DisciplineName=b.DisciplineName
)
--ВЕРНО!!!!!!!!!!!
Select distinct TeachName
from r3
except
Select TeachName
from R3 a where DisciplineName  in
(select DisciplineName
from R1 b
where ExamRate is null
)

--5) Группы, все студенты которых сдали максимум один экзамен
выведены студенты, сдавшие экзамен
Select GroupNum, R1.FIO, ExamRate, DisciplineName
from R1, R5
where R1.FIO=R5.FIO and ExamRate>2
Group By GroupNum, ExamRate, DisciplineName
Having count(R5.FIO)=1

--верно!!!!!!!!!!!!!
Select GroupNum--, R1.FIO, ExamRate, DisciplineName
from R1, R5
where R1.FIO=R5.FIO and ExamRate>2
Group By GroupNum
Having count(ExamRate)=1









--студенты, которые не явились
Select GroupNum, FIO
from R5 a where FIO in
(select FIO
from R1 b
where ExamRate is null 
)
