--название и год выхода альбомов, вышедших в 2018 году;
select albom_name, year_of_issuse  from album_list
where
extract(year from year_of_issuse) = '2018';

--название и продолжительность самого длительного трека;
select track_name, track_duration from track_list
order by track_duration desc
limit 1 ;

--название треков, продолжительность которых не менее 3,5 минуты;
select track_name from track_list
where
(track_duration/60) >= 3.5;

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
select "name"  from music_collection
where
extract(year from year_of_issuse) between '2018' and '2020';

--исполнители, чье имя состоит из 1 слова;
select "name"  from performer p
where
--"name" not like '% %';
"name" !~ '[[:space:]]';

--название треков, которые содержат слово "мой"/"my".
select track_name  from track_list tl
where
--LOWER(track_name) SIMILAR TO '%(мой|my)%';
LOWER(track_name) like '%my%'
or LOWER(track_name) like '%мой%';