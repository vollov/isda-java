create table T_I18N_VERTICAL(
    CODE      varchar2(100) not null,
    LOCALE    varchar2(100) not null,	
    MSG       varchar2(255) not null
); 

alter table T_I18N_VERTICAL
  add constraint PK_T_I18N_VERTICAL primary key (CODE, LOCALE);
  
alter table T_I18N_VERTICAL
  add constraint U_T_I18N_VERTICAL unique (CODE, LOCALE);
  
insert into T_I18N_VERTICAL values ('app.startup.successful', 'EN', 'Application started.');
insert into T_I18N_VERTICAL values ('app.startup.successful', 'DE', 'Applikation gestartet.');
insert into T_I18N_VERTICAL values ('app.startup.successful', 'RU', 'xxxx.');