# iris-data-analysis
Analysis of the Iris dataset using R

## Iris Data Analysis
This repository contains a detailed exploratory data analysis of the Iris dataset. The Iris dataset is a classic and very easy multivariate dataset to test classification algorithms and visualizations.

## Dataset Description
The dataset contains 150 observations of iris flowers from three different species: Iris Setosa, Iris Versicolor, and Iris Virginica. There are four features measured in centimeters: the lengths and the widths of the sepals and petals.

## Visualizations

## Boxplots:
The boxplots display the spread and central tendency of each attribute for each species. It is evident that Iris Setosa has smaller petal lengths and widths but wider sepals, whereas Iris Virginica generally has the largest petals.

![boxplots](https://github.com/JulienAkpalu/iris-data-analysis/assets/152445561/09772383-a233-4bdc-8ff8-3c98fa92bdc4)

## Histograms:
The histograms show the distribution of the four different measurements in the Iris dataset. We observe that petal length and petal width have bimodal distributions, indicating the presence of distinct groups within the data.

![histograms](https://github.com/JulienAkpalu/iris-data-analysis/assets/152445561/4de2ebae-3bad-43be-be3b-6fa01a608051)

## Correlation Heatmap:
The correlation heatmap visualizes the Pearson correlation coefficients between the features. Petal length and petal width have a strong positive correlation, while sepal width shows a slight negative correlation with petal length and width.

![correlation_heatmap](https://github.com/JulienAkpalu/iris-data-analysis/assets/152445561/1846a665-a953-4a30-b19e-5069545ad018)

## Scatter plot: 
The scatter plot matrix provides a pairwise comparison of the features colored by species. The plots reveal the distinct clustering of species based on petal measurements and the overlap between Iris Versicolor and Iris Virginica based on sepal dimensions.

![scatter_plots](https://github.com/JulienAkpalu/iris-data-analysis/assets/152445561/095c4d22-db48-4521-94c8-5958673b4940)

## Analysis
A statistical analysis of the dataset indicates significant differences in sepal length among the species. The logistic regression model built on the features yields high accuracy, suggesting that these measurements are effective predictors for classifying iris species.

## Files in the Repository
-iris.csv: The dataset file.
-R_Script_Iris.txt: R script containing the analysis, including data exploration, visualization, and model building.
-visualizations: Folder containing all the generated plots as PNG images.
-Visualizations and comments_Iris.pdf: this pdf contains a desciptions of the visualizations plots (scatter plots, Histograms, etc... ) 

## Running the Analysis
To run the analysis, make sure you have R installed with the required libraries ggplot2, GGally, and corrplot. You can install the libraries using the install.packages() function in R. Then, execute the script analysis.R.

## Conclusions 
The Iris dataset provides clear examples of species differentiation based on morphological features. These features can reliably predict species classification, as demonstrated by the exploratory data analysis and logistic regression modeling.
