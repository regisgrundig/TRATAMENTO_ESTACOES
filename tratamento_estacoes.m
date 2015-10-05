clear all
%
%  lat e lon das estacoes do arquivo 
%
[planilha,header] =xlsread('lista de estacoes.xlsx','WORK');
n1=xlsread('lista de estacoes.xlsx','WORK','k2:l20064');

%
%  contornos dos shape files
%
rotulo={
   'tiete_1'
   'tiete_2'
   'tiete_3'
    };
    
    
contorno={
    'tiete_promissao-rioparana.bln'
    'tiete_bbonita-promissao.bln'
    'tiete_barrabonita.bln'
    };


for i=1:length(contorno)
    m1=dlmread(contorno{i},',',1);
    %m1=dlmread('jordao_jordao_fareia_saltoosorio.bln',',',1);
    in1=verifica_se_ta_dentro(n1,m1);
    xlswrite('estacoes a trabalhar tiete.xlsx',header,rotulo{i},'a1');
    xlswrite('estacoes a trabalhar tiete.xlsx',planilha,rotulo{i},'a2');
    xlswrite('estacoes a trabalhar tiete.xlsx',in1,rotulo{i},'n2');
end










