function MapView(Map)

Mapv = Map; 
Mapv(1,1) = 2; Mapv(end, end) = 2;
imagesc(Mapv); 

[m, n] = size(Map);

hold on;
for ii = 1:n
    plot([0.5+ii, 0.5+ii],[0.5, m+0.5],'w')
end

for jj = 1:m
     plot([0.5, n+0.5],[0.5+jj, 0.5+jj],'w')
end

axis equal;
axis off;

h = text(-1,-0.1, 'Start Point'); set(h,'fontsize',12,'fontweight','bold');
h = text(n,m+1, 'End Point'); set(h,'fontsize',12,'fontweight','bold');
