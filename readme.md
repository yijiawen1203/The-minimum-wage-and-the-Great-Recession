the code here aims to replicate the following paper: **Clemens, J., & Wither, M. (2019). The minimum wage and the Great Recession: Evidence of effects on the employment and income trajectories of low-skilled workers. Journal of Public Economics, 170, 53-67.**

1 data download
==

1. I first download the code from the following website: https://www.nber.org/research/data/survey-income-and-program-participation-sipp

because the data is from 2008.07 to 2012.07, so I need to download SIPP from wave 1 to wave 12.

  After downloading the 2008 sipp data, use the stata to transform the data into csv file. I only get the column that I needed, including
  **ssuid tage  tpyrate1  tfipsst  euectyp5 eawop rmhrswk ehrsall ehrsbs1  ehrsbs2 thearn thtotinc rhpov rfpov rfownkid eeducate**.
  the file path is /Users/yoga/Documents/Projects/10Eco_applied eco_replicate mini wage/SIPP/targeted csv file (for my own reference)
  
  then use python to process the data. I first merge the 12 files into one file. then I calculate the descriptive summary of the data. the notebook is 
  **precessing the sipp data.ipynb**

2. to replicate figure 1, I need to get the minimum wage by state at 2008. I search and get the minimum wage data from: https://www.kaggle.com/datasets/lislejoem/us-minimum-wage-by-state-from-1968-to-2017?resource=download

  the downloaded file is: 1_Minimum Wage Data by state.csv

 2 figure 1
 ==

I can only draw panel A, and I can not draw panel B because I cannot find the corresponding data of minimum wages by month in the SIPP data.
 
 
 3 table 1
 ==
 
 I can not find hourly wage rate in the SIPP file, but I find the Regular hourly pay rate (i.e.,tpyrate1) , so I use the variable tpyrate1 
 to represent the hourly wage rate, as mentioned in the paper.
 
 
 my table is very different from the authors, i think the reason is that i use the different variable from the authors, the column name is not intuitive. for example, variable **thearn**  means Total household earned income , but variable **thtotinc** means  Total household income. I don't understand the difference betweent the two variables very much.
 
meanwhile, some variables is missing, i don't know which is the right variable. 
 
 
 明天的目标是figure 2...,至少画出一张图来。。。。
== 
 
 
 99 for myself reference
 ==
 
 next I use ArcGIS to visualize the panel 1 in figure 1. The output file is figure1_minimum wage bounded map.pdf. The process path is "D:\1_yogafile\3_FSU\2022fallCourse\appliedECO\minimumWage" .

  we can see the replication figure is almost the same.

