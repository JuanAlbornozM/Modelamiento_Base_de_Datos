CREATE TABLE Clientes( 
    rut_cliente         NUMBER(11) NOT NULL, 
    dv                  CHAR(1) NOT NULL, 
    primer_nombre       VARCHAR2(250) NOT NULL, 
    segundo_nombre      VARCHAR2(250), 
    primer_apellido     VARCHAR2(250) NOT NULL, 
    segundo_apellido    VARCHAR2(250), 
    direccion           VARCHAR2(500)NOT NULL, 
    fono                NUMBER NOT NULL, 
    correo              VARCHAR2(250) NOT NULL, 
    comuna_id           NUMBER 
);

ALTER TABLE Clientes ADD CONSTRAINT cliente_pk PRIMARY KEY (rut_cliente);

CREATE TABLE Comunas( 
    id_comuna           NUMBER NOT NULL, 
    nombre              VARCHAR2(250) NOT NULL 
);

ALTER TABLE Comunas ADD CONSTRAINT comuna_pk PRIMARY KEY (id_comuna);

CREATE TABLE Acompañantes( 
    rut_acompañante         NUMBER(11) NOT NULL, 
    dv                      CHAR(1) NOT NULL, 
    primer_nombre           VARCHAR2(250) NOT NULL, 
    segundo_nombre          VARCHAR2(250), 
    primer_apellido         VARCHAR2(250) NOT NULL, 
    segundo_apellido        VARCHAR2(250), 
    direccion               VARCHAR2(250) NOT NULL, 
    fono                    NUMBER NOT NULL, 
    correo                  VARCHAR2(250) NOT NULL, 
    comuna_id               NUMBER NOT NULL 
);

ALTER TABLE Acompañantes ADD CONSTRAINT rut_acompañante PRIMARY KEY (rut_acompañante);

ALTER TABLE Clientes ADD CONSTRAINT comuna_fk FOREIGN KEY (comuna_id) 
    REFERENCES comuna(id_comuna);






