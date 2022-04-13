
Author: Khem
Date: 04-12-2022

Correlation/regression plot in R with R2 and pvalues

Link
https://rpkgs.datanovia.com/ggpubr/reference/ggscatter.html
https://datavizpyr.com/add-regression-line-per-group-with-seaborn-in-python/
  
#boxplot
https://datavizpyr.com/remove-border-facet-in-ggplot2/
  
#regression plot
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(aes(colour = Species, size=5)) +
  geom_smooth(method = "lm", size =5) + stat_cor(method = "spearman", label.x = 3, label.y = 8)



ggscatter(iris, x = "Sepal.Width", y = "Sepal.Length",
          color = "Species", shape = 21, size = 3, # Points color, shape and size
          add = "reg.line",  # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"), # Customize reg. line
          conf.int = TRUE, # Add confidence interval
          cor.coef = TRUE, # Add correlation coefficient. see ?stat_cor
          cor.coeff.args = list(method = "pearson", label.x = 3, label.sep = "\n")
          

