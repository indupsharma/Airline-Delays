# Airline-Delays

Abstract

Thousands of individuals face inconvenience and maybe even skipping on events such as weddings, funerals, sporting or maybe even vacations due to the flights getting delayed.
A flight is deemed to be delayed by the Federal Aviation Administration (FAA) when it departs 15 minutes after the scheduled time. The idea for this topic as my final presentation occurred to me when I was traveling to Florida for a conference and the airlines which I booked got delayed by 1 hour 30 mins. Which was the case with other fellow mates who had come from California and Seattle.

The initial idea was to find out the airline who had enormous flight delays from 2009 to 2018. As per the feedback received, the dataset was changed to flight delays in the US from January 2022 to August 2022. This study demonstrates the possible reasons for flights getting delayed by channelizing it using Azure VM, Spark technologies, and Jupyter Notebook. Exploratory data analysis was conducted in Pyspark, python, and SQL following that machine learning was conducted in Pyspark.

The initial step was exploratory data analysis which was done using printSchema(), intending to find out the missing data, followed by the machine learning algorithms (classifiers).

For machine learning, there are steps taken in Pyspark:
1. String Indexer - convert the categories into numbers
2. One Hot Encoder - represents categorical variables as numerical values in a machine learning model
3. Vector Assembler - converts the independent columns as input into one column as output 
4. Standard Scalar - for standardizing or normalizing the features
5. Splitting dataset - split into two sets of 80% training and 20% testing.
6. Deploying Model - Logistic Regression, Decision Trees, Random Forest, Gradient Boosting Tree, Naive Bayes
7. Model Evaluation - as follows


Feature    Parameter  Logistic  Random Forest  Gradient Boosted Tree  Decision Tree  Naive Bayes

VAM1       Accuracy   0.7881    0.7858         0.7895                 0.7889         0.6328
           
           Precision  0.6003    0              0.5788                 0.5715         0.2974
           
           Recall     0.0322    0              0.0632                 0.0573         0.5243

VAM2       Accuracy   0.7858    0.7858         0.7903                 0.7890         0.7312
           
           Precision  0.5021    0              0.5704                 0.5715         0.3663
           
           Recall     0.0038    0              0.0852                 0.0573         0.3492



