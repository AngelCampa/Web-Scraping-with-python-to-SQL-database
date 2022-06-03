set SQL_SAFE_UPDATES=0;
SET GLOBAL sql_mode='traditional';

select * from discurso;
select * from multimedia;

select Discurso_id_discurso, url_imagen
FROM multimedia
where url_imagen is not null
and url_video is not null;

select Discurso_id_discurso
FROM multimedia
where url_audio is null;

select count(*)
from discurso
where Tipo = 'Matutina';

SELECT COUNT(*) as reelección
FROM discurso 
WHERE Texto like "%reelección%";

SELECT COUNT(*) as neoliberal
FROM discurso 
WHERE Texto like "%neoliberal%";

SELECT COUNT(*) as pueblo
FROM discurso 
WHERE Texto like "%pueblo%";

SELECT COUNT(*) as otros_datos
FROM discurso 
WHERE Texto like "%otros datos%";

SELECT COUNT(*) as corrupción
FROM discurso 
WHERE Texto like "%corrupción%";

select Titulo, Tipo
FROM discurso
where Tipo = 'Matutina';

select count(distinct Tipo)
from discurso;

select *
from discurso
inner join multimedia
on discurso.id_discurso = multimedia.Discurso_id_discurso
order by Tipo;

select id_discurso, Titulo, url_imagen
from discurso
inner join multimedia
on discurso.id_discurso = multimedia.Discurso_id_discurso
order by id_discurso desc;




