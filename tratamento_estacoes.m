clear all
%
%  lat e lon das estacoes
%
[planilha,header] =xlsread('lista de estacoes.xlsx','WORK');
n1=xlsread('lista de estacoes.xlsx','WORK','k2:l20064');

%
%  contornos dos shape files
%
% contorno={'fareia_jordao_saltoosorio.bln','jordao.bln','foz_do_areia.bln'};
% rotulo={'FAREIAJORDAOOSORIO','JORDAO','FOZAREIA'};
%contorno={'emborcacao.bln','emborcacao-saosimao.bln','furnaselimoeiro-avermelha.bln'};
%rotulo={'EMBORCACAO','EMBSAOSIMAO','FURLIMAVERME'};
%contorno={'contorno_tocantins.bln','serradamesa.bln','serradamesa-lajeado.bln'};
rotulo={
    'subbacia20'
    'subbacia21'
    'subbacia22'
    'subbacia23'
    'subbacia24'
    'subbacia25'
    'subbacia26'
    'subbacia27'
    'subbacia28'
    'subbacia29'
    };
    
    
contorno={
    'subbacia20.bln'
    'subbacia21.bln'
    'subbacia22.bln'
    'subbacia23.bln'
    'subbacia24.bln'
    'subbacia25.bln'
    'subbacia26.bln'
    'subbacia27.bln'
    'subbacia28.bln'
    'subbacia29.bln'
    };


for i=1:length(contorno)
    m1=dlmread(contorno{i},',',1);
    %m1=dlmread('jordao_jordao_fareia_saltoosorio.bln',',',1);
    in1=verifica_se_ta_dentro(n1,m1);
    xlswrite('estacoes a trabalhar novo tocantins.xlsx',header,rotulo{i},'a1');
    xlswrite('estacoes a trabalhar novo tocantins.xlsx',planilha,rotulo{i},'a2');
    xlswrite('estacoes a trabalhar novo tocantins.xlsx',in1,rotulo{i},'n2');
end

% rotulo={'chicao','CHICAO_PARTE2'};
% m1=dlmread('saofrancisco_parte2.bln',',',1);
% in1=verifica_se_ta_dentro(n1,m1);
% xlswrite('estacoes a trabalhar chicao.xlsx',header,rotulo{2},'a1');
% xlswrite('estacoes a trabalhar chicao.xlsx',planilha,rotulo{2},'a2');
% xlswrite('estacoes a trabalhar chicao.xlsx',in1,rotulo{2},'p2');
% xlswrite('estacoes a trabalhar chicao.xlsx',rotulo,rotulo{2},'p1');
% 
% rotulo={'chicao','CHICAO_PARTE3'};
% m1=dlmread('saofrancisco_parte3.bln',',',1);
% in1=verifica_se_ta_dentro(n1,m1);
% xlswrite('estacoes a trabalhar chicao.xlsx',header,rotulo{2},'a1');
% xlswrite('estacoes a trabalhar chicao.xlsx',planilha,rotulo{2},'a2');
% xlswrite('estacoes a trabalhar chicao.xlsx',in1,rotulo{2},'p2');
% xlswrite('estacoes a trabalhar chicao.xlsx',rotulo,rotulo{2},'p1');











