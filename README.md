# Public Transport Journeys Project

## Project Background:
As a Data Analyst specialising in transport analytics, I analysed transport journey data in London from 2010 to 2024. The dataset includes details on the number of journeys made for each mode of transport (bus, underground, DLR, tram, overground, London Cable Car, and TfL Rail), as well as the financial year, reporting period, and monthly data. The objective of this analysis was to uncover trends in transport usage, identify peak and low periods, and provide actionable recommendations for improving transport infrastructure, resource allocation, and public transport services.

## Executive Summary:
This analysis provides a comprehensive overview of transport trends in London, focusing on seasonal fluctuations, yearly growth patterns, transport mode breakdowns, and periods of high and low demand. Key findings include:
   - Event-Driven Trends: Bus journeys consistently account for the highest number of journeys, while underground journeys show steady demand.
   - Declining Trends: Overall bus and underground journeys have declined in recent years, particularly since 2019, likely due to the pandemic.
  - Seasonal Demand Fluctuations: September and July consistently see the highest transport usage, while October shows a notable dip.
  - Mode Contribution: Buses dominate with 52.49% of the total journeys in 2023/24, followed by the Underground with 33.15%. 

## Insights Deep-Dive:
### Total and Average Journeys by Financial Year:
  - The highest number of bus journeys occurred in 2015/16 (203.4 million), while the lowest was in 2021/22 (95.9 million), showing a downward trend post-2019, likely due to the impact of the pandemic.
  - Underground journeys peaked in 2019/20 (121.3 million) and decreased in 2022/23 (79.2 million).
  - Other modes like DLR, Tram, and Overground showed stable growth, with some increase in recent years (2021/22 and 2022/23).

### Period with Most Journeys for Each Mode:
  - Bus Journeys: Highest in 2013/14 (207.5 million).
  - Underground Journeys: Highest in 2018/19 (118.2 million).
  - DLR Journeys: Highest in 2019/20 (10.6 million).
  - Tram Journeys: Highest in 2013/14 (2.8 million).
  - London Cable Car: Highest in 2015/16 (0.53 million).
  - TfL Rail Journeys: Highest in 2019/20 (9.8 million).

### Percentage Share of Each Mode of Transport for 2023/24:
  - Bus Journeys: 52.49%
  - Underground Journeys: 33.15%
  - TfL Rail: 5.90%
  - Overground Journeys: 5.09%
  - DLR Journeys: 2.78%
  - Tram Journeys: 0.56%
  - London Cable Car Journeys: 0.04%

### Monthly Trend of Total Journeys:
  - Highest Month: Period 9 (September) with 4,142.4 million journeys.
  - Lowest Month: Period 10 (October) with 3,208.4 million journeys.
  - Seasonal patterns indicate higher journeys at the start of the school year (September) and fewer journeys in colder months (October).

###  Yearly Trends for Bus Journeys:
  - Highest Year: 2015/16 with 203.4 million journeys.
  - Lowest Year: 2021/22 with 95.9 million journeys.
  - A general decline in bus journeys post-2019, likely due to reduced service during the pandemic.

### Peak and Low Periods for Total Journeys:
  - Peak Period: Period 9 (September) with 4,142.4 million total journeys.
  - Low Period: Period 10 (October) with 3,208.4 million total journeys.

### Month-over-Month Growth Rate:
  - Highest Growth: Period 7 (July) with an 11.24% growth.
  - Sharpest Decline: Period 10 (October) with a -22.55% drop.

### Transport Mode Breakdown by Percentage for Financial Year 2023/24:
  - Bus Journeys: 52.49%
  - Underground Journeys: 33.15%
  - TfL Rail and Overground: 5.90% and 5.09%
  - Other Modes (DLR, Tram, Cable Car): 8.43% combined.

## Recommendations:
  - Further Expansion of Bus and Underground Services: Given their dominance, continue expanding and improving these services to support the growing population.
  - Optimise Services for Peak and Low Periods: Adjust services to meet demand during peak months (especially September and July) and low periods (October).
  - Growth in Outer Zones: Invest in TfL Rail and Overground services to improve access in outer London areas.
  - Explore Potential Growth for Niche Services: Evaluate opportunities for increasing usage of Trams and the London Cable Car, especially for tourism or targeted commuter routes.
  - Increase Seasonal Adjustments: Tailor the transport schedules and resources based on seasonal demand, with additional services during high-demand periods.

## Key Questions for Stakeholders:
1. How can public transport services be adjusted to better meet the peaks and valleys of transport demand, particularly in seasonal or event-driven periods?
2. What specific investments should be made in outer London to ensure transport services are balanced across all boroughs?
3. How can we further encourage the use of niche transport modes like trams and the London Cable Car, and what infrastructure is required to support this growth?

## Assumptions and Caveats:
  - Data Source: The analysis relies on transport data from Transport for London, which may not capture all transport journeys, particularly minor or informal modes.
  - Monthly Data Gaps: Some periods may show fluctuations due to incomplete data during specific reporting periods, potentially impacting the accuracy of some of the findings.
  - External Factors: External factors like weather, strikes, and public events may significantly impact travel patterns but are not accounted for in the dataset.

## Resources:
- See [the original dataset](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/original_tfl_journeys_type%20-%20dataset.csv)
- See [my cleaning, analysis, and pivot tables](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/tfl-journeys-type_clean.xlsx)
- See [my Google Sheet dashboard](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/GoogleSheetDashboard.png)
- See [my SQL queries](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/tfl-journeys.sql)
- See [my Tableau Dashboard Part 1](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/TableauDashboard.png)
- See [my Tableau Dashboard Part 2](https://github.com/Mazedaa/TFL-Journeys-Project/blob/main/TableauDashboard2.png)

