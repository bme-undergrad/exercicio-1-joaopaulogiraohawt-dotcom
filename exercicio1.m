function t = exercicio1(func,func_d, x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

    t_raizes = zeros(imax, 1);
    erro = zeros(imax, 1);

    % Definicao da iteracao inicial generica.
    t_raizes(1) = x0;

    % Iteracoes subsequentes utilizando o Metodo de Newton-Raphson.
    for ii = 1: length (t_raizes)-1
        % Calculo da proxima aproximacao do valor do tempo [t(ii+1)].
        t_raizes(ii+1) = t_raizesii) - func(t_raizes(ii)) / func_d(t_raizes(ii));

        % Determinacao e armazenamneto do erro na iteracao (em porcentagem).
        if t_raizes(ii+1) ~= 0
            erro(ii) = abs((t_raizes(ii+1) - t_raizes(ii)) / t_raizes(ii+1)) * 100;
        end

        % Verificacao do erro para possivelmente terminar o processo antecipadamente.
        if erro(ii) < es
            t_raizes = t_raizes(ii+1); % Obtem o valor otimo de v.
            return;
        end
    end

    % Caso o loop nao atinja um erro menor que 1% durante as 20 iteracoes, usa-se o valor maximo obtido.
    t = t_raizes(end);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
