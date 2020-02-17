use [MindBox]
go

insert [dbo].[Articles] values
(1, 'Title1', 'Text1', '2019-12-25'),
(2, 'Title2', 'Text2', '2020-01-05'),
(3, 'Title3', 'Text3', '2020-01-13'),
(4, 'Title4', 'Text4', '2020-02-01')

insert [dbo].[Tags] values
(1, 'hot news'),
(2, 'it'),
(3, 'health')
go

insert [dbo].[ArticleTags] values
(1, 1),
(2, 1),
(3, 4),
(2, 3)
go