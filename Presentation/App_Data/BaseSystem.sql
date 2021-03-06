

 


USE [BaseSystem]
GO
/****** Object:  Table [dbo].[AM_LOG]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AM_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ActionName] [nvarchar](max) NOT NULL,
	[ActionDescription] [nvarchar](max) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Error]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Error] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_Attribute]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Attribute](
	[ID] [int] NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[AttributeTypeID] [int] NOT NULL,
	[IsSystemDefined] [bit] NOT NULL,
	[IsSpecial] [bit] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_MM_Attribute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_AttributeType]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_AttributeType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[IsSelectable] [bit] NULL,
	[DataType] [nvarchar](50) NULL,
	[SqlType] [nvarchar](50) NULL,
	[Length] [int] NULL,
	[IsNullable] [bit] NULL,
 CONSTRAINT [PK_MM_AttributeType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_EntityType]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_EntityType](
	[ID] [int] NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[ModuleID] [int] NULL,
	[Category] [int] NULL,
	[ShortDescription] [nvarchar](50) NULL,
	[ColorCode] [nvarchar](400) NULL,
	[IsAssociate] [bit] NULL,
	[IsRootLevel] [bit] NULL,
 CONSTRAINT [PK_MM_EntityType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_EntityType_Feature]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_EntityType_Feature](
	[TypeID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK__MM_Entit__3214EC274CC05EF3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_EntityType_Hierarchy]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_EntityType_Hierarchy](
	[ID] [int] NOT NULL,
	[ParentEntityTypeID] [int] NOT NULL,
	[ChildEntityTypeID] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_PM_EntityType_Hierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_Feature]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Feature](
	[ID] [int] NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[ModuleID] [int] NULL,
	[IsEnable] [bit] NULL,
	[IsTopNavigation] [bit] NULL,
 CONSTRAINT [PK__MM_Featu__3214EC274AB81AF0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_MetadataVersion]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_MetadataVersion](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[State] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_MM_MetadataVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_Module]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Module](
	[ID] [int] NOT NULL,
	[Caption] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsEnable] [bit] NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC27662B2B3B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_Option]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Option](
	[ID] [int] NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[AttributeID] [int] NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_MM_Option] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_TreeLevel]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_TreeLevel](
	[ID] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[LevelName] [nvarchar](500) NULL,
	[AttributeID] [int] NOT NULL,
	[IsPercentage] [bit] NULL,
 CONSTRAINT [PK_MM_Tree] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_TreeNode]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_TreeNode](
	[ID] [int] NOT NULL,
	[NodeID] [int] NOT NULL,
	[ParentNodeID] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[KEY] [nvarchar](250) NOT NULL,
	[AttributeID] [int] NOT NULL,
	[Caption] [nvarchar](500) NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_MM_TreeNode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MD_Validation]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Validation](
	[ID] [int] NOT NULL,
	[EntityTypeID] [int] NULL,
	[RelationShipID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ValueType] [nvarchar](50) NULL,
	[Value] [nvarchar](200) NULL,
	[ErrorMessage] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UM_User]    Script Date: 2/17/2016 6:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UM_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[Password] [varbinary](max) NULL,
	[PasswordSalt] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Gender] [bit] NULL CONSTRAINT [df_gender]  DEFAULT ((0)),
	[Isactive] [bit] NULL,
	[password_reset] [bit] NULL,
	[last_login] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC2774794A92] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UM_User] ON 

INSERT [dbo].[UM_User] ([ID], [FirstName], [LastName], [UserName], [Password], [PasswordSalt], [Email], [Image], [Gender], [Isactive], [password_reset], [last_login]) VALUES (15753, N'Test', N'Admin', N'Testadmin@gmail.com', 0x24746BF521DD4863165EE19D92690BE2D980392E99FF1CB2, N'$2a$10$KaU5gfWZoPwUKIiZiQotFO', N'Testadmin@gmail.com', N'', 0, 1, 0, CAST(N'2015-06-05 16:09:41.000' AS DateTime))
INSERT [dbo].[UM_User] ([ID], [FirstName], [LastName], [UserName], [Password], [PasswordSalt], [Email], [Image], [Gender], [Isactive], [password_reset], [last_login]) VALUES (15758, N'viniston', N'fernando admin', N'viniston89@gmail.com', 0x9299E058F78900635745E652679E1A0620632A62723F568C, N'$2a$10$BkbmUyLSmJumb5Sv2F.Miu', N'viniston89@gmail.com', N'', 0, 1, 0, CAST(N'2015-06-06 18:44:11.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[UM_User] OFF
ALTER TABLE [dbo].[MD_EntityType] ADD  CONSTRAINT [DF_IsAssociate]  DEFAULT ((0)) FOR [IsAssociate]
GO
ALTER TABLE [dbo].[MD_Feature] ADD  DEFAULT ((0)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[MD_Option] ADD  CONSTRAINT [DF_MM_Option_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[MD_TreeLevel] ADD  DEFAULT ((0)) FOR [IsPercentage]
GO
ALTER TABLE [dbo].[MD_TreeNode] ADD  CONSTRAINT [DF_MM_TreeNode_ParentNodeID]  DEFAULT ((0)) FOR [ParentNodeID]
GO
ALTER TABLE [dbo].[MD_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_MM_Attribute_MM_Attribute] FOREIGN KEY([ID])
REFERENCES [dbo].[MD_Attribute] ([ID])
GO
ALTER TABLE [dbo].[MD_Attribute] CHECK CONSTRAINT [FK_MM_Attribute_MM_Attribute]
GO
ALTER TABLE [dbo].[MD_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_MM_Attribute_MM_AttributeType] FOREIGN KEY([AttributeTypeID])
REFERENCES [dbo].[MD_AttributeType] ([ID])
GO
ALTER TABLE [dbo].[MD_Attribute] CHECK CONSTRAINT [FK_MM_Attribute_MM_AttributeType]
GO
ALTER TABLE [dbo].[MD_EntityType_Feature]  WITH CHECK ADD  CONSTRAINT [FK_MM_EntityType_Feature_MM_EntityType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[MD_EntityType] ([ID])
GO
ALTER TABLE [dbo].[MD_EntityType_Feature] CHECK CONSTRAINT [FK_MM_EntityType_Feature_MM_EntityType]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table will store what all feature are disable for a paticular type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MD_EntityType_Feature'
GO
USE [master]
GO
ALTER DATABASE [BaseSystem] SET  READ_WRITE 
GO
