# Which Individual-Level Factors Affect the Social Justice? 
## Evidence from Chinese Survey Data
# Abstract

I pay attention to the citizens’ feeling about whether this society is justice in China, which is influenced by individual and regional features. The goal of this paper is to quantitatively study and identify the potential factors have impacts on social justice. Firstly, i use **PCA** to draw information of the individual attributes and perform data reduction. Then I adopt **ordered probit model** to analyze the effect of extracted principal components on peoples’ feeling about the degree of social justice. 

I find that both better living environment and health status have positive effects on residents’ feeling about the level of society justice. And people’s attitudes toward politics can indicate their feelings of social justice. Finally, increment of the social status and optimistic expectation for the future social status indicate better feeling of the degree of social justice.

#### Why I choose ordered probit model rather than ordered logistic model
The multinomial ordered logistic regression model requires the **independent of irrelevant alternatives property** (IIA), which means the probability of one observation belong to class *i* relative to class *j* only depends on the decision boundary between class *i* and class *j*, and this boundary is not affected by the existence and the properties of other classes.

However, Probit models allow for correlated errors among different alternatives. Considering my model can not get all the explanatory variables and some relevant variables still may be omitted, these omitted variables may not follow indenpendent distribution. In other words, the error terms containing these omitted variables can be correlated over alternatives. Thus, the **IIA** assumption is not satisifed. Fortunately, probit models tolerate the correlated errors. So I decide to use porbit models here.
