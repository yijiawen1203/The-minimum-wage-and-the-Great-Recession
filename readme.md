the code here aims to replicate the following paper: **Clemens, J., & Wither, M. (2019). The minimum wage and the Great Recession: Evidence of effects on the employment and income trajectories of low-skilled workers. Journal of Public Economics, 170, 53-67.**

1 data download
==

1. I first download the code from the following website: https://www.nber.org/research/data/survey-income-and-program-participation-sipp

  After downloading the 2008 sipp data, use the stata to transform the data into csv file. 

  then use python to process the data.

2. to replicate figure 1, I need to get the minimum wage by state at 2008. I search and get the minimum wage data from: https://www.kaggle.com/datasets/lislejoem/us-minimum-wage-by-state-from-1968-to-2017?resource=download

  the downloaded file is: 1_Minimum Wage Data by state.csv

 2 figure 1
 ==

I can only draw panel A, and I can not draw panel B because I cannot find the corresponding data of minimum wages by month in the SIPP data.
 
 
 3 table 1
 ==
 
 I can not find hourly wage rate in the SIPP file, but I find the Regular hourly pay rate (i.e.,tpyrate1) , so I use the variable tpyrate1 
 to represent the hourly wage rate, as mentioned in the paper.
 
 
 
 
 
 
 
 
 99 for myself reference
 ==
 
 next I use ArcGIS to visualize the panel 1 in figure 1. The output file is figure1_minimum wage bounded map.pdf. The process path is "D:\1_yogafile\3_FSU\2022fallCourse\appliedECO\minimumWage" .

  we can see the replication figure is almost the same.

