function t = exercicio1(func, func_d, x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

  v = zeros(imax, 1);
    erro = zeros(imax, 1);

    % Definicao da iteracao inicial generica.
    v(1) = x0;

    % Iteracoes subsequentes utilizando o Metodo de Newton-Raphson.
    for ii = 1:imax-1
        % Calculo da proxima aproximacao do valor do tempo [t(ii+1)].
        v(ii+1) = v(ii) - func(v(ii)) / func_d(v(ii));

        % Determinacao e armazenamneto do erro na iteracao (em porcentagem).
        if v(ii+1) ~= 0
            erro(ii) = abs((v(ii+1) - v(ii)) / v(ii+1)) * 100;
        end

        % Verificacao do erro para possivelmente terminar o processo antecipadamente.
        if erro(ii) < es
            v = v(ii+1); % Obtém o valor ótimo de v.
            return;
        end
    end

    % Caso o loop nao atinja um erro menor que 1% durante as 20 iteracoes, usa-se o valor maximo obtido.
    v = v(imax);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
