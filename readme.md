the project aims to replicate the following paper: **Clemens, J., & Wither, M. (2019). The minimum wage and the Great Recession: Evidence of effects on the employment and income trajectories of low-skilled workers. Journal of Public Economics, 170, 53-67.**

1 data download
==

1. I first download the code from the following website: https://www.nber.org/research/data/survey-income-and-program-participation-sipp

Because the data is from 2008.07 to 2012.07, I need to download SIPP from wave 1 to wave 12. 

After downloading the 2008 sipp data, I use the stata to transform the data into csv file. The code is as followws: **sippl08puw2 yijia.do**, and **export_Csv_do_file.do**


I only get the column that I needed, including the following variable.
**ssuid tage  tpyrate1  tfipsst  euectyp5 eawop rmhrswk ehrsall ehrsbs1  ehrsbs2 thearn thtotinc rhpov rfpov rfownkid eeducate**.
the dictionary to explain the above variable is the **infile dictionary.docx**.
  
Next, I use python to process the data. I first merge the 12 files into one file. then I calculate the descriptive summary of the data. the notebook is 
  **precessing the sipp data.ipynb**

2. to replicate figure 1, I need to get the minimum wage by state at 2008. I search and get the minimum wage data from: https://www.kaggle.com/datasets/lislejoem/us-minimum-wage-by-state-from-1968-to-2017?resource=download

  the downloaded file is: 1_Minimum Wage Data by state.csv

 2 Figure 1
 ==

**the original figure 1** is as follows:
![Screen Shot 2022-11-27 at 10 57 53 AM](https://user-images.githubusercontent.com/58616362/204144704-06ad996e-064a-48a2-a0f1-e9f5f025195c.png)

**the figure I draw** is as follows:
![Screen Shot 2022-11-27 at 11 00 13 AM](https://user-images.githubusercontent.com/58616362/204144817-94d64188-4618-490c-86a6-89ee49b46f08.png)


I can only draw panel A, and I can not draw panel B because I cannot find the corresponding data of minimum wages **by month** in the SIPP data. I can only find the data **by year**. Moreover, I cannot find the data in SIPP, and I can only find it from other source (i.e.,https://www.kaggle.com/datasets/lislejoem/us-minimum-wage-by-state-from-1968-to-2017?resource=download). 
 
 3 Table 1
 ==
 
 **the original Table 1** is as follows:
 ![Screen Shot 2022-11-27 at 11 04 15 AM](https://user-images.githubusercontent.com/58616362/204144985-7a499e5c-fab0-4f0c-a664-47cfc86f98f7.png)
 
 **the Table 1 I draw** is as follows:
 
 ![Screen Shot 2022-11-27 at 11 35 20 AM](https://user-images.githubusercontent.com/58616362/204148101-1486b9a4-441b-409d-9cf3-1e3158c12c7f.png)
 
My table is very different from the authors, I think the reason is that i use the different variable from the author.
 
 There are **1022**variables in the SIPP data set, and the column name is not intuitive. For example, variable **thearn**  means Total household earned income , but variable **thtotinc** means Total household income. I don't understand the difference betweent the two variables very much. And in table 1, the author only use the name of **income**. It is challenging for me to figure out which variable in the SIPP is the variable used by the author.
 
Meanwhile, some variables are missing, and I don't know which is the right variable. For example, the table 1 has a variable named **no earnings**, but I cannot find such variable in the dataset, and I cannot calculate it by myself.

Morover, I cannot seperate 6 columns based on the data. I can not find the average baseline wage informaiton, and I cannot find the wage variable in the SIPP dataset. Alternatively, I use the **Regular hourly pay rate (i.e., tpyrate1 in the dataset) ** to represent the wage. I classify the data into three groups: 1) tpyrate1<$7.5, 2) $7.5<tpyrate1<$8.49, 3) $8.50<tpyrate1<$9.99. However, the first variable is  $5.15<wage<$7.25. In my classification, all $5.15<wage<$7.25 belongs to the first group (i.e.,tpyrate1<$7.5). So I can only get the summary statistics for column 1 and column 2 in the table 1.

Not surprisingly, my observations and number of individuals are larger than those in the paper. It is because I inlcude all the obversations that have wage between $5.15 and $7.25 in the first two columns. However, it is confusing to me that my observations are very different from the sum of all the six columns in the table 1
 
Figure 2 panel A
== 

**the original Figure 2 Panel A** is as follows:

<img width="532" alt="Screen Shot 2022-11-27 at 11 48 52 AM" src="https://user-images.githubusercontent.com/58616362/204148836-249e53d2-c2c4-4466-9a60-6b4e9e1a649a.png">
 
 the figure 2 Panel A I draw is as follows:
 
 ![Screen Shot 2022-11-27 at 11 50 54 AM](https://user-images.githubusercontent.com/58616362/204148929-f5bf92dd-8444-437c-a3f7-f9b09165cc14.png)

My figure is very different from that in the paper. The reason may be as follows: the y-axis in my figure is the wage, but the author uses affected wage. I fail to get the variable of affected wage and this makes the difference.


Figure 4 panel C
== 

**the original Figure 4 panel C** is as follows:

<img width="532" alt="Screen Shot 2022-11-27 at 11 55 42 AM" src="https://user-images.githubusercontent.com/58616362/204149179-132d8a0b-9d13-4002-b274-70fc0ec005e7.png">

the Figure 4 panel C I draw is as follows:

![Screen Shot 2022-11-27 at 11 56 53 AM](https://user-images.githubusercontent.com/58616362/204149221-5473489e-65f3-4416-b717-332290c583ec.png)

The figure is different. I use Total household earned income to draw the figure, and I cannot find a variable named family income. I suppose we use different variables.

 Table 2 Columns 1
 ==

  **the original Table 2 Columns 1** is as follows:
  
  <img width="439" alt="Screen Shot 2022-11-27 at 12 01 20 PM" src="https://user-images.githubusercontent.com/58616362/204149471-36ae368a-d974-485d-90c0-7123034e9bf1.png">
  
  
  **the Table 2 Columns 1 I draw** is as follows:
  
  ![Screen Shot 2022-11-27 at 12 08 46 PM](https://user-images.githubusercontent.com/58616362/204149745-b63c254a-0f4c-4ace-80e3-f955b6409c9b.png)

I run the following equation, but I fail to use individual fixed effect in the regression, there is an error and I fail to fix it. the error shows that 
 **code 103 too many variables specified**. It indicates that too many factor variables are not allowed. the log file for running the regression is **replication_Ayla_1125.log**. So I can only use time fixed and state fixed effect, but I cannot use individual fixed effect, which requires about 6000 dummy variables. 

 
 **99 for myself reference**

 
I use ArcGIS to visualize the panel 1 in figure 1. The output file is figure1_minimum wage bounded map.pdf. The process path is "D:\1_yogafile\3_FSU\2022fallCourse\appliedECO\minimumWage" .


