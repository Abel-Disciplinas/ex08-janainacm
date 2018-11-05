using Plots
gr(size=(600,400))
default(fmt = :png)

function main()
    # Ler dados.csv
    x=A[:,1]
    y=A[:,2]

    kfold(x, y)

    p = 8                                 ####### Sua escolha
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
    Sr_pred=norm(y-y_pred)^2
    R2_pred=1-Sr_pred/ST

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
    I = randperm(m)                                 # Embaralhe a ordem dos dados

    # Seu código aqui

    E_teste, E_treino=zeros(num_folds,max_p), zeros(num_folds,max_p)
    # x_tr, y_tr, x_te, y_te = x[1:k], y[1:k], x[k+1:end], y[k+1:end] treino e teste divididos oa meio

   β=regressao_polinomial(x, y, p)
   y_med = mean(y)
   y_pred = [β[1] .+ sum(β[j + 1] * x[i].^j for j = 1:p) for i = 1:m]

   for i=1:p
   soma=(y[i] - ypred[i])^2+soma)
   E = 1/(2*m)*soma,                               # N o número de elementos no cjto

    png("kfold")
end

main()
