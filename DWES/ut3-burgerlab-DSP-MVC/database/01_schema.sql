-- =====================================================
-- TABLA CATEGORIA
-- =====================================================

CREATE TABLE categoria (
    id NUMBER NOT NULL,
    nombre VARCHAR2(120) NOT NULL,

    CONSTRAINT pk_categoria
        PRIMARY KEY (id),

    CONSTRAINT uk_categoria_nombre
        UNIQUE (nombre)
);


-- La carga inicial utiliza identificadores del 1 al 5.
-- Los nuevos identificadores comenzarán en 6.

CREATE SEQUENCE seq_categoria
    START WITH 6
    INCREMENT BY 1
    NOCYCLE
    NOCACHE;


CREATE OR REPLACE TRIGGER trg_categoria_id
BEFORE INSERT ON categoria
FOR EACH ROW
WHEN (NEW.id IS NULL)
BEGIN
    SELECT seq_categoria.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/


-- =====================================================
-- TABLA PRODUCTO
-- =====================================================

CREATE TABLE producto (
    id NUMBER NOT NULL,
    nombre VARCHAR2(150) NOT NULL,
    descripcion VARCHAR2(1000),
    precio NUMBER(8,2) NOT NULL,
    imagen VARCHAR2(300) NOT NULL,
    destacado NUMBER(1) DEFAULT 0 NOT NULL,
    categoria_id NUMBER NOT NULL,

    CONSTRAINT pk_producto
        PRIMARY KEY (id),

    CONSTRAINT ck_producto_precio
        CHECK (precio >= 0),

    CONSTRAINT ck_producto_destacado
        CHECK (destacado IN (0, 1)),

    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categoria(id)
);


-- La carga inicial utiliza identificadores del 1 al 18.
-- Los nuevos identificadores comenzarán en 19.

CREATE SEQUENCE seq_producto
    START WITH 19
    INCREMENT BY 1
    NOCYCLE
    NOCACHE;


CREATE OR REPLACE TRIGGER trg_producto_id
BEFORE INSERT ON producto
FOR EACH ROW
WHEN (NEW.id IS NULL)
BEGIN
    SELECT seq_producto.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/