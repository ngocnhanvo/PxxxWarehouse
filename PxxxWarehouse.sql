USE [PxxxWarehouse]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bank](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyOrder]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuyOrder](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ProviderContactID] [bigint] NULL,
	[CurrencyID] [int] NULL,
	[DocumentNo] [varchar](50) NULL,
	[Status] [varchar](15) NULL,
	[BuyDate] [datetime] NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptPlace] [nvarchar](max) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_BuyOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyOrderLine]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuyOrderLine](
	[ID] [bigint] NOT NULL,
	[BuyOrderID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[UnitsID] [int] NULL,
	[TaxID] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[ProductName] [nvarchar](150) NULL,
	[UnitsValue] [nvarchar](150) NULL,
	[PlanQuatity] [float] NULL,
	[BuyQuatity] [float] NULL,
	[Price] [decimal](18, 2) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_BuyOrderLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[Suffix] [nvarchar](10) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InWarehouse]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InWarehouse](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BuyOrderID] [bigint] NULL,
	[WarehouseID] [int] NULL,
	[DocumentNo] [varchar](50) NULL,
	[InDate] [datetime] NULL,
	[BuyDate] [datetime] NULL,
	[Status] [varchar](15) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_InWarehouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InWarehouseLine]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InWarehouseLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[InWarehouseID] [bigint] NULL,
	[BuyOrderLineID] [bigint] NULL,
	[MovedQuatity] [float] NULL,
	[MoveQuatity] [float] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_InWarehouseLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryID] [bigint] NOT NULL,
	[PartnerID] [bigint] NULL,
	[TaxID] [bigint] NULL,
	[WarehouseID] [bigint] NULL,
	[Inventory] [bigint] NULL,
	[Code] [varchar](50) NULL,
	[Value] [nvarchar](150) NULL,
	[Barcode] [varchar](50) NULL,
	[PriceBuy] [decimal](18, 2) NULL,
	[PriceSell] [decimal](18, 2) NULL,
	[MinInventory] [decimal](18, 2) NULL,
	[MaxInventory] [decimal](18, 2) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_m_product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductAttr]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductAttr](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_Attr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductLine]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NULL,
	[ProductID2] [bigint] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductProp]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductProp](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NULL,
	[ProductAttrID] [bigint] NULL,
	[Value] [nvarchar](max) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductUnits]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductUnits](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NULL,
	[UnitsID] [bigint] NULL,
	[IsDefault] [bit] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_Units] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [nvarchar](max) NULL,
	[LastBuy] [datetime] NULL,
	[Total] [decimal](18, 2) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProviderAddress]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProviderAddress](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [varchar](15) NULL,
	[PhoneBak] [varchar](15) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Provider_Address_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProviderBank]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProviderBank](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BankID] [int] NULL,
	[AccountNo] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProviderBank] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProviderContact]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProviderContact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[Firstname] [varchar](50) NULL,
	[Lastname] [nvarchar](max) NULL,
	[Email] [varchar](150) NULL,
	[Phone] [varchar](15) NULL,
	[IsDefault] [bit] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Provider_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tax](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[Value] [int] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Units]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Units](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Warehouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[Localtion] [nvarchar](max) NULL,
	[IsInventory] [bit] NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WarehouseLine]    Script Date: 3/23/2018 5:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WarehouseLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[WarehouseID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[UnitValue] [nvarchar](50) NULL,
	[Quatity] [decimal](18, 2) NULL,
	[Created] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[Updated] [datetime] NULL,
	[Updatedby] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Warehouse_details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'người liên hệ khi mua hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'ProviderContactID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'đơn vị tiền tệ sử dụng khi mua hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số phiếu của đơn mua hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'DocumentNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày nhận được hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng dự kiến mua hàng.
Dùng cho module lập kế hoạch mua hàng.
Nếu lập đơn mua hàng không thông qua kế hoạch mua hàng thì số lượng này sẽ bằng chính số lượng đặt hàng (BuyQuatity).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderLine', @level2type=N'COLUMN',@level2name=N'PlanQuatity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kí hiệu hậu tố của tiền tệ này
VD: 1000 đ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'Suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhóm sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhà cung cấp mặc định sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'PartnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kho mặc định của sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'WarehouseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'liên kết với Warehouse để lấy kho tồn mặc định cho sản phẩm này' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Inventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'là sản phẩm con của ProductID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductLine', @level2type=N'COLUMN',@level2name=N'ProductID2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'thuộc tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductProp', @level2type=N'COLUMN',@level2name=N'ProductAttrID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'giá trị của thuộc tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductProp', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian cuối cùng mà ta mua hàng của nhà cung cấp này' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provider', @level2type=N'COLUMN',@level2name=N'LastBuy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng tiền hàng đã thanh toán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provider', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại dự phòng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProviderAddress', @level2type=N'COLUMN',@level2name=N'PhoneBak'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại dự phòng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProviderContact', @level2type=N'COLUMN',@level2name=N'Phone'
GO
