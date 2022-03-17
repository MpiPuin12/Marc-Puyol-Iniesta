# Building an Instagram recommender 
 
## Background
Social Media has become the main advertising tool for companies. However, there are more than two billion accounts on Instagram and the costs of research and selection for finding the best account to promote a product can be very high. Therefore, a tool that would allow companies to match the characteristics of their products  with the accounts that better represent these characteristics would greatly reduce these costs.

## Data Sources

Webscrapping of the following links:
  
  https://hypeauditor.com/
  
  https://www.instagram.com/
  
  https://thesocialflame.com/
  
  
 ## Tools used for the product

Python (Pandas, Selenium, BeatifulSoup)

Tableau

# Obtaining the data 

After Webscrapping several websites, I manage to obtain data of about 1000 Instagram accounts (The 1000 more popular in Spain and Italy). The data I considered more relevant were the Country(where the promotion wants to be made), whether the account was from a person or a brand, it's authentic engament, the category(Fashion, Art, Sports...) and subcategories, the last brands they have worked with (they've tagged in their last pics), if they have a	Tik Tok	and Youtube	account... Furthermore, for the fashion influencers, I made an estimation (by two databases shared by fashion companies) of the expected price a company may have to pay for a post in Instagram. For these category in particular,extra accounts have been included in the sample so that the recommendation is more precise.

# Designing the recommendor [Link to dashboard] ("https://public.tableau.com/app/profile/marc.puyol.iniesta/viz/FinalProjectInstagram/Reccomender#1")

After designing the dataset, I used tableau to build a dashboard as dynamic as possible where the company could play with the filters an choose the characteristics of the influencer that best suit their product and, therefore, their audience. This is easily seen with an example. Imagine an italian fashion company that is thinking about launching it's new collection in Spain. They would then select Spain as Country, Fashion as Category,they may be interested in influencers that have previously worked with luxury brands such as YSL ... The recommendor would then return all the influencers that meet that certain criterias and ranked them by it's authentic engagement. The authentic engagement is the average of comments and likes the account receives per post.

![image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Final%20Project/Captura%20de%20pantalla%202022-03-17%20a%20las%2020.48.40.png)

# Thinking about the next versions

Extending the data to all countries and accounts. For next versions, with enough computational power, the analysis could be extended to many more countries and accounts. 

Adding new Filters. There can be as many filters as anyone can think and it's viable to obtain data about. 


Relate the price of the influencer with the characteristics of the business. Usually, big companies have a better shot to obtain influencers at a reduced price (since both benefit from the interaction). Therefore, In future versions It would be a really nice feature being able to adapt the price each influncer may charge to certain input we might ask to the business itself( Number of followers in Instagram, prestige of the company...)

