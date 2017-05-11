CREATE TABLE IF NOT EXISTS TipoMercadoria (
  idTipoMercadoria INT(11) NOT NULL,
  Descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipoMercadoria) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS TipoNegocio (
  idTipoNegocio INT(11) NOT NULL ,
  Descricao VARCHAR(45) NOT NULL ,
  PRIMARY KEY (idTipoNegocio)  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS Mercadoria (
  idMercadoria INT(11) NOT NULL ,
  Nome VARCHAR(45) NOT NULL ,
  Qtde INT(11) NOT NULL ,
  Preco DECIMAL(8,2) NOT NULL ,
  idTipoMercadoria INT(11) NOT NULL ,
  idTipoNegocio INT(11) NOT NULL ,
  PRIMARY KEY (idMercadoria)  ,
  INDEX fk_Mercadoria_TipoMercadoria_idx (idTipoMercadoria ASC)  ,
  INDEX fk_Mercadoria_TipoNegocio1_idx (idTipoNegocio ASC)  ,
  CONSTRAINT fk_Mercadoria_TipoMercadoria  FOREIGN KEY (idTipoMercadoria) REFERENCES TipoMercadoria (idTipoMercadoria),
  CONSTRAINT fk_Mercadoria_TipoNegocio1  FOREIGN KEY (idTipoNegocio) REFERENCES TipoNegocio (idTipoNegocio)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
