--Parte I: Analisis.


--________________________________________________
--|  Migrando tabla usu_individual_T122.txt.txt  |
--------------------------------------------------


--Creamos la tabla que recibe los datos de la migracion(del archivo usu_individual_T122.txt.txt)
CREATE TABLE temporal (
CODUSU text,
ANO4 text,
TRIMESTRE text,
NRO_HOGAR text,
COMPONENTE text,
H15 text,
REGION text,
MAS_500 text,
AGLOMERADO text,
PONDERA text,
CH03 text,
CH04 text,
CH05 text,
CH06 text,
CH07 text,
CH08 text,
CH09 text,
CH10 text,
CH11 text,
CH12 text,
CH13 text,
CH14 text,
CH15 text,
CH15_COD text,
CH16 text,
CH16_COD text,
NIVEL_ED text,
ESTADO text,
CAT_OCUP text,
CAT_INAC text,
IMPUTA text,
PP02C1 text,
PP02C2 text,
PP02C3 text,
PP02C4 text,
PP02C5  text,
PP02C6 text,
PP02C7 text,
PP02C8 text,
PP02E text,
PP02H text,
PP02I text,
PP03C text,
PP03D text,
PP3E_TOT text,
PP3F_TOT text,
PP03G text,
PP03H text,
PP03I text,
PP03J text,
INTENSI text,
PP04A text,
PP04B_COD text,
PP04B1 text,
PP04B2 text,
PP04B3_MES text,
PP04B3_ANO text,
PP04B3_DIA text,
PP04C text,
PP04C99 text,
PP04D_COD text,
PP04G text,
PP05B2_MES text,
PP05B2_ANO text,
PP05B2_DIA text,
PP05C_1 text,
PP05C_2 text,
PP05C_3 text,
PP05E text,
PP05F text,
PP05H text,
PP06A text,
PP06C text,
PP06D text,
PP06E text,
PP06H text,
PP07A text,
PP07C text,
PP07D text,
PP07E text,
PP07F1 text,
PP07F2 text,
PP07F3 text,
PP07F4 text,
PP07F5 text,
PP07G1 text,
PP07G2 text,
PP07G3 text,
PP07G4 text,
PP07G_59 text,
PP07H text,
PP07I text,
PP07J text,
PP07K text,
PP08D1 text,
PP08D4 text,
PP08F1 text,
PP08F2 text,
PP08J1 text,
PP08J2 text,
PP08J3 text,
PP09A text,
PP09A_ESP text,
PP09B text,
PP09C text,
PP09C_ESP text,
PP10A text,
PP10C text,
PP10D text,
PP10E text,
PP11A text,
PP11B_COD text,
PP11B1 text,
PP11B2_MES text,
PP11B2_ANO text,
PP11B2_DIA text,
PP11C text,
PP11C99 text,
PP11D_COD text,
PP11G_ANO text,
PP11G_MES text,
PP11G_DIA text,
PP11L text,
PP11L1 text,
PP11M text,
PP11N text,
PP11O text,
PP11P text,
PP11Q text,
PP11R text,
PP11S text,
PP11T text,
P21 text,
DECOCUR text,
IDECOCUR text,
RDECOCUR text,
GDECOCUR text,
PDECOCUR text,
ADECOCUR text,
PONDIIO text,
TOT_P12 text,
P47T text,
DECINDR text,
IDECINDR text,
RDECINDR text,
GDECINDR text,
PDECINDR text,
ADECINDR text,
PONDII text,
V2_M text,
V3_M text,
V4_M text,
V5_M text,
V8_M text,
V9_M text,
V10_M text,
V11_M text,
V12_M text,
V18_M text,
V19_AM text,
V21_M text,
T_VI text,
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
PONDIH text
);


--En psql migramos los datos del archivo usu_individual_T122.txt.txt a la tabla temporal
\copy temporal FROM 'C:\Users\belug\Downloads\EPH_usu_1_Trim_2022_txt\EPH_usu_1er_Trim_2022_txt/usu_individual_T122.txt.txt' WITH DELIMITER ';' CSV HEADER NULL '';

--Pasamos los datos que corresponden de formato text a NUMERIC
ALTER TABLE temporal ALTER COLUMN ANO4 TYPE NUMERIC(4) USING NULLIF(ANO4, '')::NUMERIC(4);
ALTER TABLE temporal ALTER COLUMN TRIMESTRE TYPE NUMERIC(1) USING NULLIF(TRIMESTRE, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN NRO_HOGAR TYPE NUMERIC(2) USING NULLIF(NRO_HOGAR, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN COMPONENTE TYPE NUMERIC(2) USING NULLIF(COMPONENTE, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN H15 TYPE NUMERIC(1) USING NULLIF(H15, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN REGION TYPE NUMERIC(2) USING NULLIF(REGION, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN AGLOMERADO TYPE NUMERIC(2) USING NULLIF(AGLOMERADO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PONDERA TYPE NUMERIC(6) USING NULLIF(PONDERA, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN CH03 TYPE NUMERIC(2) USING NULLIF(CH03, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN CH04 TYPE NUMERIC(1) USING NULLIF(CH04, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH06 TYPE NUMERIC(3) USING NULLIF(CH06, '')::NUMERIC(3);
ALTER TABLE temporal ALTER COLUMN CH07 TYPE NUMERIC(1) USING NULLIF(CH07, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH08 TYPE NUMERIC(3) USING NULLIF(CH08, '')::NUMERIC(3);
ALTER TABLE temporal ALTER COLUMN CH09 TYPE NUMERIC(1) USING NULLIF(CH09, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH10 TYPE NUMERIC(1) USING NULLIF(CH10, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH11 TYPE NUMERIC(1) USING NULLIF(CH11, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH12 TYPE NUMERIC(2) USING NULLIF(CH12, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN CH13 TYPE NUMERIC(1) USING NULLIF(CH13, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH14 TYPE NUMERIC(2) USING NULLIF(CH14, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN CH15 TYPE NUMERIC(1) USING NULLIF(CH15, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CH16 TYPE NUMERIC(1) USING NULLIF(CH16, '')::NUMERIC(1);


ALTER TABLE temporal ALTER COLUMN NIVEL_ED TYPE NUMERIC(1) USING NULLIF(NIVEL_ED, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN ESTADO TYPE NUMERIC(1) USING NULLIF(ESTADO, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CAT_OCUP TYPE NUMERIC(1) USING NULLIF(CAT_OCUP, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN CAT_INAC TYPE NUMERIC(1) USING NULLIF(CAT_INAC, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN IMPUTA TYPE NUMERIC(1) USING NULLIF(IMPUTA, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP02C1 TYPE NUMERIC(1) USING NULLIF(PP02C1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C2 TYPE NUMERIC(1) USING NULLIF(PP02C2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C3 TYPE NUMERIC(1) USING NULLIF(PP02C3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C4 TYPE NUMERIC(1) USING NULLIF(PP02C4, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C5 TYPE NUMERIC(1) USING NULLIF(PP02C5, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C6 TYPE NUMERIC(1) USING NULLIF(PP02C6, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP02C7 TYPE NUMERIC(1) USING NULLIF(PP02C7, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02C8 TYPE NUMERIC(1) USING NULLIF(PP02C8, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02E TYPE NUMERIC(1) USING NULLIF(PP02E, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02H TYPE NUMERIC(1) USING NULLIF(PP02H, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP02I TYPE NUMERIC(1) USING NULLIF(PP02I, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP03C TYPE NUMERIC(1) USING NULLIF(PP03C, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP03D TYPE NUMERIC(1) USING NULLIF(PP03D, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP03G TYPE NUMERIC(1) USING NULLIF(PP03G, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP03H TYPE NUMERIC(1) USING NULLIF(PP03H, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP03I TYPE NUMERIC(1) USING NULLIF(PP03I, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP03J TYPE NUMERIC(1) USING NULLIF(PP03J, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN INTENSI TYPE NUMERIC(1) USING NULLIF(INTENSI, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP04A TYPE NUMERIC(1) USING NULLIF(PP04A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP04B_COD TYPE NUMERIC(5) USING NULLIF(PP04B_COD, '')::NUMERIC(5);
ALTER TABLE temporal ALTER COLUMN PP04B1 TYPE NUMERIC(1) USING NULLIF(PP04B1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP04B2 TYPE NUMERIC(2) USING NULLIF(PP04B2, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP04B3_MES TYPE NUMERIC(2) USING NULLIF(PP04B3_MES, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP04B3_ANO TYPE NUMERIC(2) USING NULLIF(PP04B3_ANO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP04B3_DIA TYPE NUMERIC(2) USING NULLIF(PP04B3_DIA, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP04C TYPE NUMERIC(2) USING NULLIF(PP04C, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP04C99 TYPE NUMERIC(1) USING NULLIF(PP04C99, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP04G TYPE NUMERIC(2) USING NULLIF(PP04G, '')::NUMERIC(2);

ALTER TABLE temporal ALTER COLUMN PP05B2_MES TYPE NUMERIC(2) USING NULLIF(PP05B2_MES, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP05B2_ANO TYPE NUMERIC(2) USING NULLIF(PP05B2_ANO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP05B2_DIA TYPE NUMERIC(2) USING NULLIF(PP05B2_DIA, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP05C_1 TYPE NUMERIC(1) USING NULLIF(PP05C_1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP05C_2 TYPE NUMERIC(1) USING NULLIF(PP05C_2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP05C_3 TYPE NUMERIC(1) USING NULLIF(PP05C_3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP05E TYPE NUMERIC(1) USING NULLIF(PP05E, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP05F TYPE NUMERIC(1) USING NULLIF(PP05F, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP05H TYPE NUMERIC(1) USING NULLIF(PP05H, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP06A TYPE NUMERIC(1) USING NULLIF(PP06A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP06C TYPE NUMERIC(10) USING NULLIF(PP06C, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP06D TYPE NUMERIC(10) USING NULLIF(PP06D, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP06E TYPE NUMERIC(1) USING NULLIF(PP06E, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP06H TYPE NUMERIC(10) USING NULLIF(PP06H, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP07A TYPE NUMERIC(1) USING NULLIF(PP07A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07C TYPE NUMERIC(1) USING NULLIF(PP07C, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07D TYPE NUMERIC(1) USING NULLIF(PP07D, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07E TYPE NUMERIC(1) USING NULLIF(PP07E, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP07F1 TYPE NUMERIC(1) USING NULLIF(PP07F1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07F2 TYPE NUMERIC(1) USING NULLIF(PP07F2, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07F3 TYPE NUMERIC(1) USING NULLIF(PP07F3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07F4 TYPE NUMERIC(1) USING NULLIF(PP07F4, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07F5 TYPE NUMERIC(1) USING NULLIF(PP07F5, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07G1 TYPE NUMERIC(1) USING NULLIF(PP07G1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07G2 TYPE NUMERIC(1) USING NULLIF(PP07G2, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP07G3 TYPE NUMERIC(1) USING NULLIF(PP07G3, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07G4 TYPE NUMERIC(1) USING NULLIF(PP07G4, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07G_59 TYPE NUMERIC(1) USING NULLIF(PP07G_59, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07H TYPE NUMERIC(1) USING NULLIF(PP07H, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07I TYPE NUMERIC(1) USING NULLIF(PP07I, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07J TYPE NUMERIC(1) USING NULLIF(PP07J, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP07K TYPE NUMERIC(1) USING NULLIF(PP07K, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP08D1 TYPE NUMERIC(10) USING NULLIF(PP08D1, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP08D4 TYPE NUMERIC(10) USING NULLIF(PP08D4, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP08F1 TYPE NUMERIC(10) USING NULLIF(PP08F1, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP08F2 TYPE NUMERIC(10) USING NULLIF(PP08F2, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PP08J1 TYPE NUMERIC(6) USING NULLIF(PP08J1, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN PP08J2 TYPE NUMERIC(6) USING NULLIF(PP08J2, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN PP08J3 TYPE NUMERIC(6) USING NULLIF(PP08J3, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN PP09A TYPE NUMERIC(1) USING NULLIF(PP09A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP09B TYPE NUMERIC(1) USING NULLIF(PP09B, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP09C TYPE NUMERIC(1) USING NULLIF(PP09C, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP10A TYPE NUMERIC(1) USING NULLIF(PP10A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP10C TYPE NUMERIC(1) USING NULLIF(PP10C, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP10D TYPE NUMERIC(1) USING NULLIF(PP10D, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP10E TYPE NUMERIC(1) USING NULLIF(PP10E, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP11A TYPE NUMERIC(1) USING NULLIF(PP11A, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11B_COD TYPE NUMERIC(5) USING NULLIF(PP11B_COD, '')::NUMERIC(5);
ALTER TABLE temporal ALTER COLUMN PP11B1 TYPE NUMERIC(1) USING NULLIF(PP11B1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11B2_MES TYPE NUMERIC(2) USING NULLIF(PP11B2_MES, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11B2_ANO TYPE NUMERIC(2) USING NULLIF(PP11B2_ANO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11B2_DIA TYPE NUMERIC(2) USING NULLIF(PP11B2_DIA, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11C TYPE NUMERIC(2) USING NULLIF(PP11C, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11C99 TYPE NUMERIC(1) USING NULLIF(PP11C99, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11D_COD TYPE NUMERIC(5) USING NULLIF(PP11D_COD, '')::NUMERIC(5);

ALTER TABLE temporal ALTER COLUMN PP11G_MES TYPE NUMERIC(2) USING NULLIF(PP11G_MES, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11G_ANO TYPE NUMERIC(2) USING NULLIF(PP11G_ANO, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11G_DIA TYPE NUMERIC(2) USING NULLIF(PP11G_DIA, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11L TYPE NUMERIC(1) USING NULLIF(PP11L, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11L1 TYPE NUMERIC(1) USING NULLIF(PP11L1, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11M TYPE NUMERIC(1) USING NULLIF(PP11M, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11N TYPE NUMERIC(1) USING NULLIF(PP11N, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN PP11O TYPE NUMERIC(2) USING NULLIF(PP11O, '')::NUMERIC(2);
ALTER TABLE temporal ALTER COLUMN PP11P TYPE NUMERIC(1) USING NULLIF(PP11P, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11Q TYPE NUMERIC(1) USING NULLIF(PP11Q, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11R TYPE NUMERIC(1) USING NULLIF(PP11R, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11S TYPE NUMERIC(1) USING NULLIF(PP11S, '')::NUMERIC(1);
ALTER TABLE temporal ALTER COLUMN PP11T TYPE NUMERIC(1) USING NULLIF(PP11T, '')::NUMERIC(1);

ALTER TABLE temporal ALTER COLUMN P21 TYPE NUMERIC(10) USING NULLIF(P21, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PONDIIO TYPE NUMERIC(6) USING NULLIF(PONDIIO, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN TOT_P12 TYPE NUMERIC(12) USING NULLIF(TOT_P12, '')::NUMERIC(12);
ALTER TABLE temporal ALTER COLUMN P47T TYPE NUMERIC(10) USING NULLIF(P47T, '')::NUMERIC(10);
ALTER TABLE temporal ALTER COLUMN PONDII TYPE NUMERIC(6) USING NULLIF(PONDII, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN V2_M TYPE NUMERIC(6) USING NULLIF(V2_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V3_M TYPE NUMERIC(7) USING NULLIF(V3_M, '')::NUMERIC(7);
ALTER TABLE temporal ALTER COLUMN V4_M TYPE NUMERIC(6) USING NULLIF(V4_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V5_M TYPE NUMERIC(6) USING NULLIF(V5_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V8_M TYPE NUMERIC(6) USING NULLIF(V8_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V9_M TYPE NUMERIC(6) USING NULLIF(V9_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V10_M TYPE NUMERIC(6) USING NULLIF(V10_M, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN V11_M TYPE NUMERIC(6) USING NULLIF(V11_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V12_M TYPE NUMERIC(6) USING NULLIF(V12_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V18_M TYPE NUMERIC(6) USING NULLIF(V18_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V19_AM TYPE NUMERIC(6) USING NULLIF(V19_AM, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN V21_M TYPE NUMERIC(6) USING NULLIF(V21_M, '')::NUMERIC(6);
ALTER TABLE temporal ALTER COLUMN PONDIH TYPE NUMERIC(6) USING NULLIF(PONDIH, '')::NUMERIC(6);

ALTER TABLE temporal ALTER COLUMN CH05 TYPE DATE USING NULLIF(CH05, '')::DATE;
ALTER TABLE temporal ALTER COLUMN PP3E_TOT TYPE NUMERIC(5,1) USING NULLIF(PP3E_TOT, '')::NUMERIC(5,1);
ALTER TABLE temporal ALTER COLUMN PP3F_TOT TYPE NUMERIC(5,1) USING NULLIF(PP3F_TOT, '')::NUMERIC(5,1);
ALTER TABLE temporal ALTER COLUMN T_VI TYPE NUMERIC(12,4) USING NULLIF(T_VI, '')::NUMERIC(12,4);
ALTER TABLE temporal ALTER COLUMN ITF TYPE NUMERIC(12,2) USING NULLIF(ITF, '')::NUMERIC(12,2);
ALTER TABLE temporal ALTER COLUMN IPCF TYPE NUMERIC(12,2) USING REPLACE(IPCF, ',', '.')::NUMERIC(12,2);

/*
b. Elimine todas las observaciones que no corresponden a los aglomerados 
de Ciudad Autónoma de Buenos Aires o Gran Buenos Aires.
*/
--Creamos la tabla que va a recibir los datos limpios/finales
CREATE TABLE individual (	
CODUSU char(29),
ANO4 numeric(4),
TRIMESTRE numeric(1),
NRO_HOGAR numeric(2),
COMPONENTE numeric(2),
H15 numeric(1),
REGION numeric(2),
MAS_500 char(1),
AGLOMERADO numeric(2),
PONDERA numeric(6),
CH03 numeric(2),
CH04 numeric(1),
CH05 date,
CH06 numeric(3),
CH07 numeric(1),
CH08 numeric(3),
CH09 numeric(1),
CH10 numeric(1),
CH11 numeric(1),
CH12 numeric(2),
CH13 numeric(1),
CH14 numeric(2),
CH15 numeric(1),
CH15_COD char(3),
CH16 numeric(1),
CH16_COD char(3),
NIVEL_ED numeric(1),
ESTADO numeric(1),
CAT_OCUP numeric(1),
CAT_INAC numeric(1),
IMPUTA numeric(1),
PP02C1 numeric(1),
PP02C2 numeric(1),
PP02C3 numeric(1),
PP02C4 numeric(1),
PP02C5  numeric(1),
PP02C6 numeric(1),
PP02C7 numeric(1),
PP02C8 numeric(1),
PP02E numeric(1),
PP02H numeric(1),
PP02I numeric(1),
PP03C numeric(1),
PP03D numeric(1),
PP3E_TOT numeric(5,1),
PP3F_TOT numeric(5,1),
PP03G numeric(1),
PP03H numeric(1),
PP03I numeric(1),
PP03J numeric(1),
INTENSI numeric(1),
PP04A numeric(1),
PP04B_COD numeric(5),
PP04B1 numeric(1),
PP04B2 numeric(2),
PP04B3_MES numeric(2),
PP04B3_ANO numeric(2),
PP04B3_DIA numeric(2),
PP04C numeric(2),
PP04C99 numeric(1),
PP04D_COD char(5),
PP04G numeric(2),
PP05B2_MES numeric(2),
PP05B2_ANO numeric(2),
PP05B2_DIA numeric(2),
PP05C_1 numeric(1),
PP05C_2 numeric(1),
PP05C_3 numeric(1),
PP05E numeric(1),
PP05F numeric(1),
PP05H numeric(1),
PP06A numeric(1),
PP06C numeric(10),
PP06D numeric(10),
PP06E numeric(1),
PP06H numeric(10),
PP07A numeric(1),
PP07C numeric(1),
PP07D numeric(1),
PP07E numeric(1),
PP07F1 numeric(1),
PP07F2 numeric(1),
PP07F3 numeric(1),
PP07F4 numeric(1),
PP07F5 numeric(1),
PP07G1 numeric(1),
PP07G2 numeric(1),
PP07G3 numeric(1),
PP07G4 numeric(1),
PP07G_59 numeric(1),
PP07H numeric(1),
PP07I numeric(1),
PP07J numeric(1),
PP07K numeric(1),
PP08D1 numeric(10),
PP08D4 numeric(10),
PP08F1 numeric(10),
PP08F2 numeric(10),
PP08J1 numeric(6),
PP08J2 numeric(6),
PP08J3 numeric(6),
PP09A numeric(1),
PP09A_ESP char(90),
PP09B numeric(1),
PP09C numeric(1),
PP09C_ESP char(90),
PP10A numeric(1),
PP10C numeric(1),
PP10D numeric(1),
PP10E numeric(1),
PP11A numeric(1),
PP11B_COD numeric(5),
PP11B1 numeric(1),
PP11B2_MES numeric(2),
PP11B2_ANO numeric(2),
PP11B2_DIA numeric(2),
PP11C numeric(2),
PP11C99 numeric(1),
PP11D_COD numeric(5),
PP11G_ANO numeric(2),
PP11G_MES numeric(2),
PP11G_DIA numeric(2),
PP11L numeric(1),
PP11L1 numeric(1),
PP11M numeric(1),
PP11N numeric(1),
PP11O numeric(2),
PP11P numeric(1),
PP11Q numeric(1),
PP11R numeric(1),
PP11S numeric(1),
PP11T numeric(1),
P21 numeric(10),
DECOCUR char(2),
IDECOCUR char(2),
RDECOCUR char(2),
GDECOCUR char(2),
PDECOCUR char(2),
ADECOCUR char(2),
PONDIIO numeric(6),
TOT_P12 numeric(12),
P47T numeric(10),
DECINDR char(2),
IDECINDR char(2),
RDECINDR char(2),
GDECINDR char(2),
PDECINDR char(2),
ADECINDR char(2),
PONDII numeric(6),
V2_M numeric(6),
V3_M numeric(7),
V4_M numeric(6),
V5_M numeric(6),
V8_M numeric(6),
V9_M numeric(6),
V10_M numeric(6),
V11_M numeric(6),
V12_M numeric(6),
V18_M numeric(6),
V19_AM numeric(6),
V21_M numeric(6),
T_VI numeric(12,4),
ITF numeric(12,2),
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
PONDIH numeric(6)
);


--Colocamos los datos limpios en la tabla individual
-- Solo los datos de los aglomerados CABA 32 y GBA 33
INSERT INTO individual
SELECT *
FROM temporal where aglomerado = 32 OR aglomerado=33;

-- Comprobamos que tenga datos de caba y gba
select * from individual;

-- Borramos la tabla temporal
DROP TABLE temporal;



/*
c. Si hay observaciones con valores que no tienen sentido, 
descártelas (ingresos y edades negativos, por ejemplo).
*/

-- Limpieza valores sin sentido
-- Borrar los registros con edad negativa
delete from individual where ch06 <0;
delete from individual where ch10 >3;
delete from individual where ch12 >9;

--ingresos negativos
delete from individual where P21 <0;
delete from individual where Tot_p12 <0;
delete from individual where p47T <0;
delete from individual where V2_M <0;
delete from individual where V3_M <0;
delete from individual where V4_M <0;
delete from individual where V5_M <0;
delete from individual where V8_M <0;
delete from individual where V9_M <0;
delete from individual where V10_M <0;
delete from individual where V11_M <0;
delete from individual where V12_M <0;
delete from individual where V19_AM <0;
delete from individual where t_vi <0;

/*
f. ¿Cuántos desocupados hay en la muestra? 
¿Cuántos inactivos? 
¿Cuál es la media de ingreso per cápita familiar (IPCF) según estado (ocupado, desocupado, inactivo)?
*/

--Total de personas desocupadas
SELECT COUNT(ESTADO) AS Total_Desocupados
FROM individual
WHERE ESTADO = 2;

--Total de personas inactivas
SELECT COUNT(ESTADO) AS Total_Inactivos
FROM individual
WHERE ESTADO = 3;

--Media de Ingreso Per Cápita Familiar(IPCF) 
--Por personas ocupadas
SELECT ROUND(AVG(ipcf), 2) AS Promedio_IPCF_Ocupados
FROM individual
WHERE estado = 1;

--Media de Ingreso Per Cápita Familiar(IPCF) 
--Por personas desocupadas
SELECT ROUND(AVG(ipcf), 2) AS Promedio_IPCF_Desocupados
FROM individual
WHERE estado = 2;

--Media de Ingreso Per Cápita Familiar(IPCF) 
--Por personas inactivas
SELECT ROUND(AVG(ipcf), 2) AS Promedio_IPCF_Inactivos
FROM individual
WHERE estado = 3;



/*
g. Utilizando el archivo tabla_adulto_equiv.xlsx, agregue una columna a su base de datos 
llamada adulto_equiv que contenga los valores de adulto equivalente de cada persona 
según su sexo y edad (por ejemplo, a un varón de 2 años le corresponde 0.46). 
*/


-- Crear la secuencia con un valor inicial de 0
CREATE SEQUENCE secuencia_edad START WITH 0 MINVALUE 0;

--creamos tabla_adulto_equiv utilizando la secuencia personalizada
CREATE TABLE tabla_adulto_equiv (
    edad integer DEFAULT nextval('secuencia_edad') PRIMARY KEY,
    mujeres numeric(3,2),
    varones numeric(3,2)
);


INSERT INTO tabla_adulto_equiv (mujeres, varones) VALUES
  (0.35, 0.35),
  (0.37, 0.37),
  (0.46, 0.46),
  (0.51, 0.51),
  (0.55, 0.55),
  (0.60, 0.60),
  (0.64, 0.64),
  (0.66, 0.66),
  (0.68, 0.68),
  (0.69, 0.69),
  (0.70, 0.79),
  (0.72, 0.82),
  (0.74, 0.85),
  (0.76, 0.90),
  (0.76, 0.96),
  (0.77, 1.00),
  (0.77, 1.03),
  (0.77, 1.04),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.76, 1.02),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.77, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.76, 1.00),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.67, 0.83),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74),
  (0.63, 1.74);

-- Agregar la columna adulto_equiv con valor por defecto NULL
ALTER TABLE individual
ADD COLUMN adulto_equiv numeric(3,2) DEFAULT NULL;

-- Coloca los valores de tabla_adulto_equiv.mujeres en la columna individual.adulto_equiv 
--cuando la persona es mujer
UPDATE individual
SET adulto_equiv = tabla_adulto_equiv.mujeres
FROM tabla_adulto_equiv
WHERE tabla_adulto_equiv.edad = individual.CH06
  AND individual.CH04 = 2;

-- Coloca los valores de tabla_adulto_equiv.varones en la columna individual.adulto_equiv 
--cuando la persona es varon
UPDATE individual
SET adulto_equiv = tabla_adulto_equiv.varones
FROM tabla_adulto_equiv
WHERE tabla_adulto_equiv.edad = individual.CH06
  AND individual.CH04 = 1;



/*
h. Finalmente, con el comando GROUP BY sume esta nueva columna para las personas 
que pertenecen a un mismo hogar y guarde ese dato en una columna llamada ad_equiv_hogar 
(por ejemplo, si una familia está compuesta por un varón de 40 años (adulto_equiv=1) y su 
esposa de la misma edad (adulto_equiv=0.77) con sus mellizos varones de 5 años (adulto_equiv=0.60 
cada uno), a todos se les deberá imputar en ad_equiv_hogar un valor igual a 2.97, que es 
la cantidad de adultos equivalentes en ese hogar.)
*/
-- Agregamos la columna ad_equiv_hogar a la tabla individual  
ALTER TABLE individual
ADD COLUMN ad_equiv_hogar numeric(4,2) DEFAULT NULL;

-- Colocamos los valores correspondientes en la columna ad_equiv_hogar por cada registro de la tabla individual
UPDATE individual AS i
SET ad_equiv_hogar = subquery.suma_adulto_equiv
FROM (
    SELECT codusu, SUM(adulto_equiv) as suma_adulto_equiv
    FROM individual
    GROUP BY codusu
) AS subquery
WHERE i.codusu = subquery.codusu;


/*
3. Uno de los grandes problemas de la EPH es la creciente cantidad de hogares que no reportan 
sus ingresos. ¿Cuántas personas no respondieron cuál es su ingreso total familiar (ITF)? 
Guarde como una base distinta las observaciones donde respondieron la pregunta sobre su ITF 
bajo el nombre respondieron. Las observaciones con ITF=0 guárdelas bajo el nombre norespondieron.
*/

-- Cantidad de personas que no respondieron cual es su ingreso total familiar(ITF)
SELECT COUNT(itf) AS cant_no_respondieron FROM individual WHERE itf =0;

-- Crear tabla respondieron
CREATE TABLE respondieron AS
SELECT *
FROM individual
WHERE itf > 0;

-- Crear tabla norespondieron
CREATE TABLE norespondieron AS
SELECT *
FROM individual
WHERE itf = 0;


/*
4. Sabiendo que la Canasta Básica Total para un adulto equivalente en el Gran Buenos Aires 
en el primer trimestre de 2022 es aproximadamente $27.197,64, agregue a la base respondieron 
una columna llamada ingreso_necesario que sea el producto de este valor por ad_equiv_hogar. 
*/

-- Agregamos la columna ingreso_necesario a la tabla respondieron 
ALTER TABLE respondieron
ADD ingreso_necesario NUMERIC; -- Agregar la columna

-- Colocamos los valores correspondientes en la columna ingreso_necesario
UPDATE respondieron
SET ingreso_necesario = ROUND(27197.64 * ad_equiv_hogar, 2);


/*
5. Por último, agregue a respondieron una columna llamada pobre que tome valor 1 si el ITF 
es menor al ingreso_necesario que necesita esa familia, y 0 en caso contrario. 
¿Cuántos pobres identificó?
*/

-- Agregar la columna pobre a la tabla respondieron
ALTER TABLE respondieron
ADD pobre INTEGER; 

-- Agregar los valores correspondientes a la columna pobre
UPDATE respondieron
SET pobre = CASE 
    WHEN ITF < ingreso_necesario THEN 1
    ELSE 0
    END; -- Establecer el valor de la columna "pobre"

-- Cuantos pobres se identificaron
select COUNT(*) from respondieron where pobre =1;
