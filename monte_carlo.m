clc
clear
close all
alpha=0.1;
beta=0.5;
n=1000; %number of samples
num_of_bins=100;
trials=50000; %number of experiments
betaforeachtrial=zeros(trials,1);
alphaforeachtrial=zeros(trials,1);
Expbeta=zeros(trials,1);
Expalpha=zeros(trials,1);
for i=1:trials
    e=0.1*randn(n,1);
    x=randn(n,1);
    x=[randn(n,1) x];
    y=alpha+beta*x+e;
    estimates=diag(inv(x'*x)*x'*y);
    beta_hat=estimates(2);
    alpha_hat=estimates(1);
    betaforeachtrial(i)=beta_hat;
    alphaforeachtrial(i)=alpha_hat;
    Expbeta(i)=mean(betaforeachtrial(1:i));
    Expalpha(i)=mean(alphaforeachtrial(1:i));
end
figure(1),xlabel('Number of trials'); ylabel('Expectation of beta parameter'); plot((1:1:trials),Expbeta);
%Expbeta=mean(betaforeachtrial);
%Expalpha=mean(alphaforeachtrial);
figure(2),hist(betaforeachtrial,num_of_bins);
xlabel('Beta hat');
ylabel('Frequency');

