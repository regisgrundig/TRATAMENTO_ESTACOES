# TRATAMENTO_ESTACOES
SELECIONA ESTAÇOES METEOROLOGICAS EM UM CONTORNO DE BACIA HIDROGRAFIA

## USO

precisa de um contorno de bacia e o programa buscará as estações listadas em "lista de estacoes.xlsx" que estão dentro 
desse contorno. 

tratamento_estacoes.m ==> executar no MATLAB (deve funcionar no octave também) 

## PRINCIPAL

[planilha,header] =xlsread('lista de estacoes.xlsx','WORK'); esse arquivo é a lista de estações fornecido pelo Hidroweb. 
versão atual é de maio de 2015. 

n1=xlsread('lista de estacoes.xlsx','WORK','k2:l20064');  no arquivo em questão, os dados de precipotação estão entre a linha
                                                          2 e linha 1200064. sempre dar uma olhada e alterra quando atualizar
                                                          planilha via HIDROWEB
  
  nome a sair no rotulo da planilha excel 
  
  rotulo={
   'tiete_1'
    };
  
  
  arquivo .bln (goldensofware SURFER boundary file) da bacia em questão que se deseja selecionar as estações.
    
contorno={
    'tiete_promissao-rioparana.bln'
    };                                                      
                                                        

nome da planilha:

    xlswrite('estacoes a trabalhar tiete.xlsx',header,rotulo{i},'a1');
    xlswrite('estacoes a trabalhar tiete.xlsx',planilha,rotulo{i},'a2');
    xlswrite('estacoes a trabalhar tiete.xlsx',in1,rotulo{i},'n2');
    
    
    
