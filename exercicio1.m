function t = exercicio1(func,func_d, x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax,1)
t(1) = x0

for ii = 1:length(t)-1
  ii
  if ii ~= 1
    erro(ii) = abs((t(ii)-t(ii-1))/t(ii))
    if erro(ii) < es
      break
    endif
  endif
  t(ii+1) = t(ii) - func(t(ii))/func_d(t(ii))
endfor

disp('O valor é: ')
t = t(ii)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
