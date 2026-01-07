library(ggplot2)

#1st Question -- Scatter Plot

#dataframe
weight_height_df <- data.frame( 
                                Weight = c(60,65,70,72,75), 
                                Height = c(170,175,168,180,178)
                               )
#scatterPlot
ggplot(weight_height_df, aes(x=Weight, y=Height))+
  geom_point(color="red", size=3)+
  labs(title="Weight vs Height",
       x = "Weight (kg)",
       y = "Height (cm)")+
  theme_minimal()

#2nd Question -- Line Plot

#dataframe
population_df <- data.frame(
                              Year = c(2010, 2011, 2012, 2013, 2014),
                              Population = c(1000, 1020, 1040, 1060, 1080)
                            )
ggplot(population_df, aes(x=Year, y=Population))+
  geom_line(color="red", size=1)+
  geom_point(color="blue", size=3)+
  labs(title = "Year vs Population",
       x="Year",
       y="Population")+
  theme_minimal()

#3rd Question -- Bar Plot
sales_df <- data.frame(
                        Product = c("A", "B", "C", "D", "E"),
                        Sales = c(300, 450, 500, 350, 400)
                      )
ggplot(sales_df, aes(x=Product, y=Sales))+
  geom_bar(stat="identity")+
  labs(title = "Product vs Sales",
       x="Product",
       y="Sales")+
  theme_minimal()

#4th Question -- Histogram
age_df <- data.frame(Age = c(25, 25, 25, 30, 40, 40, 20, 20, 10))

ggplot(age_df, aes(x=Age))+
  geom_histogram(binwidth = 5, fill = "purple", color = "black", alpha = 0.5)+
  labs(title = "Age Distribution",
       x="Age",
       y="Frequency")+
  theme_minimal()

#5th Question -- Pie Chart
market_share_df <- data.frame(
  Company = c("A", "B", "C", "D"),
  Share = c(20, 30, 25, 25)
)
ggplot(market_share_df, aes(x="", y=Share, fill = Company))+
  geom_bar(stat = "identity", width=1)+
  coord_polar(theta = "y")+
  labs(title = "Company Market Shares",
       x=NULL,
       y= NULL)+
  theme_void()

#6th Question -- Box Plot
scores_df <- data.frame(
  Class = c("A", "A", "A", "A", "B", "B", "B", "B"),
  Scores = c(85, 90, 78, 92, 88, 76, 80, 84)
)
ggplot(scores_df, aes(x=Class, y=Scores, fill=Class))+
  geom_boxplot()+
  labs(title = "Class vs Scores",
       x="Class",
       y="Scores")+
  theme_minimal()

#7th Question -- Density Plot
weights_df <- data.frame(Weights = c(60, 65, 70, 75, 80, 85, 90, 95, 100))

ggplot(weights_df, aes(x=Weights))+
  geom_density(fill="lightblue")+
  labs(title="Weights Density",
       x="Weights (kg)",
       y="Density")+
  theme_minimal()

#8th Question -- Violin Plot
scores_df <- data.frame(
  Group = c("X", "X", "X", "X", "Y", "Y", "Y", "Y"),
  Score = c(80, 85, 78, 92, 88, 76, 80, 84)
)
ggplot(scores_df, aes(x=Group, y=Score, fill=Group))+
  geom_violin()+
  labs(title = "Scores by Group",
       x="Group",
       y="Score")+
  theme_minimal()

#9th Question -- Heat Map
temp_df <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

library(reshape2)

melted_data <- melt(temp_df, id.vars="Month")

ggplot(melted_data, aes(x=Month, y=variable, fill=value))+
  geom_tile()+
  scale_fill_gradient(low="white", high="red")+
  labs(title = "Monthly Temperature",
       x = "Month",
       y = "City")+
  theme_minimal()

#10th Question -- Facet Plot
sales_region_data <- data.frame(
  Month = c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar"),
  Region = c("East", "West", "East", "West", "East", "West"),
  Sales = c(200, 150, 220, 170, 210, 160)
)
ggplot(sales_region_data, aes(x=Month, y=Sales, fill = Region))+
  geom_bar(stat = "identity", position = "dodge")+
  facet_wrap(~Region)+
  labs(title = "Sales by Month and Region",
       x = "Month",
       y = "Sales") +
  theme_minimal()
