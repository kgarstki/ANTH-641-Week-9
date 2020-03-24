# ANTH 641 Week 9 - Exercise: Data Visualization in Different Ways

_One of the most informative ways to investigate data is to visualize it in graphical form. In week 8 we experimented a bit with visualizing some data in R. This week we’ll do a bit more with R, while also comparing it to [RAWGraphs](https://rawgraphs.io/), an open source data visualization framework. What you should get out of this exercise is a taste of what different types of data visualization can bring to archaeological research and exposure to some possibilities in your own research. Sometimes, graphical representation of data is about experimentation; you may be able to identify a pattern in the data with one type of visualization that isn’t apparent with another._ 

_We can do the first part of this exercise in two ways: through RStudio in Binder or in RStudio on your own computers. I recommend the latter, but if you do not want to install the application on your on computer, the former will work as well._

If you choose to use RStudio through Binder, create a new Jupyter notebook environment with mybinder.org for this week’s forked GitHub repo (as you’ve done in the past). 

If you choose to use RStudio on your own computer, make sure it is downloaded (you can get it from [here](https://rstudio.com/products/rstudio/download/#download)). It will have you download R if you don’t already have it. When you open RStudio on your computer, set up a folder that will be your “working directory” – this is where you can put any data you want to import into R or anything you want to export from R. Click on the ellipses on the right side of the screen, in the files section of RStudio (see below). 

![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image1.png)

Choose the folder location on your computer. Then Click on the “More” dropdown and choose “Set as Working Directory.”

![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image2.png)

Now we’re set to visualize some data. 

## Graphical Visualization with R
_If you’re using RStudio on Binder, ignore the next sentence. If you’re using RStudio on your computer, download the Rscript file “Week9” from the GitHub repo and put it in your R working directory (set up above)._

_In RStudio, click on the Week9.r file in the bottom right region, which will open the Rscript file in the top left of the screen. Follow these instructions to complete this part of the exercise._

_At the end of the exercise, you should have two csv files and three graphs/plots in your directory. If you’re using RStudio on Binder, make sure to download these files onto your own computer – upload the three images to your GitHub repo._

## Graphical Visualization with RAWGraphs: DartPoints
_[RAWGraphs](https://rawgraphs.io/) is an open source data visualization framework. We’re going to use it to exercise our creativity with data visualization._ 

1. First, open the DartPoint.csv file. In the first column, the first row is empty – name it “ID.” We only need to do this so that every column has a title. Save it. 

2. Go to [RAWGraphs](https://rawgraphs.io/) and click “USE IT NOW!”

3. With the DartPoint.csv file open (in Excel or whatever spreadsheet software you’re using), copy all. On RAWGraphs, paste your data. 

![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image3.png)

4. Scroll down and you can see all of the different charts you can choose to use. It’s always good to read the descriptions of the charts before you use them (on the left). 

![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image4.png)

5. First one we’ll use is Scatter Plot. This is very similar to some of the plots we’ve use in R. We can try to illustrate four variables at once: length, width, thickness (numerical); name of point type (categorical). Click on Scatter Plot and scroll down to this screen: 
![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image5.png)

We see there are five inputs to this chart (only two are required, x and y axis). To the left we see the different variables from our dataset. We can drag these into the different inputs. Drag “Length” to “X Axis”, “Width” to “Y Axis”, “Thickness” to “Size”, “Name” to “Color.” While you’re doing this, consider how this is changing the chart. Scroll down to see your new chart.

There are ways to edit the chart to the left of the chart. These differ depending on the type of visualization. (We can alter the colors manually, for example). 

6. When you have it the way you like, download this chart as a png file at the bottom of the screen. 

7. Now try to make a different chart by changing the variables on the x and y axes and Size. Download that as well. 

8. Now we’re going to try a completely different chart with these data. On the “Choose a Chart” section of the screen, choose Convex Hull. A problem with this chart is that we can only show two numerical variables and one categorical variable. Drag “Length” to “X Axis”, “Width” to “Y Axis”, “Name” to “Group.” 

9. Download this chart. How does this compare to the Scatter Plots from above, or the ones made in R? What are the benefits to each type? 

## Graphical Visualization with RAWGraphs: Seriation

_We tried using a plot in R to show change over time in pottery types. Now let’s try some other ways to visualize this._

1. First, open the Nelson.csv file. In the first column, the first row is empty – name it “Depth.” We only need to do this so that every column has a title. Save it.

2. Copy and paste all of the data from Nelson into RAWGraphs. One thing we need to do with these data is “stack them.” Data stacking involves splitting a dataset up into smaller data files, and stacking the values for each of the variables into a single column. Look at the pre-stacked data table, then click on “Click here to stack it.” Choose the dimension “Depth” as the column to stack the data. Now look at the new dataset. How is it different? Hint: the column titles changed, for one. 
![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image6.png)

3. We’ll first use Area Graph. Use “column” with “Group,” “Depth” with “Date”, “value” with Size, and “column” with “Color.” Take a look at the resultant chart. Does this chart illustrate the same thing as the plot in R? Feel free to alter the chart in any way. Do you notice a problem with one of the variables? One problem is the Depth variable, which is supposed to represent a time element but it isn’t chronological. This doesn’t affect our graphs too much other than how an axis is labeled. Download the file and save it.

4. Next, try Bump Chart. Use column with Group, Depth with Date, value with Size. What do you think of this visualization? Try changing the settings on the left side of the chart, such as Interpolation, to see how that affects it. Make sure to download it. 

5. Last, try Streamgraph. Now, you’ll need to figure out which variables go to which inputs. Play around with the settings and find a visualization you like; download it. 

## Graphical Visualization with RAWGraphs: Multiple Categorical Variables
_We’ve used a few datasets for visualizing multiple numerical variables and change over time. Now we’ll look at some different ways to visualize multiple categorical variables._

1. Download the Garstki_IA_Ironworking.csv file from Canvas. This is data that comes from Garstki, K. 2019. "The Social Production of Iron in First Millennium BC Ireland" Oxford Journal of Archaeology 38(4) 443-463.

This dataset has five variables: site name, type of site, the period the site is dated to, number of furnaces found at the site, and type of ironworking occurring at the site. 

2. Open the file and copy all of the data and paste into RAWGraphs. 

3. We’re going to use three different Hierarchical charts to visualize these data. Specifically, we’re interested in how these different variables relate to one another, sometimes nested. With these charts it is important to pay attention to the order you place the variables in the hierarchy. 

4. First we’ll use a Cluster Dendrogram. Place the variables in the following order:
![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image7.png)

5. Download this chart. What does this visualization show you? What if we change the order to these variables? Play around with the order and figure out how this changes the meaning of the chart and what it shows. Download one of these variations. 

6. Try the same thing with a Circular Dendrogram (repeating steps 4-5). 

7. Now click on Sunburst. This one is a bit different than the first two. Try the following: 
![alt text](https://github.com/kgarstki/ANTH-641-Week-9/blob/master/Images/Image8.png)

8. How does this visualization differ from the earlier ones? How is it useful (or not)? Make sure to download it. 

9. Last, we’ll use the Alluvial Diagram. Now it’s up to you to figure out what variables to use in what order, with which inputs. 

10. When you figure out a diagram you’re happy with, download it. 

## Graphical Visualization with RAWGraphs: On your own!
_In this last activity you need to find your own dataset – it can be from anywhere! It could be data you’re working with for your research, it could be data you find on Open Context or another data archive/repository._

1. Paste the data you’ve found into RAWGraphs and try to visualize it in some way. Look at the different graph types, and which may work best with the type of data you have. Experiment! Some charts may not work well and you may need to switch to another. 

2. When you’ve found something you like and that illustrates some kind of pattern in the data, download it. 
