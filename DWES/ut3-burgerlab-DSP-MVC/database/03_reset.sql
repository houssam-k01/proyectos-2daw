-- Eliminar la tabla PRODUCTO

BEGIN
    EXECUTE IMMEDIATE
        'DROP TABLE producto CASCADE CONSTRAINTS PURGE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

-- Eliminar la tabla CATEGORIA

BEGIN
    EXECUTE IMMEDIATE
        'DROP TABLE categoria CASCADE CONSTRAINTS PURGE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

-- Eliminar la secuencia de PRODUCTO

BEGIN
    EXECUTE IMMEDIATE
        'DROP SEQUENCE seq_producto';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;
/

-- Eliminar la secuencia de CATEGORIA

BEGIN
    EXECUTE IMMEDIATE
        'DROP SEQUENCE seq_categoria';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;
/
