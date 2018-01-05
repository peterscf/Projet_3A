

rdm =floor(rand(1000000,1).*1000);
rdm=dec2hex(rdm,3);
rdm1=rdm(:,1);
rdm2=rdm(:,2);
rdm3=rdm(:,3);
rdmfinal = [rdm1 rdm2 rdm3];
dlmwrite('rdm.txt', rdmfinal);