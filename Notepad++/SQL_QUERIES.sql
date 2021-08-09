
https://beige-impala-7kovudzy.ws-us14.gitpod.io/


Cristiano Cadime <cristiano.cadime@teewe.com.br>





http://api-teewe.icnavais.net/api/cadernos?limit=0


--01Prosub@imz
--Proj2121@imznavais
--Vistas TEmplate L01 e CP1-1 e CP1-2 Tubulação e IMZ
Diego dias - TI

--HE9IeigsUcCqMTnOl9gn
SIECC

leonardo.souza@icnavais.com
outlook - e-mail


http://epm.icnavais.net/%40DOC_GERAL_INT_DISTINTO

http://epm.icnavais.net/%40DOC_GERAL_INT


Tube
http://epm.icnavais.net/%40MV_REF_LIS_EM
http://epm.icnavais.net/%40MV_LIT_90
http://epm.icnavais.net/%40CTE_FINAL_MAP


SELECT a.NOME_CLIENTE, a.CPF, a.CNPJ, b.PRODUTO
FROM [CONTROLE_GERAL] AS a
INNER JOIN [PRODUTO] AS b on b.[id_prod] = a.[prod_id]


SELECT 
  a.NOME_CLIENTE, 
  a.CPF, 
  a.CNPJ, 
  b.PRODUTO, 
  c.AG,
  d.SEG,
  a.NUMERO_APOLICE, 
  a.VALOR_PAGO, 
  a.DATA_RENOVACAO, 
  a.TEL_1, 
  a.TEL_2, 
  a.CEL_1, 
  a.CEL_WHAT, 
  a.EMAIL, 
  a.OBS 
FROM 
  ((([CONTROLE_GERAL] AS a 
  INNER JOIN [PRODUTO] AS b on b.[id_prod] = a.[prod_id]) 
  INNER JOIN [AGENCIA] AS c on c.[id_ag] = a.[ag_id])
  INNER JOIN [SEGURADORA] As d on d.[id_seg] = a.[seg_id]
  )
  
  
SELECT a.NOME_CLIENTE As CLIENTE, a.CPF As CPF, a.CNPJ, b.PRODUTO, c.AG,d.SEG,a.NUMERO_APOLICE, a.VALOR_PAGO, a.DATA_RENOVACAO, a.TEL_1, a.TEL_2, a.CEL_1, a.CEL_WHAT, a.EMAIL, a.OBS FROM ((([CONTROLE_GERAL] AS a INNER JOIN [PRODUTO] AS b on b.[id_prod] = a.[prod_id]) INNER JOIN [AGENCIA] AS c on c.[id_ag] = a.[ag_id])INNER JOIN [SEGURADORA] As d on d.[id_seg] = a.[seg_id])
  
  

  

rs.Open "SELECT a.NOME_CLIENTE , a.CPF, a.CNPJ, b.PRODUTO, c.AG,d.SEG,a.NUMERO_APOLICE, a.VALOR_PAGO, a.DATA_RENOVACAO, a.TEL_1, a.TEL_2, a.CEL_1, a.CEL_WHAT, a.EMAIL, a.OBS FROM ((([CONTROLE_GERAL] AS a INNER JOIN [PRODUTO] AS b on b.[id_prod] = a.[prod_id]) INNER JOIN [AGENCIA] AS c on c.[id_ag] = a.[ag_id])INNER JOIN [SEGURADORA] As d on d.[id_seg] = a.[seg_id])", db, 3, 3
            			
			
			
			

SELECT a.NOME_CLIENTE, a.CPF; a.CNPJ, prod.PRODUTO, ag.AG, seg.SEG, a.NUMERO_APOLICE, a.VALOR_PAGO, a.DATA_RENOVACAO, a.TEL_1, a.TEL_2, a.CEL_1, a.CEL_WHAT, a.EMAIL, a.OBS
FROM [CONTROLE_GERAL] AS a inner join PRODUTO prod on prod.[id_prod] = a.[prod_id] inner join AGENCIA AS ag on ag.[id_ag] = a.[ag_id] inner join SEGURADORA AS seg on seg.[id_seg] = a.[seg_id]



--Link Acesso EPM ao SIECC Status
http://api-teewe.icnavais.net/api/cadernos?limit=0


IMZ_USER

TeeWe server: 	ping udc0-twe02
				ping epm.icnavais.net

EPM
IMZ_USER
IMZ_USER			
--udc0-odb14
udc0-odb06
teewe			
		

		
SIECC
SIECC-PROD
cadernodb
udc0-odb07


xe





TUB - Fechamento CTE


-- Queries SQL
---------------------------------------------------------------------
VW_EPM_REPORT_CABLE_CCS
duplicar cadernos no template


select * from teewe_bde.VW_IR_INT_L01@cadernodb_dblink; 
select * from teewe_bde.VW_IR_TUB_L01@cadernodb_dblink;





-- Juntar 2 tabelas
JOIN LMA_H_INTEGRACAO t2 on t1.id = t2.id_caderno

-- Especificar colunas de retorno
SELECT t2.numero_caderno,t1.IM_PAI FROM LMA_H_INTEGRACAO t1
JOIN caderno t2 on t1.id = t2.id

-- IMZ IR_CONS
select * from
vw_imz_tdpis_ctecons@epm_imz

--#Encontrar Produto que não aparecem em outra vista
SELECT NUMERO FROM CTE
WHERE NUMERO NOT IN (SELECT "cte" FROM V_LIT_INTEGRACAO_TEWEE)

--#################### EPM ############################

-- IMZ MAPA
SELECT * FROM teewe_bde.vw_TAB_INT_CTE_FINAL_MAP

-- META
SELECT * FROM teewe_bde.vw_INT_DELNT_CRTL_META

-- IMZ PRODUTO_x_CADERNO
SELECT ATR_COS, ATR_IM, ATR_PR, ATR_CC, ATR_CC_CNX, ATR_MON_STATUS
FROM teewe_bde.TAB_INT_DELNT_PRODXCAD

--#################### EPM ############################

-- IMZ EPM IR 
SELECT ATR_COS_NUMBER, ATR_COS_PRODUCT_VERSION, ATR_COS_DESIGNATION, ATR_RIR_NUMBER, ATR_RIR_DESIGNATION, ATR_PROD_DESIGNATION_01, ATR_PROD_DESIGNATION_02, ATR_PROD_IM_01, ATR_PROD_IM_02
FROM teewe_bde.MV_INT_TDPIS_CTE_P
WHERE ATR_RIR_DESIGNATION like '%F07%' and ATR_COS_DESIGNATION like '%PIPES%'

-- IMZ EPM PL
SELECT ATR_COS_NUMBER, ATR_COS_PRODUCT_VERSION, ATR_COS_DESIGNATION, ATR_RPLOT_NUMBER,ATR_RMP_NUMBER, ATR_RMP_DESIGNATION, ATR_RMP_IM, ATR_ITEM_NUMBER_01,
ATR_RMP_IM, ATR_ITEM_NUMBER, ATR_ITEM_DESIGNATION, ATR_PROD_QTD_PROVIDED
FROM teewe_bde.MV_INT_TDPIS_PL_P

-- IMZ EPM LMA
SELECT LMA_IM_PAI, LMA_IM_FILHO, LMA_RP_FILHO, LMA_CMX, LMA_QUANTIDADE, LMA_DESCRICAO, LMA_PESO, LMA_OBSERVACAO, LMA_UNIDADE, LMA_ELASTOMER, LMA_TORQUE,
LMA_NORDLOCK, ATR_COS, ATR_CC
FROM teewe_bde.VW_EPM_INT_REPORT_CC_LMA

-- IMZ EPM LIT
SELECT LIT_COS_NUM,LIT_COS_REV,LIT_COS_NAME,LIT_CTE_NUM,LIT_CTE_NAME,LIT_PROD_IM,LIT_CTC,LIT_EQP_PAI,ATRCST_ID_CMX,LIT_CC
FROM teewe_bde.VW_EPM_INT_REPORT_CC_LIT

-- EPM RAI
select * from teewe_bde.PR_RAI

-- EPM PR_NCR
select * from teewe_bde.PR_NCR


-- EPM RIDA
SELECT NUMERO, PROD, STATUS, COS_CATEGORY, DECRIPTION, CREATED_BY
FROM teewe_bde.PR_RIDA

SELECT * FROM teewe_bde.INT_DELNT_CRTL_META_REV

SELECT * FROM teewe_bde.INT_DELNT_CRTL_META






--#################### SIECC ############################

-- IMZ SIECC LIT
SELECT caderno, cos, rev_cos, cte, titulo_cte, equipamento_pai, status
FROM V_LIT_INTEGRACAO_TEWEE

-- IMZ SIECC LMA
SELECT CADERNO, STATUS, IM_FILHO, RP_FILHO, CMX, QUANTIDADE, DESCRICAO
FROM V_LMA_INTEGRACAO_TEWEE


--LOG
select id_caderno, ID_USUARIO,DATA,ID_ACAO,ID_PERFIL,COMENTARIO FROM caderno_log

--ID_CC_LOG
select numero_caderno from caderno
where id in (SELECT id_caderno FROM caderno_log)





--ESPELHO SIECC                 
SELECT CONCAT ( CONCAT (tbCOS.CODIGO,'_'), tbCOS.REVISAO) As COS, tbCC.TITULO, tbV.LABEL As REV_CC,  tbCC.NUMERO_CADERNO, tbCC.DATA_CRIACAO, tbCC.DATA_FECHA,
tbSUB.SIGLA AS SBR, tbU.NOME AS ELABORADOR, tbU1.NOME AS VERIFICADOR, tbU2.NOME AS APROVADOR, tbS.DESCRICAO As STATUS, tbsec.SIGLA AS SECAO,
tbCC.COMENTARIO_CC, tbCC.COMENTARIO_DEI, tbCC.NOTAS_DEI, tbCC.TIPO AS TIPO_CC, tbCT.DIMENSAO As TIPO_ELEMNTO, tbCT.TORQUE, tbCD.NUMERO_DOC,
tbCD.REVISAO, tbCD.TITULO As TITULO_DOC, tbCD.PRODUTO, tbCD.OBS
FROM CADERNO tbCC
INNER JOIN COS tbCOS on tbCOS.ID = tbCC.ID_COS
INNER JOIN VERSAO tbV on tbV.ID = tbCC.ID_VERSAO
INNER JOIN STATUS_CAD tbS on tbS.ID = tbCC.ID_STATUS
INNER JOIN USUARIO tbU on tbU.ID = tbCC.ID_DELEGAR
INNER JOIN USUARIO tbU1 on tbU1.ID = tbCC.ID_VERIFICADOR
INNER JOIN USUARIO tbU2 on tbU2.ID = tbCC.ID_APROVADOR
INNER JOIN SUBMARINO tbSUB on tbSUB.ID = tbCC.ID_SUBMARINO
INNER JOIN SECAO tbsec on tbsec.ID = tbCOS.ID_SECAO
INNER JOIN CADERNO_DOCUMENTO tbCD on tbCD.ID_CADERNO = tbCC.ID
INNER JOIN CADERNO_TORQUE_INTEGRACAO tbCT on tbCT.ID_CADERNO = tbCC.ID



--ESPELHO SIECC                 
SELECT CONCAT ( CONCAT (tbCOS.CODIGO,'_'), tbCOS.REVISAO) As COS, tbCC.TITULO, tbV.LABEL As REV_CC,  tbCC.NUMERO_CADERNO, tbCC.DATA_CRIACAO, tbCC.DATA_FECHA,
tbSUB.SIGLA AS SBR, tbU.NOME AS ELABORADOR, tbU1.NOME AS VERIFICADOR, tbU2.NOME AS APROVADOR, tbS.DESCRICAO As STATUS, tbsec.SIGLA AS SECAO,
tbCC.COMENTARIO_CC, tbCC.COMENTARIO_DEI,
replace(
replace(
replace(
replace( 
replace(
replace( 
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
REGEXP_REPLACE(tbCC.NOTAS_DEI, '<.+>'),
'&#202;','Ê'),
'&#231;','ç'),
'&#227;','ã'),
'&#225;','á'),
'&#201;','é'),
'&#199;','Ç'),
'&#195;','Ã'),
'&#243;','ó'),
'&#245;','õ'),
'&#237;','í'),
'&#233;','é'),
'&#225;','á'),
'&#234;','ê'),
'&#231;','ç'),
'&#213;','Õ'),
'&#160;','')
AS NOTAS_DEI,
tbCC.TIPO AS TIPO_CC, tbCT.DIMENSAO As TIPO_ELEMNTO, tbCT.TORQUE, tbCD.NUMERO_DOC,
tbCD.REVISAO, tbCD.TITULO As TITULO_DOC, tbCD.PRODUTO, tbCD.OBS
FROM CADERNO tbCC
INNER JOIN COS tbCOS on tbCOS.ID = tbCC.ID_COS
INNER JOIN VERSAO tbV on tbV.ID = tbCC.ID_VERSAO
INNER JOIN STATUS_CAD tbS on tbS.ID = tbCC.ID_STATUS
INNER JOIN USUARIO tbU on tbU.ID = tbCC.ID_DELEGAR
INNER JOIN USUARIO tbU1 on tbU1.ID = tbCC.ID_VERIFICADOR
INNER JOIN USUARIO tbU2 on tbU2.ID = tbCC.ID_APROVADOR
INNER JOIN SUBMARINO tbSUB on tbSUB.ID = tbCC.ID_SUBMARINO
INNER JOIN SECAO tbsec on tbsec.ID = tbCOS.ID_SECAO
INNER JOIN CADERNO_DOCUMENTO tbCD on tbCD.ID_CADERNO = tbCC.ID
INNER JOIN CADERNO_TORQUE_INTEGRACAO tbCT on tbCT.ID_CADERNO = tbCC.ID





Select NUMERO_CADERNO, NOTAS_DEI,
replace(
replace(
replace(
replace( 
replace(
replace( 
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
replace(
REGEXP_REPLACE(NOTAS_DEI, '<.+>'),
'&#202;','Ê'),
'&#231;','ç'),
'&#227;','ã'),
'&#225;','á'),
'&#201;','é'),
'&#199;','Ç'),
'&#195;','Ã'),
'&#243;','ó'),
'&#245;','õ'),
'&#237;','í'),
'&#233;','é'),
'&#225','á'),
'&#234','ê'),
'&#231','ç'),
'&#213;','Õ'),
'&#160;',''),
'&#226;','â')
AS NOTAS_DEI_ALT
From V_ESPELHO_SIECC



select NUMERO_CADERNO, NOTAS_DEI From V_ESPELHO_SIECC



SELECT 
  NUMERO_CADERNO, 
  REGEXP_REPLACE(NOTAS_DEI, '<.+>') as NOTAS_DEI_ALT
FROM V_ESPELHO_SIECC



--join
select * from caderno_log clog
inner join caderno_h_log chlog on chlog.id_caderno = clog.id_caderno


select ac.descricao, u.nome from caderno_log clog
inner join caderno_h_log chlog on chlog.id_caderno = clog.id_caderno
inner join acao ac on ac.id = clog.id_acao 
inner join usuario u on u.id = clog.id_usuario










--#################### SIECC ############################
--SIECC
-- Status Log-TeeWe
select * from V_FLUXO_CADERNO_LOG_TEWEE

-- Status Log
select * from caderno_log

-- Status Log-TeeWe
SELECT ch.numero_caderno as SIEECID, vhist.label as REV_CC, cl.data as DATAACAO, per.descricao as PERFIL, cl.comentario, a.descricao as ACAO, u.nome as AUTOR  FROM caderno_log cl
inner join caderno_hist ch on cl.id_caderno = ch.id
inner join perfil per on cl.id_perfil = per.id
left join acao a on cl.id_acao = a.id
inner join usuario u on cl.id_usuario = u.id
inner join versao vhist on vhist.id = ch.id_versao;



-- buscar por vários itens de uma vez
select * from tabela
where coluna in ('item1','item2')



-- Achar Documento no CC
SELECT CODIGO, REVISAO, DESCRICAO, NUMERO_CADERNO FROM CADERNO
inner join COS cos  on cos.id = caderno.id_cos
where NUMERO_CADERNO = 'CC-319698-80500-11-014'




select NUMERO_CADERNO, DOCUMENTO, REVISAO from CADERNO t1
inner join V_DOCUMENTOS_CADERNO t2 on t1.ID = t2.ID_DOCUMENTO
where NUMERO_CADERNO = 'CC-319698-80500-11-014'


SELECT * FROM CADERNO
inner join COS cos  on cos.id = caderno.id_cos

SELECT CODIGO, REVISAO, DESCRICAO, NUMERO_CADERNO FROM CADERNO
inner join COS cos  on cos.id = caderno.id_cos
where NUMERO_CADERNO = 'CC-319698-80500-11-014'

SELECT CODIGO, REVISAO, DESCRICAO FROM COS


SELECT NUMERO FROM CTE
WHERE NUMERO NOT IN (select "cte" from V_LIT_INTEGRACAO_TEWEE)

SELECT * FROM STATUS_CAD


-- SIECC Original

CADERNODB.V_LMA_INTEGRACAO_TEWEE@siecc
CADERNODB.V_LIT_INTEGRACAO_TEWEE@siecc 

--#################################

--

--Encontra CTES JÁ REALIZADOS
-- IMZ SIECC LIT
SELECT "caderno", "cos", "rev_cos", "cte", "titulo_cte", "equipamento_pai", "status"
FROM V_LIT_INTEGRACAO_TEWEE
WHERE "cte" in (
'CTE00940336',
'CTE00940337',
'CTE00940338'
)
and "caderno" like '%-12-%'


--#Localizar PRs na capa dos cadernos
select * from (
SELECT ID, ID_CADERNO, NUMERO_DOC, REVISAO, PRODUTO FROM CADERNO_DOCUMENTO
WHERE ID_CADERNO in (SELECT ID FROM CADERNO
WHERE NUMERO_CADERNO != '-')
order by ID_CADERNO)
where NUMERO_DOC in 
(
'SMB-TDP-PR-XXXXXXX',
'SMB-TDP-PR-XXXXXXX',
'SMB-TDP-PR-XXXXXXX'
)

--#Select dados cadernos
SELECT ID, TITULO, COMENTARIO_CC, NUMERO_CADERNO FROM CADERNO
WHERE NUMERO_CADERNO != 'x'

--#Select dados Capa dos cadernos
SELECT ID, ID_CADERNO, NUMERO_DOC, REVISAO, PRODUTO FROM CADERNO_DOCUMENTO


-- Localizar caderno por documentos
SELECT NUMERO_CADERNO FROM CADERNO
WHERE ID in (
select ID_CADERNO from (
SELECT ID_CADERNO, NUMERO_DOC, REVISAO, PRODUTO FROM CADERNO_DOCUMENTO
WHERE ID_CADERNO in (SELECT ID FROM CADERNO
WHERE NUMERO_CADERNO != '-'))
where NUMERO_DOC in 
(
'SMB-EQUIPMENT-P0118274'
)
)

select
tabela.*
-- ,col_a || col_b resultado
from
(
select 'a' col_a, 'x' col_b from dual union
select 'b' col_a, 'x' col_b from dual union
select 'c' col_a, 'x' col_b from dual union
select 'a' col_a, 'y' col_b from dual union
select 'b' col_a, 'y' col_b from dual union
select 'c' col_a, 'y' col_b from dual union
select 'a' col_a, 'z' col_b from dual union
select 'b' col_a, 'z' col_b from dual union
select 'c' col_a, 'z' col_b from dual 
) tabela 
where col_a || col_b in ('ay','bz')





--LIT SIECC ORIGINAL
Select
verificador.nome as VERIFICADOR  ,
aprovador.nome as APROVADOR ,
elaborador.nome as ELABORADOR,
DIS.descricao AS disciplina,
Cad.Numero_Caderno caderno, 
Cad.Id As id_caderno, 
Ver.Label versao,
Status.Descricao As status,
Cos.Codigo As cos,
Cos.Revisao As rev_cos,
Cte.Numero As cte, 
Cte.Descricao As titulo_cte,
Cte.CTC As ctc,
Cct.Produto As produto,
Cct.Equipamento As equipamento_pai,
CCT.nota as NOTA 
From Cte Cte
INNER JOIN lit_integracao CCT on CCT.ID_CTE = CTE.ID 
INNER JOIN CADERNO CAD on CAD.ID = CCT.ID_CADERNO
Inner Join Cos Cos On Cos.Id = Cad.Id_Cos
Inner Join Disciplina Dis On Dis.Id = Cos.Id_Disciplina
INNER JOIN submarino SUB on SUB.id = CAD.id_submarino 
Inner Join Versao Ver On Ver.Id = Cad.Id_Versao 
Inner Join Status_Cad Status On Status.Id = Cad.Id_Status
Inner Join Usuario verificador On verificador.Id = Cad.ID_VERIFICADOR 
Inner Join Usuario elaborador On elaborador.Id = Cad.ID_DELEGAR 
Inner Join Usuario aprovador On aprovador.Id = Cad.ID_APROVADOR
where CTE.numero = 'CTE00976524' 



SELECT DISTINCT * FROM teewe_bde.VW_EPM_INT_REPORT_CC_LMA

--relacioan caderno e CTE SIECC
SELECT LIT_INTEGRA.id, LIT_INTEGRA.id_caderno, LIT_INTEGRA.id_cte, cte.numero, LIT_INTEGRA.produto FROM LIT_INTEGRACAO LIT_INTEGRA
inner join CTE cte on LIT_INTEGRA.id_cte = cte.id
WHERE LIT_INTEGRA.ID_CADERNO=40743 AND LIT_INTEGRA.TIPO_CADERNO='C' ORDER BY  LIT_INTEGRA.EQUIPAMENTO 


--C:\Users\00400889


SELECT a.ID, a.PRODUTO, a.EQUIPAMENTO, a.TIPO_CADERNO, a.SI, a.CQ, a.GQ, a.NOTA, b.NUMERO_CADERNO, c.NUMERO, c.DESCRICAO from LIT_INTEGRACAO a join CADERNO b on a.ID_CADERNO = b.id join CTE c on a.ID_CTE = c.ID
where a.TIPO_CADERNO is null




select cad.numero_caderno, cte.descricao,cte.numero,li.* 
from lit_integracao li
inner join caderno cad on li.id_caderno = cad.id
inner join CTE cte on cte.id = li.id_cte
where li.tipo_caderno is null 


--Join Caderno / CADERNO_DOCUMENTO
SELECT a.ID, a.NUMERO_CADERNO, b.ID_CADERNO, b.NUMERO_DOC, b.REVISAO, b.PRODUTO
from CADERNO a join CADERNO_DOCUMENTO b on a.ID = b.ID_CADERNO
where b.NUMERO_DOC in (
'SMB-EQUIPMENT-P0135337',
'SMB-EQUIPMENT-P0135967'
)





select a.numero_caderno, b.numero_doc, b.REVISAO
from caderno_documento b
inner join caderno a on b.id_caderno = a.id
where b.id_caderno in (select id from caderno where numero_caderno in (
'CC-200228-80500-11-001',
'CC-200228-80500-11-002',
'CC-200228-80500-11-004',
'CC-200229-80500-11-001'
))
AND b.numero_doc  in (
'SMB-200228',
'SMB-200228',
'SMB-200228',
'SMB-200229'
)













select * from (
select a.numero_caderno, b.numero_doc, b.REVISAO, CONCAT(a.numero_caderno,b.numero_doc) as CONCATENADOS
from caderno_documento b
inner join caderno a on b.id_caderno = a.id
where b.id_caderno in (select id from caderno where numero_caderno in (
'CC-000000-30600-11-054',
'CC-000000-30600-11-075'
))
AND b.numero_doc  in (
'SMB-206089',
'SMB-206041'
)
)
where CONCATENADOS in (
'CC-200154-80500-11-001SMB-200154',
'CC-200226-42510-11-001SMB-200226'
)




















#-----------------------------------
usuário: IMZ_USER
senha: IMZ_2019


LIT_SIECC_SQL
SELECT 
  verificador.nome AS VERIFICADOR,
  aprovador.nome AS APROVADOR,
  elaborador.nome AS ELABORADOR,
  disc.descricao AS DISCIPLINA,
  cc.numero_caderno AS CADERNO,
  cc.id AS ID_CADERNO,
  ver.label AS VERSAO,
  stat.descricao AS STATUS,
  cos.codigo AS COS,
  cos.revisao AS REV_COS,
  cte.numero AS CTE,
  cte.ctc AS CTC,
  li.produto AS PRODUTO,
  li.equipamento AS EQUIPAMENTO_PAITESTE,
  li.nota AS NOTATESTE,
  li.tipo_caderno AS TIPO_CADERNO
FROM
  LIT_INTEGRACAO li
INNER JOIN CADERNO cc on cc.id = li.id_caderno
INNER JOIN CTE cte on cte.id = li.id_cte
INNER JOIN COS cos on cos.id = cc.id_cos
INNER JOIN DISCIPLINA disc on disc.id = cos.id_disciplina
INNER JOIN SUBMARINO sub on sub.id = cc.id_submarino
INNER JOIN VERSAO ver on ver.id = cc.id_versao
INNER JOIN STATUS_CAD stat on stat.id = cc.id_status
INNER JOIN USUARIO verificador On verificador.Id = cc.id_verificador
INNER JOIN USUARIO elaborador On elaborador.Id = cc.id_delegar
INNER JOIN USUARIO aprovador On aprovador.Id = cc.id_aprovador
WHERE li.tipo_caderno IS NOT NULL AND cc.numero_caderno = 'CC-200551-80510-11-002' 


--Encontrar colunas de uma abela
select *
from all_tab_columns
where TABLE_NAME = 'CADERNO'



--capa caderno
SELECT id_caderno , titulo, documento  , revisao ,  impressao , folhas_alteradas , origem ,  produto , prod_rev , obs
from V_DOCUMENTO
where id_caderno = 48219



--encontrar LIJ
select distinct c.id as ID_CADERNO , c.titulo , replace ( c.numero_caderno , 'CC-' , 'LIJ-' ) , v.label ,
 NVL(c.impressao_LJ ,'N') AS IMPRESSAO , null , 'ICN' , null , null , null 
 from caderno c
 inner join versao v on v.id = c.ID_VERSAO_LJ
 where c.ID_VERSAO_LJ is not null
 and c.id = 48219 
 
 
--#FILTROS ESPECIAIS

--Filtro Elaborador por caderno com busca de desritivo de produto/elemento
-- IMZ EPM IR select * from teewe_bde.TAB_INT_DELNT_PRODXCAD
SELECT ATR_COS, ATR_IM, ATR_PR, ATR_CC, ATR_CC_CNX, ATR_MON_STATUS, ATR_ELABORADOR
FROM teewe_bde.TAB_INT_DELNT_PRODXCAD
where ATR_CC in (
(SELECT distinct ATR_CC
FROM teewe_bde.VW_EPM_INT_REPORT_CC_LMA
where LMA_DESCRICAO like '%STRAP WIDTH 50 TYPE 2%')
)
and ATR_ELABORADOR = 'Alexsandro Monteiro Oliveira'

