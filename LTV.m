function [u v]=LTV(I,lambda)

%% Function
% Decompose image I based on LTV model: f=log(I)=v+u
% Reference:
% T. Chen et al. Total Variation Models for Variable Lighting Face Recognition, TPAMI 2006

I=double(I);
M=max(max(I));

if M > 1 
    I(find(I<1))=1;
else
    I(find(I==0))=0.001;
end

f=log(I);
uint = Graph_anisoTV_L1_v2(uint16(10000*f), lambda, 16); 
u = double(uint)/10000;
v = f - u; 

%v(find(v<-1.5))=-1.5;
%v(find(v>1.5))=1.5;

end