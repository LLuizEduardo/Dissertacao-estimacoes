%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tratamento dos dados
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ZNB -> objeto "cell" com o número de séries temporais por sub-bloco

clear all;
clc

ZNB = {}

%economic_activity
ZNB{1,1}(1,1) = 43
ZNB{1,1}(1,2) = 23
ZNB{1,1}(1,3) = 55
ZNB{1,1}(1,4) = 13

%financial_market
ZNB{1,2}(1,1) = 2
ZNB{1,2}(1,2) = 3
ZNB{1,2}(1,3) = 4

ZNB{1,2}(1,4) = 26

%monetary_policy
ZNB{1,3}(1,1) = 35
ZNB{1,3}(1,2) = 12
ZNB{1,3}(1,3) = 21
ZNB{1,3}(1,4) = 6

%trade
ZNB{1,4}(1,1) = 13
ZNB{1,4}(1,2) = 23
ZNB{1,4}(1,3) = 15
ZNB{1,4}(1,4) = 7

%manufacturing
ZNB{1,5}(1,1) = 23
ZNB{1,5}(1,2) = 14
ZNB{1,5}(1,3) = 38
ZNB{1,5}(1,4) = 12

%work
ZNB{1,6}(1,1) = 5
ZNB{1,6}(1,2) = 3
ZNB{1,6}(1,3) = 9
ZNB{1,6}(1,4) = 1





%%Construindo a base de dados
bigZ_ns = {}
 
bigZ_ns{1,1}{1,1}= xlsread("baseMatlab.xlsx", 'economic_activity1')
bigZ_ns{1,1}{1,2}= xlsread("baseMatlab.xlsx", 'economic_activity2')
bigZ_ns{1,1}{1,3}= xlsread("baseMatlab.xlsx", 'economic_activity3')
bigZ_ns{1,1}{1,4}= xlsread("baseMatlab.xlsx", 'economic_activity4')

bigZ_ns{1,2}{1,1}= xlsread("baseMatlab.xlsx", 'financial_market1')
bigZ_ns{1,2}{1,2}= xlsread("baseMatlab.xlsx", 'financial_market2')
bigZ_ns{1,2}{1,3}= xlsread("baseMatlab.xlsx", 'financial_market3')
bigZ_ns{1,2}{1,4}= xlsread("baseMatlab.xlsx", 'commodities')

bigZ_ns{1,3}{1,1}= xlsread("baseMatlab.xlsx", 'monetary_policy1')
bigZ_ns{1,3}{1,2}= xlsread("baseMatlab.xlsx", 'monetary_policy2')
bigZ_ns{1,3}{1,3}= xlsread("baseMatlab.xlsx", 'monetary_policy3')
bigZ_ns{1,3}{1,4}= xlsread("baseMatlab.xlsx", 'monetary_policy4')

bigZ_ns{1,4}{1,1}= xlsread("baseMatlab.xlsx", 'trade1')
bigZ_ns{1,4}{1,2}= xlsread("baseMatlab.xlsx", 'trade2')
bigZ_ns{1,4}{1,3}= xlsread("baseMatlab.xlsx", 'trade3')
bigZ_ns{1,4}{1,4}= xlsread("baseMatlab.xlsx", 'trade4')

bigZ_ns{1,5}{1,1}= xlsread("baseMatlab.xlsx", 'manufacturing1')
bigZ_ns{1,5}{1,2}= xlsread("baseMatlab.xlsx", 'manufacturing2')
bigZ_ns{1,5}{1,3}= xlsread("baseMatlab.xlsx", 'manufacturing3')
bigZ_ns{1,5}{1,4}= xlsread("baseMatlab.xlsx", 'manufacturing4')

bigZ_ns{1,6}{1,1}= xlsread("baseMatlab.xlsx", 'work1')
bigZ_ns{1,6}{1,2}= xlsread("baseMatlab.xlsx", 'work2')
bigZ_ns{1,6}{1,3}= xlsread("baseMatlab.xlsx", 'work3')
bigZ_ns{1,6}{1,4}= xlsread("baseMatlab.xlsx", 'work4')
