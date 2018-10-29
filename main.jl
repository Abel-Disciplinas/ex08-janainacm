using Plots
gr(size=(600,400))
default(fmt = :png)

function main()
    # Ler dados.csv
    x=A[:,1]
    y=A[:,2] 

    kfold(x, y)

    p = 1 ####### Sua escolha
    xlin = linspace(extrema(x)..., 100)
    β = regressao_polinomial(x, y, p)
    ylin = β[1] * ones(100)
    for j = 1:p
        ylin .+= β[j+1] * xlin.^j
    end
    scatter(x, y, ms=3, c=:blue)
    plot!(xlin, ylin, c=:red, lw=2)
    png("ajuste")

    # Calcule a medida R²=1-Sr/Sq
    m = length(y)
    for i=1:m
        soma+=y[i]
    end
    ymed=soma/m
    for i=1:m
         for j=1:m
            M[i,j]=dot(y[j],yi]
            C[i,j]=dot(y[j],y[i]
         end
    end
    \betha=M\C
    
    for i=1:m
           ypred +=\betha[i]*y[i]
    end
        
    R2=1-norm(ypred-y)^2/norm(ymed-y)^2
end

function regressao_polinomial(x, y, p)
    m = length(x)
    A = [ones(m) [x[i]^j for i = 1:m, j = 1:p]]
    β = (A' * A) \ (A' * y)
    return β
end

function kfold(x, y; num_folds = 5, max_p=15)
    m = length(x)
    k = div(m, num_folds)                          # Calcule o tamanho do fold
    I = randperm(m)                                # Embaralhe a ordem dos dados 

    # Seu código aqui
   return regressao_polinomial(x, y, c)
   ypred[i]=
    
   for i=1:c
   soma=(y[i] - ypred[i])^2+soma
   E = 1/(2*m)*soma,                               # N o número de elementos no cjto

    png("kfold")
end

main()
