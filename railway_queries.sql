-- two insert queries
insert into passenger values
(4, 'shashi', 22, 8738948),
(5, 'sandeep', 23, 8938493);


-- two update queries
update passenger
set age = 24
where name = 'shashi';

update passenger
set name = 'abdul'
where passenger_id = 5;


-- one delete query
delete from passenger
where name = 'abdul';


-- one select query
select * from passenger;


-- two join stmts
select t.train_name, t.capacity, s.departure_time
from train t left join schedule s
on t.train_id = s.train_id;

select s.train_id, st.station_name, s.departure_time
from station st right join schedule s
on s.from_station = st.station_id;


-- two summary stmts
select count(passenger_id), age from passenger group by age;

select sum(no_of_tracks) from station;


-- one multi-query 
select p.name, t.seat_num
from passenger p, ticket t
where p.passenger_id = t.passenger_id;


-- query of choice
select station_name, no_of_tracks from station;


