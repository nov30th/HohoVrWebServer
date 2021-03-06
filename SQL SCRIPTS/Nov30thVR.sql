/****** Object:  Table [dbo].[info]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'U'))
DROP TABLE [dbo].[info]
GO
/****** Object:  Table [dbo].[IpNewest]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IpNewest]') AND type in (N'U'))
DROP TABLE [dbo].[IpNewest]
GO
/****** Object:  Table [dbo].[loginblock]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loginblock]') AND type in (N'U'))
DROP TABLE [dbo].[loginblock]
GO
/****** Object:  Table [dbo].[password]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[password]') AND type in (N'U'))
DROP TABLE [dbo].[password]
GO
/****** Object:  Table [dbo].[service]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
DROP TABLE [dbo].[service]
GO
/****** Object:  Table [dbo].[VIPCode]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND type in (N'U'))
DROP TABLE [dbo].[VIPCode]
GO
/****** Object:  Table [dbo].[visitor]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[visitor]') AND type in (N'U'))
DROP TABLE [dbo].[visitor]
GO
/****** Object:  Default [DF__info__maxcount__1FCDBCEB]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__maxcount__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__maxcount__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__maxcount__1FCDBCEB]
END


End
GO
/****** Object:  Default [DF__info__limitcount__20C1E124]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__limitcount__20C1E124]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__limitcount__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__limitcount__20C1E124]
END


End
GO
/****** Object:  Default [DF__info__warncount__21B6055D]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__warncount__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__warncount__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__warncount__21B6055D]
END


End
GO
/****** Object:  Default [DF__info__active__22AA2996]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__active__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__active__22AA2996]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__active__22AA2996]
END


End
GO
/****** Object:  Default [DF__info__showtype__239E4DCF]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__showtype__239E4DCF]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__showtype__239E4DCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__showtype__239E4DCF]
END


End
GO
/****** Object:  Default [DF__info__isshow__24927208]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__isshow__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__isshow__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__isshow__24927208]
END


End
GO
/****** Object:  Default [DF__info__sex__25869641]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__sex__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__sex__25869641]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__sex__25869641]
END


End
GO
/****** Object:  Default [DF__info__verify__267ABA7A]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__verify__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__verify__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__verify__267ABA7A]
END


End
GO
/****** Object:  Default [DF__info__times__276EDEB3]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__times__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__times__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__times__276EDEB3]
END


End
GO
/****** Object:  Default [DF__info__blogtype__286302EC]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__blogtype__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__blogtype__286302EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__blogtype__286302EC]
END


End
GO
/****** Object:  Default [DF__info__totalcount__29572725]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__totalcount__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__totalcount__29572725]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__totalcount__29572725]
END


End
GO
/****** Object:  Default [DF__info__option__2A4B4B5E]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__option__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__option__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__option__2A4B4B5E]
END


End
GO
/****** Object:  Default [DF__info__daycount__2B3F6F97]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__daycount__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__daycount__2B3F6F97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] DROP CONSTRAINT [DF__info__daycount__2B3F6F97]
END


End
GO
/****** Object:  Default [DF__loginblock__time__173876EA]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__loginblock__time__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[loginblock]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__loginblock__time__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[loginblock] DROP CONSTRAINT [DF__loginblock__time__173876EA]
END


End
GO
/****** Object:  Default [DF__password__count__117F9D94]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__password__count__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[password]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__password__count__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[password] DROP CONSTRAINT [DF__password__count__117F9D94]
END


End
GO
/****** Object:  Default [DF__password__blogty__1273C1CD]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__password__blogty__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[password]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__password__blogty__1273C1CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[password] DROP CONSTRAINT [DF__password__blogty__1273C1CD]
END


End
GO
/****** Object:  Default [DF__service__start__0BC6C43E]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__service__start__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__service__start__0BC6C43E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[service] DROP CONSTRAINT [DF__service__start__0BC6C43E]
END


End
GO
/****** Object:  Default [DF__service__isrun__0CBAE877]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__service__isrun__0CBAE877]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__service__isrun__0CBAE877]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[service] DROP CONSTRAINT [DF__service__isrun__0CBAE877]
END


End
GO
/****** Object:  Default [DF__VIPCode__validti__0519C6AF]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__validti__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__validti__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] DROP CONSTRAINT [DF__VIPCode__validti__0519C6AF]
END


End
GO
/****** Object:  Default [DF__VIPCode__codetyp__060DEAE8]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__codetyp__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__codetyp__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] DROP CONSTRAINT [DF__VIPCode__codetyp__060DEAE8]
END


End
GO
/****** Object:  Default [DF__VIPCode__status__07020F21]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__status__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__status__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] DROP CONSTRAINT [DF__VIPCode__status__07020F21]
END


End
GO
/****** Object:  Default [DF__visitor__time__7C8480AE]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__time__7C8480AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__time__7C8480AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__time__7C8480AE]
END


End
GO
/****** Object:  Default [DF__visitor__count__7D78A4E7]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__count__7D78A4E7]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__count__7D78A4E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__count__7D78A4E7]
END


End
GO
/****** Object:  Default [DF__visitor__ip__7E6CC920]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__ip__7E6CC920]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__ip__7E6CC920]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__ip__7E6CC920]
END


End
GO
/****** Object:  Default [DF__visitor__isblog__7F60ED59]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__isblog__7F60ED59]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__isblog__7F60ED59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__isblog__7F60ED59]
END


End
GO
/****** Object:  Default [DF__visitor__belong__00551192]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__belong__00551192]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__belong__00551192]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__belong__00551192]
END


End
GO
/****** Object:  Default [DF__visitor__onlined__014935CB]    Script Date: 09/29/2009 22:17:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__onlined__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__onlined__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] DROP CONSTRAINT [DF__visitor__onlined__014935CB]
END


End
GO
/****** Object:  Table [dbo].[visitor]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[visitor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[visitor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[count] [smallint] NULL,
	[nickname] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[ip] [float] NULL,
	[isblog] [smallint] NULL,
	[phylocal] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[belong] [int] NULL,
	[username] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[referrer] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[onlineduring] [smallint] NULL
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[visitor]') AND name = N'belong')
CREATE NONCLUSTERED INDEX [belong] ON [dbo].[visitor] 
(
	[belong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[visitor]') AND name = N'ID')
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[visitor] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'Now()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'nickname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'nickname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'nickname'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'nickname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'isblog' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'isblog' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'isblog'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'isblog'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'phylocal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'phylocal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'phylocal'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'phylocal'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'belong' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'belong' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'belong'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'belong'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'referrer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'referrer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'onlineduring' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'onlineduring' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', N'COLUMN',N'onlineduring'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor', @level2type=N'COLUMN',@level2name=N'onlineduring'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-7-27 下午 19:11:15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2006-8-14 下午 18:45:17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'visitor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'84092' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RowHeight' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RowHeight', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'visitor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'visitor'
GO
/****** Object:  Table [dbo].[VIPCode]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIPCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[validtime] [smallint] NOT NULL,
	[scoure] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[code] [nvarchar](32) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[codetype] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[createtime] [datetime] NOT NULL,
 CONSTRAINT [aaaaaVIPCode_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND name = N'code')
CREATE NONCLUSTERED INDEX [code] ON [dbo].[VIPCode] 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND name = N'codetype')
CREATE NONCLUSTERED INDEX [codetype] ON [dbo].[VIPCode] 
(
	[codetype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND name = N'ID')
CREATE UNIQUE NONCLUSTERED INDEX [ID] ON [dbo].[VIPCode] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND name = N'scoure')
CREATE NONCLUSTERED INDEX [scoure] ON [dbo].[VIPCode] 
(
	[scoure] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VIPCode]') AND name = N'username')
CREATE NONCLUSTERED INDEX [username] ON [dbo].[VIPCode] 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'validtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'validtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'validtime'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'validtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'scoure' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'scoure' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'scoure'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'scoure'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'code'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'codetype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'codetype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'codetype'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'codetype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'status'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'createtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'createtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', N'COLUMN',N'createtime'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode', @level2type=N'COLUMN',@level2name=N'createtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-8-10 上午 01:45:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2006-8-10 上午 01:45:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VIPCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'373' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'VIPCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VIPCode'
GO
/****** Object:  Table [dbo].[service]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[start] [datetime] NULL,
	[referrer] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[isrun] [smallint] NULL,
 CONSTRAINT [aaaaaservice_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'Now()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'start' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'start' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'start'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'start'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'referrer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'referrer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'referrer'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'referrer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'isrun' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'isrun' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'service', N'COLUMN',N'isrun'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service', @level2type=N'COLUMN',@level2name=N'isrun'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-2-11 下午 16:35:07' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2007-5-31 下午 17:18:17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1877' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'service', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'service'
GO
/****** Object:  Table [dbo].[password]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[password]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[password](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[password] [nvarchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[time] [datetime] NULL,
	[count] [int] NULL,
	[blogtype] [smallint] NULL,
	[session] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaapassword_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[password]') AND name = N'ID')
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[password] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'count'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'count'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'blogtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'blogtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'session' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'session' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'password', N'COLUMN',N'session'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password', @level2type=N'COLUMN',@level2name=N'session'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-2-11 下午 13:00:08' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2006-8-17 上午 10:33:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'18308' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'password', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'password'
GO
/****** Object:  Table [dbo].[loginblock]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loginblock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[loginblock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[username] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[password] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[ip] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [aaaaaloginblock_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[loginblock]') AND name = N'ID')
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[loginblock] 
(
	[time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[loginblock]') AND name = N'ip')
CREATE NONCLUSTERED INDEX [ip] ON [dbo].[loginblock] 
(
	[ip] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'Now()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'time'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'time'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-2-12 下午 15:17:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2006-2-12 下午 15:24:12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'loginblock' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'loginblock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loginblock'
GO
/****** Object:  Table [dbo].[IpNewest]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IpNewest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IpNewest](
	[Field1] [nvarchar](16) COLLATE Chinese_PRC_CI_AS NULL,
	[Field2] [nvarchar](16) COLLATE Chinese_PRC_CI_AS NULL,
	[Field3] [nvarchar](49) COLLATE Chinese_PRC_CI_AS NULL,
	[IpBegin] [decimal](18, 0) NULL,
	[IpEnd] [decimal](18, 0) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_IpNewest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[info]    Script Date: 09/29/2009 22:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[password] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[blogname] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[expdate] [datetime] NULL,
	[maxcount] [smallint] NULL,
	[limitcount] [smallint] NULL,
	[pic] [nvarchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[music] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[warncount] [smallint] NULL,
	[lastlogin] [datetime] NULL,
	[ip] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[active] [smallint] NULL,
	[memo] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[showtype] [smallint] NULL,
	[blocklist] [nvarchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[isshow] [smallint] NULL,
	[sex] [smallint] NULL,
	[QQ] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[verify] [smallint] NULL,
	[times] [smallint] NULL,
	[blogtype] [smallint] NULL,
	[LastReCount] [datetime] NULL,
	[LastPrint] [datetime] NULL,
	[cellphone] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[picip] [nvarchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[totalcount] [int] NULL,
	[regtime] [datetime] NULL,
	[email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[errmsg] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[pwd2] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[option] [int] NULL,
	[daycount] [smallint] NULL,
	[upsize_ts] [timestamp] NULL,
	[IpLong] [decimal](18, 0) NULL,
 CONSTRAINT [aaaaainfo_PK] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND name = N'id')
CREATE UNIQUE NONCLUSTERED INDEX [id] ON [dbo].[info] 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'username'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'username'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'blogname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'blogname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogname'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'expdate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'expdate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'expdate'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'expdate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'maxcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'maxcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'maxcount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'maxcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'limitcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'limitcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'limitcount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'limitcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'250' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pic'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'5580' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'music' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'music' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'music'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'music'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'warncount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'warncount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'warncount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'warncount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'lastlogin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'lastlogin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'lastlogin'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'lastlogin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'ip'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'active' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'active' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'active'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'active'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'memo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'memo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'memo'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'showtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'showtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'showtype'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'showtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'blocklist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'250' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'blocklist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blocklist'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blocklist'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'isshow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'isshow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'isshow'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'isshow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'sex' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'sex' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'QQ'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'QQ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'verify' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'verify' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'verify'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'verify'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'times' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'times' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'times'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'times'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'blogtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'blogtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'blogtype'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'blogtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LastReCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LastReCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastReCount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastReCount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LastPrint' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LastPrint' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'LastPrint'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'LastPrint'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'cellphone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'cellphone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'cellphone'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'cellphone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'picip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'250' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'picip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'picip'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'picip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'totalcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'totalcount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'totalcount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'totalcount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Format' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'regtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'regtime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'regtime'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'regtime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'errmsg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'errmsg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'errmsg'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'errmsg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMEMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_IMESentMode' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'pwd2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'pwd2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'UnicodeCompression' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'pwd2'))
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'pwd2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'option' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'option' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'option'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'option'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AllowZeroLength' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'AppendOnly' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'CollatingOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnHidden' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnOrder' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'ColumnWidth' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DataUpdatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DefaultValue' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DecimalPlaces' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DisplayControl' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'daycount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'OrdinalPosition' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Required' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Size' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceField' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'daycount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'SourceTable' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Type' , N'SCHEMA',N'dbo', N'TABLE',N'info', N'COLUMN',N'daycount'))
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info', @level2type=N'COLUMN',@level2name=N'daycount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Attributes' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'DateCreated' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2006-2-9 上午 01:18:40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'LastUpdated' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2007-4-10 下午 14:39:52' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DefaultView' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderBy' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'info.lastlogin DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_OrderByOn' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Orientation' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Name' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'RecordCount' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'204' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'Updatable' , N'SCHEMA',N'dbo', N'TABLE',N'info', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'info'
GO
/****** Object:  Default [DF__info__maxcount__1FCDBCEB]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__maxcount__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__maxcount__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__maxcount__1FCDBCEB]  DEFAULT ((0)) FOR [maxcount]
END


End
GO
/****** Object:  Default [DF__info__limitcount__20C1E124]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__limitcount__20C1E124]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__limitcount__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__limitcount__20C1E124]  DEFAULT ((0)) FOR [limitcount]
END


End
GO
/****** Object:  Default [DF__info__warncount__21B6055D]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__warncount__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__warncount__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__warncount__21B6055D]  DEFAULT ((0)) FOR [warncount]
END


End
GO
/****** Object:  Default [DF__info__active__22AA2996]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__active__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__active__22AA2996]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__active__22AA2996]  DEFAULT ((0)) FOR [active]
END


End
GO
/****** Object:  Default [DF__info__showtype__239E4DCF]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__showtype__239E4DCF]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__showtype__239E4DCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__showtype__239E4DCF]  DEFAULT ((0)) FOR [showtype]
END


End
GO
/****** Object:  Default [DF__info__isshow__24927208]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__isshow__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__isshow__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__isshow__24927208]  DEFAULT ((0)) FOR [isshow]
END


End
GO
/****** Object:  Default [DF__info__sex__25869641]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__sex__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__sex__25869641]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__sex__25869641]  DEFAULT ((0)) FOR [sex]
END


End
GO
/****** Object:  Default [DF__info__verify__267ABA7A]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__verify__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__verify__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__verify__267ABA7A]  DEFAULT ((0)) FOR [verify]
END


End
GO
/****** Object:  Default [DF__info__times__276EDEB3]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__times__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__times__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__times__276EDEB3]  DEFAULT ((0)) FOR [times]
END


End
GO
/****** Object:  Default [DF__info__blogtype__286302EC]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__blogtype__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__blogtype__286302EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__blogtype__286302EC]  DEFAULT ((1)) FOR [blogtype]
END


End
GO
/****** Object:  Default [DF__info__totalcount__29572725]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__totalcount__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__totalcount__29572725]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__totalcount__29572725]  DEFAULT ((0)) FOR [totalcount]
END


End
GO
/****** Object:  Default [DF__info__option__2A4B4B5E]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__option__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__option__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__option__2A4B4B5E]  DEFAULT ((0)) FOR [option]
END


End
GO
/****** Object:  Default [DF__info__daycount__2B3F6F97]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__info__daycount__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[info]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__info__daycount__2B3F6F97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[info] ADD  CONSTRAINT [DF__info__daycount__2B3F6F97]  DEFAULT ((0)) FOR [daycount]
END


End
GO
/****** Object:  Default [DF__loginblock__time__173876EA]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__loginblock__time__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[loginblock]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__loginblock__time__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[loginblock] ADD  CONSTRAINT [DF__loginblock__time__173876EA]  DEFAULT (getdate()) FOR [time]
END


End
GO
/****** Object:  Default [DF__password__count__117F9D94]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__password__count__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[password]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__password__count__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[password] ADD  CONSTRAINT [DF__password__count__117F9D94]  DEFAULT ((1)) FOR [count]
END


End
GO
/****** Object:  Default [DF__password__blogty__1273C1CD]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__password__blogty__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[password]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__password__blogty__1273C1CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[password] ADD  CONSTRAINT [DF__password__blogty__1273C1CD]  DEFAULT ((1)) FOR [blogtype]
END


End
GO
/****** Object:  Default [DF__service__start__0BC6C43E]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__service__start__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__service__start__0BC6C43E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[service] ADD  CONSTRAINT [DF__service__start__0BC6C43E]  DEFAULT (getdate()) FOR [start]
END


End
GO
/****** Object:  Default [DF__service__isrun__0CBAE877]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__service__isrun__0CBAE877]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__service__isrun__0CBAE877]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[service] ADD  CONSTRAINT [DF__service__isrun__0CBAE877]  DEFAULT ((0)) FOR [isrun]
END


End
GO
/****** Object:  Default [DF__VIPCode__validti__0519C6AF]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__validti__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__validti__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] ADD  CONSTRAINT [DF__VIPCode__validti__0519C6AF]  DEFAULT ((0)) FOR [validtime]
END


End
GO
/****** Object:  Default [DF__VIPCode__codetyp__060DEAE8]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__codetyp__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__codetyp__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] ADD  CONSTRAINT [DF__VIPCode__codetyp__060DEAE8]  DEFAULT ((0)) FOR [codetype]
END


End
GO
/****** Object:  Default [DF__VIPCode__status__07020F21]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIPCode__status__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[VIPCode]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__VIPCode__status__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIPCode] ADD  CONSTRAINT [DF__VIPCode__status__07020F21]  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF__visitor__time__7C8480AE]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__time__7C8480AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__time__7C8480AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__time__7C8480AE]  DEFAULT (getdate()) FOR [time]
END


End
GO
/****** Object:  Default [DF__visitor__count__7D78A4E7]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__count__7D78A4E7]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__count__7D78A4E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__count__7D78A4E7]  DEFAULT ((1)) FOR [count]
END


End
GO
/****** Object:  Default [DF__visitor__ip__7E6CC920]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__ip__7E6CC920]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__ip__7E6CC920]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__ip__7E6CC920]  DEFAULT ((0)) FOR [ip]
END


End
GO
/****** Object:  Default [DF__visitor__isblog__7F60ED59]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__isblog__7F60ED59]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__isblog__7F60ED59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__isblog__7F60ED59]  DEFAULT ((0)) FOR [isblog]
END


End
GO
/****** Object:  Default [DF__visitor__belong__00551192]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__belong__00551192]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__belong__00551192]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__belong__00551192]  DEFAULT ((0)) FOR [belong]
END


End
GO
/****** Object:  Default [DF__visitor__onlined__014935CB]    Script Date: 09/29/2009 22:17:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__visitor__onlined__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__visitor__onlined__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[visitor] ADD  CONSTRAINT [DF__visitor__onlined__014935CB]  DEFAULT ((0)) FOR [onlineduring]
END


End
GO
