function N = GridPath_R(Map, i, j)

[m, n] = size(Map);

if i > m || j > n % if out of Map
    N = 0; return
elseif Map(i,j) == 1  % if there is obstacle
    N = 0; return;
else
    if ((i == m-1)&& (j == n)) || ((i == m) && (j == n-1))
        N = 1;    % if last step of Map
    else
        N = GridPath_R(Map, i+1, j) + GridPath_R(Map, i, j+1);
    end
end

