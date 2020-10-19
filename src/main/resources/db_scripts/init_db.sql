drop table if exists equipment;
drop table if exists character;
drop table if exists server;
drop table if exists character_class;
drop table if exists weapon;
drop table if exists legs;
drop table if exists chest;
drop table if exists boots;
drop table if exists gloves;
drop table if exists helmet;
drop table if exists shield;
drop table if exists ring;
drop table if exists necklace;
drop table if exists earring;
drop sequence if exists global_seq;

create sequence global_seq start with 100;

create table server (
    id integer primary key default nextval('global_seq'),
    name varchar not null
);
create unique index server_unique_name_idx on server (name);

create table character_class (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    description varchar not null,
    image_url varchar not null
);
create unique index character_class_unique_name_idx on character_class (name);

create table character (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    level integer not null,
    race varchar not null,
    sex varchar not null,
    class_id integer not null,
    server_id integer not null,
    foreign key (class_id) references character_class (id),
    foreign key (server_id) references server (id)
);
create unique index character_unique_name_server_id_idx on character (name, server_id);

create table weapon (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_atk integer not null,
    m_atk integer not null,
    attack_speed varchar not null,
    soulshots_consume integer not null,
    spiritshots_consume integer not null,
    type varchar not null
);
create unique index weapon_unique_name_idx on weapon (name);

create table legs (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    type varchar not null
);
create unique index legs_unique_name_idx on legs (name);

create table chest (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    type varchar not null
);
create unique index chest_unique_name_idx on chest (name);

create table boots (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null
);
create unique index boots_unique_name_idx on boots (name);

create table gloves (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null
);
create unique index gloves_unique_name_idx on gloves (name);

create table helmet (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null
);
create unique index helmet_unique_name_idx on helmet (name);

create table shield (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    chance_to_parry integer not null
);
create unique index shield_unique_name_idx on shield (name);

create table ring (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    bonus varchar default null
);
create unique index ring_unique_name_idx on ring (name);

create table necklace (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    bonus varchar default null
);
create unique index necklace_unique_name_idx on necklace (name);

create table earring (
    id integer primary key default nextval('global_seq'),
    name varchar not null,
    weight integer not null,
    price bigint not null,
    image_url varchar default null,
    grade varchar not null,
    p_def integer not null,
    m_def integer not null,
    mp_bonus integer not null,
    bonus varchar default null
);
create unique index earring_unique_name_idx on earring (name);

create table equipment (
    id integer primary key default nextval('global_seq'),
    character_id integer not null,
    weapon_id integer default null,
    chest_id integer default null,
    legs_id integer default null,
    boots_id integer default null,
    gloves_id integer default null,
    helmet_id integer default null,
    shield_id integer default null,
    ring1_id integer default null,
    ring2_id integer default null,
    necklace_id integer default null,
    earring1_id integer default null,
    earring2_id integer default null,
    foreign key (character_id) references character (id),
    foreign key (weapon_id) references weapon (id),
    foreign key (chest_id) references chest (id),
    foreign key (legs_id) references legs (id),
    foreign key (boots_id) references boots (id),
    foreign key (gloves_id) references gloves (id),
    foreign key (helmet_id) references helmet (id),
    foreign key (shield_id) references shield (id),
    foreign key (ring1_id) references ring (id),
    foreign key (ring2_id) references ring (id),
    foreign key (necklace_id) references necklace (id),
    foreign key (earring1_id) references earring (id),
    foreign key (earring2_id) references earring (id)
);
create unique index equipment_unique_character_id_idx on equipment (character_id);




