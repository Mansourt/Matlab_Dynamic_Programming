function N = GridPath_DP(Map, i, j)

[m, n] = size(Map);
Memo = zeros(m,n)*nan;

N = GridPath(Map, i, j);

    function nn = GridPath(Map, i, j)
        if i > m || j > n % if out of Map
            nn = 0; return;
        end
        if ~isnan(Memo(i,j)) % if in the Memo
            nn = Memo(i,j); return;
        elseif Map(i,j) == 1  % if there is obstacle
            nn = 0; Memo(i,j) = nn; return;
        else % if last step of Map
            if ((i == m-1)&& (j == n)) || ((i == m) && (j == n-1))
                nn = 1;  Memo(i,j) = nn; return;
            else
                nn = GridPath(Map, i+1, j) + GridPath(Map, i, j+1);
                Memo(i,j) = nn; return;
            end
        end
        
    end
end