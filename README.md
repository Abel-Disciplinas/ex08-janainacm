# ex08-janainacm
ex08-janainacm created by GitHub Classroom



function kfold(x, y; num_folds = 5, max_p = 15)
    m = length(x)
    Embaralhe a ordem dos dados
    #I=randperm(m)
    Calcule o tamanho do fold
        #c=div(m,num_folds)
    Crie matrizes E_treino e E_teste zeradas com dimensão correta
        for j=1:num_folds
            for i=1:c
                
    Para cada fold
        cjto_teste = fold
        cjto_treino = setdiff(1:m, fold)
        Para p = 1:max_p
            Calcule β para regressao polinomial usando os dados de treino e grau p
            Calcule o vetor ypred de previsão dos dados
            Calcule o erro no treino e no teste, relativo ao número de elementos em cada
            conjunto
                    E = 1/(2N) ∑ (yᵢ - ypredᵢ)²,      N o número de elementos no cjto
            Preencha as matrizes de erro
        end
    end

    Usando as matrizes de erro, faça os gráficos
end
