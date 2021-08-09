
CTE00959516
CTE00959500



#PROG_RAI

!pip install xlrd

import pandas as pd
import xlrd

df_rai = pd.read_excel('RAI.xlsx','RAI')
df_produto = pd.read_excel('RAI.xlsx','Produto')
#-------------------------

df_rai = df_rai[['RAI','DISCIPLINA','STATUS','DT_CRIACAO','DESCRICAO','COS','ACAO_DELINEAMENTO','ACAO_FINAL']]
df_rai_x = df_rai[df_rai['STATUS'] == 'Em Delineamento']
df_rai_x = df_rai_x[(df_rai_x['DISCIPLINA'] == 'INTEGRATION EQUIPMENT') | (df_rai_x['DISCIPLINA'] == 'CABLES')].sort_values(by=['DT_CRIACAO'], ascending=False)
df_rai_x = df_rai_x[df_rai_x.RAI.str.contains('SBR2', case = False)]
#-------------------------
#df_rai_x.sort_values(by=['COS'], ascending=True)
COS-SMB-200542	

#df_pxc[df_pxc.ATR_IM.str.contains('FR', case = False)]

x = df_rai_x['COS'].drop_duplicates()

list_cos = []
for a in x:
    b = a.split(' / ')
    list_cos.append(b)
		
cos_list = []
for a in list_cos:
    for b in a:
        cos_list.append(b)
		
df = []
for i in cos_list:
    x = df_rai_x[df_rai_x.COS.str.contains(i, case = False)]
    for a in x.index:
        A = x['RAI'].loc[a]
        B = x['DT_CRIACAO'].loc[a]
        C = x['DESCRICAO'].loc[a]
        D = x['COS'].loc[a]
        #print('{} | {} | {} | {}'.format(A, B, C, D))
        df.append([A, B, C, D])
    
#-------------------------
new_df = pd.DataFrame(data=df,columns=['RAI','DATA','DESC.','COS'])
new_df.to_excel('NEW_RAI_' + SBR + '.xlsx')
	
for a in new_df.index:
    str_date = new_df['DATA'].loc[a]
    date = datetime.strptime(str_date, '%d/%m/%Y').date()
    new_df['DATA'].loc[a] = date

new_df = new_df.sort_values(by=['DATA'], ascending=True)
new_df.to_excel('NEW_RAI.xlsx')
new_df
#-------------------------	




#===========================================================================

#df_produto = pd.read_excel('RAI.xlsx','Produto')

df_produto.rename(columns={'Número RAI':'RAI'}, inplace=True)
df_produto = df_produto[['RAI','SBR','Produto','Caderno']]
df_produto.head()
df_produto[df_produto['RAI'] == 'RAI-SBR1-01532-206085']
df_prod = []

for a in df_produto.index:
    A = df_produto['RAI'].loc[a]
    B = df_produto['Produto'].loc[a]
    df_prod.append([A, B])
    
df_prod_list = pd.DataFrame(data=df_prod,columns=['rai','pm'])
df_ = df_prod_list.groupby('rai').count()



df_['CC'] = '-'
df_['PM'] = '-'



for a in df_.index:
    x = df_produto[df_produto['RAI'] == a]
    for b in x.index:
        A = x['RAI'].loc[b]
        B = x['Caderno'].loc[b]
        C = x['Produto'].loc[b]
        df_['CC'].loc[a] = B
        df_['PM'].loc[a] = C
        #print('{}{}{}'.format(A,B,C))




#=======================================
#Trata RAI
import pandas as pd

datas = input('Enter Datas: ')
list_datas = datas.split()

print('\nLISTA DE ITENS ENCONTRADOS:\n')
for a in list_datas:
    if a[:1:] == 'P' or a[:1:] == '(' or a[:3:] == 'CTE' or a[:3:] == 'SMB':
        print(a)
		
		
		
#============
ctes = input('>>: ')
settings = ctes.split()
for a in range(len(settings)):
    settings[a] = "'" + settings[a] + "',"
    
for b in settings:
    print(b)
	
	
#======================================================
#******************************************************


!pip install xlrd
!pip install openpyxl

import pandas as pd
import xlrd
import openpyxl
from datetime import datetime


df_cte_1 = pd.read_excel('exportar_mapa_all.xlsx','SBR1')
df_cte_2 = pd.read_excel('exportar_mapa_all.xlsx','SBR2')
df_cte_3 = pd.read_excel('exportar_mapa_all.xlsx','SBR3')
df_cte_4 = pd.read_excel('exportar_mapa_all.xlsx','SBR4')
df_cte_mapa = pd.read_excel('exportar_mapa_all.xlsx','MAPA')

df_cte_mapa = df_cte_mapa[['IR_CTE','CHAVE','SBR1_CTE','SBR1_CC','SBR2_CTE','SBR2_CC','SBR3_CTE','SBR3_CC','SBR4_CTE','SBR4_CC','LPR']]

df_cte_mapa = df_cte_mapa.fillna('-')


df_mapa = []
for a in df_cte_mapa['IR_CTE']:
    df_mapa.append(a.split(' | '))

new_df = []
for a in df_mapa:
    for b in a:
        new_df.append(b)
		
df_cte_1['RESULT'] = '-'
df_cte_2['RESULT'] = '-'
df_cte_3['RESULT'] = '-'
df_cte_4['RESULT'] = '-'

for a in new_df:
    for i in df_cte_1.index:
        b = df_cte_1['cte'].loc[i]
        if a == b:
            df_cte_1['RESULT'].loc[i] = 'ok'
			
			
for a in new_df:
    for i in df_cte_2.index:
        b = df_cte_2['cte'].loc[i]
        if a == b:
            df_cte_2['RESULT'].loc[i] = 'ok'
			
for a in new_df:
    for i in df_cte_3.index:
        b = df_cte_3['cte'].loc[i]
        if a == b:
            df_cte_3['RESULT'].loc[i] = 'ok'
			
for a in new_df:
    for i in df_cte_4.index:
        b = df_cte_4['cte'].loc[i]
        if a == b:
            df_cte_4['RESULT'].loc[i] = 'ok'



			
			
#=============================================================
			
#Analyze PRODUTO X CADERNO
!pip install xlrd
!pip install openpyxl

import pandas as pd
import xlrd
import openpyxl
from datetime import datetime
		

df = pd.read_excel('TAB_INT_DELNT_PRODXCAD.xlsx')
df = df[['ATR_COS', 'ATR_IM', 'ATR_PR', 'ATR_CC', 'ATR_CC_REV', 'ATR_MON_STATUS',
       'ATR_MON_META', 'ATR_CC_CNX', 'ATR_CC_CNX_REV', 'ATR_CNX_STATUS', 'ATR_CMD','SBR']]


sbr1 = df[(df['ATR_MON_META'] == 'Dotação') & (df['SBR'] == 'SBR1')]
sbr2 = df[(df['ATR_MON_META'] == 'Dotação') & (df['SBR'] == 'SBR2')]
sbr3 = df[(df['ATR_MON_META'] == 'Dotação') & (df['SBR'] == 'SBR3')]
sbr4 = df[(df['ATR_MON_META'] == 'Dotação') & (df['SBR'] == 'SBR4')]

#sbr4[sbr4['ATR_MON_META'] != 'Dotação']


print(len(sbr1))
print(len(sbr2))
print(len(sbr3))
print(len(sbr4))


sbr4['COMPARA_SBR1'] = '-'
sbr4['COMPARA_SBR2'] = '-'
sbr4['COMPARA_SBR3'] = '-'
 
for a in sbr1.index:
    #print(sbr1['ATR_IM'].loc[a])
    for b in sbr4.index:
        if sbr1['ATR_IM'].loc[a] == sbr4['ATR_IM'].loc[b]:
            sbr4['COMPARA_SBR1'].loc[b] = 'OK'
		
for a in sbr2.index:
    #print(sbr1['ATR_IM'].loc[a])
    for b in sbr4.index:
        if sbr2['ATR_IM'].loc[a] == sbr4['ATR_IM'].loc[b]:
            sbr4['COMPARA_SBR2'].loc[b] = 'OK'
			
for a in sbr3.index:
    #print(sbr1['ATR_IM'].loc[a])
    for b in sbr4.index:
        if sbr3['ATR_IM'].loc[a] == sbr4['ATR_IM'].loc[b]:
            sbr4['COMPARA_SBR3'].loc[b] = 'OK'
			

sbr4[sbr4['COMPARA_SBR1'] == '-']
sbr4[sbr4['COMPARA_SBR2'] == '-']
sbr4[sbr4['COMPARA_SBR3'] == '-']

sbr4.to_excel('Result.xlsx')

			

'''
trash, new = [],[]
for a in x:
    for b in y:
        if b != a:
            #print('{}  | {}'.format(a, b))
            new.append(a)
        else:
            trash.append(a)
            break
'''           

	
	

	
	
53A-CTE00758955
53A-CTE00758466
53A-CTE00765556
53A-CTE00978667
53A-CTE00978557
53A-CTE00978775
53A-CTE00978559
53A-CTE00978777
53A-CTE00978487


