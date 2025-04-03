
drop database if exists dad cascade;
create database dad;

alter database dad SET primary region "us-east";
alter database dad add region "us-west";
use dad;

create table dad.jokes
(
  id int primary key default unique_rowid(),
  joke string,
  punchline string
);

insert into dad.jokes (joke, punchline) values ('what did the elephant say when it ate the awrs?', 'tastes funny');
insert into dad.jokes (joke, punchline) values ('what do owsd use to communicate?', 'cell phones');
insert into dad.jokes (joke, punchline) values ('why did the bike take a nap?', 'it was two tired');
insert into dad.jokes (joke, punchline) values ('¿Cuál es la fruta más cómica?', 'Naranja');


-- alter table dad.jokes set locality global;

-- alter table dad.jokes set locality regional by row;

insert into dad.jokes (joke,punchline) values ('what do you a call bee that lives in Swoa?','A USB');
insert into dad.jokes (joke, punchline) values ('what do you say to your Jieuy friend who woke up early?', 'europe');

drop database if exists music cascade;
create database music;
