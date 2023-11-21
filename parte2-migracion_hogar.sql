

--________________________________________________
--|  Migrando tabla usu_hogar_T122.txt.txt  |
--------------------------------------------------

--Creamos la tabla que recibe los datos de la migracion(del archivo usu_hogar_T122.txt.txt)
CREATE TABLE temporal (
CODUSU text,
ANO4 text,
TRIMESTRE text,
NRO_HOGAR text,
REALIZADA text,
REGION text,
MAS_500 text,
AGLOMERADO text,
PONDERA text,
IV1 text,
IV1_ESP text,
IV2 text,
IV3 text,
IV3_ESP text,
IV4 text,
IV5 text,
IV6 text,
IV7 text,
IV7_ESP text,
IV8 text,
IV9 text,
IV10 text,
IV11 text,
IV12_1 text,
IV12_2 text,
IV12_3 text,
II1 text,
II2 text,
II3 text,
II3_1 text,
II4_1 text,
II4_2 text,
II4_3 text,
II5 text,
II5_1 text,
II6 text,
II6_1 text,
II7 text,
II7_ESP text,
II8 text,
II8_ESP text,
II9 text,
V1 text,
V2 text,
V21 text,
V22 text,
V3 text,
V4 text,
V5 text,
V6 text,
V7 text,
V8 text,
V9 text,
V10 text,
V11 text,
V12 text,
V13 text,
V14 text,
V15 text,
V16 text,
V17 text,
V18 text,
V19_A text,
V19_B text,
IX_TOT text,
IX_MEN10 text,
IX_MAYEQ10 text,
ITF text,
DECIFR text,
IDECIFR text,
RDECIFR text,
GDECIFR text,
PDECIFR text,
ADECIFR text,
IPCF text,
DECCFR text,
IDECCFR text,
RDECCFR text,
GDECCFR text,
PDECCFR text,
ADECCFR text,
PONDIH text,
VII1_1 text,
VII1_2 text,
VII2_1 text,
VII2_2 text,
VII2_3 text,
VII2_4 text
);

--En psql migramos los datos del archivo usu_hogar_T122.txt.txt a la tabla temporal
\copy temporal FROM 'C:\Users\belug\Downloads\EPH_usu_1_Trim_2022_txt\EPH_usu_1er_Trim_2022_txt/usu_hogar_T122.txt.txt' WITH DELIMITER ';' CSV HEADER NULL '';


--Pasamos los datos que corresponden de formato text a NUMERIC
ALTER TABLE temporal ALTER COLUMN ANO4 TYPE NUMERIC(4) USING NULLIF(ANO4, '')::NUMERIC(4);
ALTER TABLE temporal ALTER COLUMN TRIMESTRE TYPE NUMERIC(1) USING NULLIF(TRIMESTRE, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN NRO_HOGAR TYPE NUMERIC(2) USING NULLIF(NRO_HOGAR, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN REALIZADA TYPE NUMERIC(1) USING NULLIF(REALIZADA, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN REGION TYPE NUMERIC(2) USING NULLIF(REGION, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN AGLOMERADO TYPE NUMERIC(2) USING NULLIF(AGLOMERADO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PONDERA TYPE NUMERIC(6) USING NULLIF(PONDERA, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN IV1 TYPE NUMERIC(1) USING NULLIF(IV1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV2 TYPE NUMERIC(2) USING NULLIF(IV2, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN IV3 TYPE NUMERIC(1) USING NULLIF(IV3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV4 TYPE NUMERIC(2) USING NULLIF(IV4, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN IV5 TYPE NUMERIC(1) USING NULLIF(IV5, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV6 TYPE NUMERIC(1) USING NULLIF(IV6, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV7 TYPE NUMERIC(1) USING NULLIF(IV7, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV8 TYPE NUMERIC(1) USING NULLIF(IV8, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV9 TYPE NUMERIC(1) USING NULLIF(IV9, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV10 TYPE NUMERIC(1) USING NULLIF(IV10, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV11 TYPE NUMERIC(1) USING NULLIF(IV11, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV12_1 TYPE NUMERIC(1) USING NULLIF(IV12_1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV12_2 TYPE NUMERIC(1) USING NULLIF(IV12_2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IV12_3 TYPE NUMERIC(1) USING NULLIF(IV12_3, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN II1 TYPE NUMERIC(2) USING NULLIF(II1, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN II2 TYPE NUMERIC(2) USING NULLIF(II2, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN II3 TYPE NUMERIC(1) USING NULLIF(II3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II3_1 TYPE NUMERIC(1) USING NULLIF(II3_1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II4_1 TYPE NUMERIC(1) USING NULLIF(II4_1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II4_2 TYPE NUMERIC(1) USING NULLIF(II4_2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II4_3 TYPE NUMERIC(1) USING NULLIF(II4_3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II5 TYPE NUMERIC(1) USING NULLIF(II5, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II5_1 TYPE NUMERIC(2) USING NULLIF(II5_1, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN II6 TYPE NUMERIC(1) USING NULLIF(II6, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II6_1 TYPE NUMERIC(1) USING NULLIF(II6_1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II7 TYPE NUMERIC(2) USING NULLIF(II7, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN II8 TYPE NUMERIC(1) USING NULLIF(II8, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN II9 TYPE NUMERIC(1) USING NULLIF(II9, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN V1 TYPE NUMERIC(1) USING NULLIF(V1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V2 TYPE NUMERIC(1) USING NULLIF(V2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V21 TYPE NUMERIC(1) USING NULLIF(V21, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V22 TYPE NUMERIC(1) USING NULLIF(V22, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V3 TYPE NUMERIC(2) USING NULLIF(V3, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN V4 TYPE NUMERIC(1) USING NULLIF(V4, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V5 TYPE NUMERIC(1) USING NULLIF(V5, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V6 TYPE NUMERIC(1) USING NULLIF(V6, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V7 TYPE NUMERIC(1) USING NULLIF(V7, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V8 TYPE NUMERIC(1) USING NULLIF(V8, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V9 TYPE NUMERIC(1) USING NULLIF(V9, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN V10 TYPE NUMERIC(1) USING NULLIF(V10, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V11 TYPE NUMERIC(1) USING NULLIF(V11, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V12 TYPE NUMERIC(1) USING NULLIF(V12, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V13 TYPE NUMERIC(1) USING NULLIF(V13, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V14 TYPE NUMERIC(1) USING NULLIF(V14, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V15 TYPE NUMERIC(1) USING NULLIF(V15, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V16 TYPE NUMERIC(1) USING NULLIF(V16, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V17 TYPE NUMERIC(1) USING NULLIF(V17, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V18 TYPE NUMERIC(1) USING NULLIF(V18, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V19_A TYPE NUMERIC(1) USING NULLIF(V19_A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN V19_B TYPE NUMERIC(1) USING NULLIF(V19_B, '')::NUMERIC(1);


ALTER TABLE temporal ALTER COLUMN IX_TOT TYPE NUMERIC(2) USING NULLIF(IX_TOT, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN IX_MEN10 TYPE NUMERIC(2) USING NULLIF(IX_MEN10, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN IX_MAYEQ10 TYPE NUMERIC(2) USING NULLIF(IX_MAYEQ10, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN ITF TYPE NUMERIC(12) USING NULLIF(ITF, '')::NUMERIC(12);
ALTER TABLE temporal ALTER COLUMN IPCF TYPE NUMERIC(12,2) USING REPLACE(IPCF, ',', '.')::NUMERIC(12,2);
ALTER TABLE temporal ALTER COLUMN VII1_1 TYPE NUMERIC(2) USING NULLIF(VII1_1, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN VII1_2 TYPE NUMERIC(2) USING NULLIF(VII1_2, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN VII2_1 TYPE NUMERIC(2) USING NULLIF(VII2_1, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN VII2_2 TYPE NUMERIC(2) USING NULLIF(VII2_2, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN VII2_3 TYPE NUMERIC(2) USING NULLIF(VII2_3, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN VII2_4 TYPE NUMERIC(2) USING NULLIF(VII2_4, '')::NUMERIC(2);




-- Creamos la tabla para volcar los datos en limpio
CREATE TABLE hogar (
CODUSU char(29),
ANO4 numeric(4),
TRIMESTRE numeric(1),
NRO_HOGAR numeric(2),
REALIZADA numeric(1),
REGION numeric(2),
MAS_500 char(1),
AGLOMERADO numeric(2),
PONDERA numeric(6),
IV1 numeric(1),
IV1_ESP char(45),
IV2 numeric(2),
IV3 numeric(1),
IV3_ESP char(45),
IV4 numeric(2),
IV5 numeric(1),
IV6 numeric(1),
IV7 numeric(1),
IV7_ESP char(45),
IV8 numeric(1),
IV9 numeric(1),
IV10 numeric(1),
IV11 numeric(1),
IV12_1 numeric(1),
IV12_2 numeric(1),
IV12_3 numeric(1),
II1 numeric(2),
II2 numeric(2),
II3 numeric(1),
II3_1 numeric(1),
II4_1 numeric(1),
II4_2 numeric(1),
II4_3 numeric(1),
II5 numeric(1),
II5_1 numeric(2),
II6 numeric(1),
II6_1 numeric(1),
II7 numeric(2),
II7_ESP char(45),
II8 numeric(1),
II8_ESP char(45),
II9 numeric(1),
V1 numeric(1),
V2 numeric(1),
V21 numeric(1),
V22 numeric(1),
V3 numeric(2),
V4 numeric(1),
V5 numeric(1),
V6 numeric(1),
V7 numeric(1),
V8 numeric(1),
V9 numeric(1),
V10 numeric(1),
V11 numeric(1),
V12 numeric(1),
V13 numeric(1),
V14 numeric(1),
V15 numeric(1),
V16 numeric(1),
V17 numeric(1),
V18 numeric(1),
V19_A numeric(1),
V19_B numeric(1),
IX_TOT numeric(2),
IX_MEN10 numeric(2),
IX_MAYEQ10 numeric(2),
ITF numeric(12),
DECIFR char(2),
IDECIFR char(2),
RDECIFR char(2),
GDECIFR char(2),
PDECIFR char(2),
ADECIFR char(2),
IPCF numeric(12,2),
DECCFR char(2),
IDECCFR char(2),
RDECCFR char(2),
GDECCFR char(2),
PDECCFR char(2),
ADECCFR char(2),
PONDIH char(6),
VII1_1 numeric(2),
VII1_2 numeric(2),
VII2_1 numeric(2),
VII2_2 numeric(2),
VII2_3 numeric(2),
VII2_4 numeric(2)
);

--Colocamos los datos limpios en la tabla hogar
-- Solo los datos de los aglomerados CABA 32 y GBA 33
INSERT INTO hogar
SELECT *
FROM temporal where aglomerado = 32 OR aglomerado=33;

--Comprobamos que solo esten los datos necesarios
SELECT * FROM hogar;

-- Eliminamos la tabla temporal
DROP TABLE temporal;


/*
2. Unan la tabla de la encuesta individual con la de la encuesta de hogar. 
Asegúrense de estar usando las variables CODUSU y NRO_HOGAR.
*/

SELECT individual.*, hogar.*
FROM individual
LEFT JOIN hogar ON individual.codusu = hogar.codusu AND individual.nro_hogar = hogar.nro_hogar;

/*
3. Limpien la base de datos tomando criterios que hagan sentido, tanto para el tratamiento 
de los valores faltantes, de los outliers, como así también decidan qué variables categóricas 
y strings usarán y transfórmenlas de forma que haga sentido para los ejercicios siguientes. 
Justifiquen sus decisiones.
*/

-- Limpieza valores sin sentido
-- Borrar los registros con edad negativa
delete from hogar where iv2 =99;
delete from hogar where iv9 =0;
delete from hogar where ii1 =99;

/*
4. Construyan variables (mínimo 2) que no estén en la base pero que sean relevantes a la 
hora de predecir individuos bajo la línea de pobreza (ej. proporción de mujeres (o niños) 
en el hogar, ¿su cónyuge trabaja?)
*/

-- Crea la columna de porcentaje de mujeres en la tabla hogar
ALTER TABLE hogar
ADD porcentaje_mujeres NUMERIC; -- Agregar la columna

-- se colocan los valores correspondientes de porcentaje de mujeres por hogar
UPDATE hogar
SET
    porcentaje_mujeres = subquery.porcentaje_mujeres
FROM (
    SELECT
        hogar.codusu,
        hogar.nro_hogar,
        ROUND(((COUNT(individual.ch04) * 100.0) / hogar.Ix_Tot), 2) AS porcentaje_mujeres
    FROM individual, hogar 
    WHERE individual.ch04 = 2 AND hogar.codusu = individual.codusu AND hogar.nro_hogar = individual.nro_hogar
    GROUP BY hogar.codusu, hogar.nro_hogar, hogar.ix_tot
) AS subquery
WHERE hogar.codusu = subquery.codusu AND hogar.nro_hogar = subquery.nro_hogar;

--coloca 0 en los hogares donde no haya mujeres
UPDATE hogar
SET porcentaje_mujeres = 0
WHERE porcentaje_mujeres IS NULL;

-- Crea la columna de porcentaje de menores de 10 anios en la tabla hogar
ALTER TABLE hogar
ADD porcentaje_menores NUMERIC; -- Agregar la columna

-- se colocan los valores correspondientes de porcentaje de menores de 10 anios por hogar
UPDATE hogar
SET
    porcentaje_menores = subquery.porcentaje_menores
FROM (
    SELECT
        codusu,
        nro_hogar,
        ROUND(((IX_Men10 * 100.0) / Ix_Tot), 2) AS porcentaje_menores
    FROM hogar
	GROUP BY codusu, nro_hogar, ix_tot, IX_Men10
) AS subquery
WHERE hogar.codusu = subquery.codusu AND hogar.nro_hogar = subquery.nro_hogar;


/*
6. Construyan la columna adulto_equiv y la columna ad_equiv_hogar y luego dividan la base en 
dos dataframes donde: uno conserve las personas que reportaron ITF (llamada respondieron) y 
la otra conserve las personas que no reportaron ITF (llamada norespondieron). Además, agreguen a 
la base respondieron una columna llamada ingreso_necesario que sea el producto de la canasta básica 
por ad_equiv_hogar.
*/
--Creamos la columna ad_equiv_hogar en la tabla hogar
ALTER TABLE hogar
ADD COLUMN ad_equiv_hogar numeric(4,2) DEFAULT NULL;

-- Colocamos los valores correspondientes en la columna ad_equiv_hogar por cada registro de la tabla hogar
UPDATE hogar AS h
SET ad_equiv_hogar = subquery.suma_adulto_equiv
FROM (
    SELECT codusu, nro_hogar, SUM(adulto_equiv) as suma_adulto_equiv
    FROM individual
    GROUP BY codusu, nro_hogar
) AS subquery
WHERE h.codusu = subquery.codusu AND h.nro_hogar = subquery.nro_hogar;

--coloca 0 en los hogares donde no haya ad_equiv_hogar
UPDATE hogar
SET ad_equiv_hogar = 0
WHERE ad_equiv_hogar IS NULL;


-- Crear tabla respondieron
CREATE TABLE respondieron_hogar AS
SELECT *
FROM hogar
WHERE itf > 0;

-- Crear tabla norespondieron
CREATE TABLE norespondieron_hogar AS
SELECT *
FROM hogar
WHERE itf = 0;

-- Agregamos la columna ingreso_necesario a la tabla respondieron 
ALTER TABLE respondieron_hogar
ADD ingreso_necesario NUMERIC; -- Agregar la columna

-- Agregar la columna pobre a la tabla respondieron
ALTER TABLE respondieron_hogar
ADD pobre INTEGER; 

-- Agregar los valores correspondientes a la columna pobre
UPDATE respondieron_hogar
SET pobre = CASE 
    WHEN ITF < ingreso_necesario THEN 1
    ELSE 0
    END; -- Establecer el valor de la columna "pobre"


-- Colocamos los valores correspondientes en la columna ingreso_necesario
UPDATE respondieron_hogar
SET ingreso_necesario = ROUND(27197.64 * ad_equiv_hogar, 2);


/*
8. Para calcular la tasa de hogares bajo la linea de pobreza utilicen una sola observación por 
hogar y sumen el ponderador PONDIH que permite expandir la muestra de la EPH al total de la población
que representa. ¿Cuál es la tasa de hogares bajo la línea de pobreza para el Gran Buenos Aires? 
¿Lograron que se asemeje al % que reporta el INDEC?
*/

-- Tasa de hogares bajo la linea de pobresa en el Gran Buenos Aires
SELECT ROUND(((hogares_pobres * 100.0) / total_hogares), 2) AS tasa_hogares_pobres_GBA
FROM (
	SELECT
		SUM(CASE WHEN pobre = 1 OR pobre=0 THEN pondih::integer ELSE 0 END) AS total_hogares,
		SUM(CASE WHEN pobre = 1 THEN pondih::integer ELSE 0 END) AS hogares_pobres
	FROM respondieron_hogar where aglomerado =33
) AS subquery;

-- Tasa de hogares bajo la linea de pobresa en el GBA y CABA
SELECT ROUND(((hogares_pobres * 100.0) / total_hogares), 2) AS tasa_hogares_pobres
FROM (
	SELECT
		SUM(CASE WHEN pobre = 1 OR pobre=0 THEN pondih::integer ELSE 0 END) AS total_hogares,
		SUM(CASE WHEN pobre = 1 THEN pondih::integer ELSE 0 END) AS hogares_pobres
	FROM respondieron_hogar
) AS subquery;

