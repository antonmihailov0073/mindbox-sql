create database [MindBox]
go

use [MindBox]
go

create table [dbo].[Tags]
(
	[Id] int primary key,
	[Name] nvarchar(100) not null
)
go

create table [dbo].[Articles]
(
	[Id] int primary key,
	[Title] nvarchar(150) not null,
	[Text] nvarchar(max) not null,
	[PublishDate] datetimeoffset 
)
go

create table [dbo].[ArticleTags]
(
	[TagId] int references [dbo].[Tags] ([Id]) on delete cascade not null,
	[ArticleId] int references [dbo].[Articles] ([Id]) on delete cascade not null
	primary key ([TagId], [ArticleId])
)
go

