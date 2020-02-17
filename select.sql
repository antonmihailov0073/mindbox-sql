use [MindBox]
go

select 
	[a].[Title],
	[t].[Name] [Tag]
from [Articles] [a]
left join [ArticleTags] [at] on [a].[Id] = [at].[ArticleId]
left join [Tags] [t] on [at].[TagId] = [t].[Id]
