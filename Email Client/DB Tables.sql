if not exists (select * from sysobjects where name='Users' and xtype='U')
begin
    create table Users (
		Id int not null IDENTITY(1,1) PRIMARY KEY,
        Username varchar(100) null,
        Password varchar(100) null,     
        UserGroup varchar(100) null,
        Enabled bit null
    )
end
go

if not exists (select * from sysobjects where name='Emails' and xtype='U')
begin
    create table Emails (
		Id int not null IDENTITY(1,1) PRIMARY KEY,
        EmailSubject varchar(100) null,
        Body varchar(max) null,
        EmailFrom varchar(100) null,
        EmailReplyTo varchar(100) null,
        EmailDate varchar(200) null
    )
end
go

if not exists (select * from sysobjects where name='Attachments' and xtype='U')
begin
    create table Attachments (
		Id int not null IDENTITY(1,1) PRIMARY KEY,
		EmailId int not null,
		AttachmentName varchar(max) not null       
    )
end
go