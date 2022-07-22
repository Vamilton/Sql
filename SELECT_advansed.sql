select a.name, count(g.name) from artist a
inner join artist_genre ag on a.id = ag.artistid
inner join genre g on ag.genreid = g.id
group by a.name;

select count(t.name) from track t
join albums a on a.id = t.albumid
where a.year between 2019 and 2020;

select a.name, avg(t.time) from track t
join albums a on a.id = t.albumid
group by a.name;

select a.name from artist a
join albums a2 on a.id = a2.id
where a2.year != 2020;

WITH numberInfo AS(
select a.name, count(g.name) as ccc from albums a
inner join artist_albums aa on a.id = aa.albumid
inner join artist a2 on aa.artistid = a2.id
inner join artist_genre ag on a2.id = ag.artistid
inner join genre g on ag.genreid = g.id
group by a.name
)
select name FROM numberInfo
where ccc > 1;

select t.name from track t
left join collection_list cl on t.id = cl.trackid
left join collection c on cl.collid = c.id
where c.name is null;


WITH timetime as(
select a.name, t.time from artist a
inner join artist_albums aa on a.id = aa.artistid
inner join albums a2 on aa.albumid = a2.id
inner join track t on a2.id = t.albumid
)
select name from timetime
	where time = (SELECT min(time) FROM timetime)
group by name;


with howmany as (
select a.name, count(a.name) from albums a
inner join track t on a.id = t.albumid
group by a.name
)
select name from howmany
where count = (select min(count) from howmany);
