CREATE TABLE [dbo].[videojuego](
	[id] [int] NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[lenguaje] [varchar](5) NOT NULL,
	[resumen] [text] NULL,
	[nota] [decimal](3, 1) NULL,
	[total_jugadores] [int] NULL,
 CONSTRAINT [PK_videojuego] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[jugador](
	[id] [int] NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[edad] [int] NOT NULL,
	[es_famoso] [int] NOT NULL,
	[id_videojuego] [int] NOT NULL,
	[fecha_registro] [date] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[jugador] ADD  DEFAULT ((0)) FOR [es_famoso]
GO

ALTER TABLE [dbo].[jugador]  WITH CHECK ADD  CONSTRAINT [FK_jugador_videojuego] FOREIGN KEY([id_videojuego])
REFERENCES [dbo].[videojuego] ([id])
GO

ALTER TABLE [dbo].[jugador] CHECK CONSTRAINT [FK_jugador_videojuego]
GO
