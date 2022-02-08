# Job Position Analysis


## Table of content

- [Key Points](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/edit/main/Customer%20analysis/Readme.md#Key-points)
- [Data Processing](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/edit/main/Customer%20analysis/Readme.md#1.Data-Processing)
- [Data analysis](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/edit/main/Customer%20analysis/Readme.md#2.Data-analysis)
- [Conclusion](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/edit/main/Customer%20analysis/Readme.md#Conclusion)
- [Bibliography](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/edit/main/Customer%20analysis/Readme.md#Bubliography)


## Key Points 

**Question: What are the most demandes skills for a Data Analyst?**

**Findings: About a 61% of data analyst jobs require some kind of Excel experience. Most of these jobs require at least a Degree(80%) and about half of them require also a Master. Other skills such as Machine learning are very demanded among data scientists and engineerenings but not so much for analyst(same for AI).** 


## 1.Data Processing

The first step implied doing some basic cleaning and deleting the location columns since they didn't contribute to the analysis. Once it was completed, we standardized the different position names in 4 categories: [Data Analyst, Data Scientist, Data Engineer and other]. After that, we cleaned the description column so that we only considered the more relevant words for each of the positions. We did that by tokenizing the words and removing stop words. Finally, we iterated through all the rows in search of keywords from 4 different domains: tools, skills, education level and majors. Keywords can be found in the plots below. We accounted for just one appearance of the word per job description, so no keyword was overrepresented.

## 2.Data Analysis

### Tools and Skills: ![Classification Case Study](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Captura%20de%20pantalla%202022-02-08%20a%20las%2018.39.25.png)

**Tools**: Excel is still very popular, specially for the data analyst position, possibly because it is not as technical as the others. As for Tableau, it is most demanded for Data Analysts (the percentage would probably be higher if we take into consideration some similar expressions such as visualization tools, Power BI, etc.). Also, from the graph we can infer that our position assignation was quite effective, since the percentages for the 'other' category are significantly lower except for Excel, the least specialized tool.

**Skills**: Machine learning is very demanded for data scientist and data engineers, but not so much for analyst, the same as for AI.

### Education level and Majors: ![Classification Case Study](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Captura%20de%20pantalla%202022-02-08%20a%20las%2018.43.10.png)

**Education level**: Most Data Analyst jobs require either a Bachelor's or Master's. For Data Scientist, on the other hand, we find higher education requirements: less percentage of job positions ask for Bachelor's, but a significant amount of them ask for a PhD, so we presume recruiters don't even list a Bachelor's in the job offer.

**Majors**: According to our results, business is the most common or demanded background. This can be biased by the popularity of the word itself. Very specialized majors (in the sense that they differ significantly from the data path), such as geography or psychology, have marginal niche demand.


## 3.Conclusion

Job positions overlap frequently, and roles in the data industry are not well-defined. Therefore, don't let job positions names differing from data analyst stop you from applying. You're okay with a bachelor's degree to access most of the jobs in terms of education level requirements.
The most demanded tools in the industry for the data analyst role are excel and SQL.

## 4. Bibliography
[Link to the full paper](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Customer%20analysis/Job%20Position%20Analysis.pdf)

[Other useful Resources](https://www.kaggle.com/sl6149/data-scientist-job-market-in-the-us/code)
