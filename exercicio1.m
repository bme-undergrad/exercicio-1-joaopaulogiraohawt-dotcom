function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

 % Declaracao dos vetores que contem os valores do tempo (t) e erro aproximado (erro).
    t = zeros(imax, 1);
    erro = zeros(imax, 1);

    % Definicao da iteracao inicial generica.
    t(1) = x0;

    % Iteracoes subsequentes utilizando o Metodo de Newton-Raphson.
    for ii = 1:imax-1
        % Calculo da próxima aproximacao do valor do tempo [t(ii+1)].
        t(ii+1) = t(ii) - func(t(ii)) / func_d(t(ii));

        % Determinacao e armazenamneto do erro na iteração (em porcentagem).
        if t(ii+1) ~= 0
            erro(ii) = abs((t(ii+1) - t(ii)) / t(ii+1)) * 100;
        end

        % Verificacao do erro para possivelmente terminar o processo antecipadamente.
        if erro(ii) < es
            t = t(ii+1); % Obtém o valor ótimo de t.
            return;
        end
    end

    % Caso o loop nao atinja um erro menor que 1% durante as 20 iteracoes, usa-se o valor máaimo obtido.
    t = t(imax);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
