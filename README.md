# Track-7-Z-Order

## Catalog

- **Explanation of the Problem**
- **Implementation**
- **Testing**
- **Result**
- **Conclusion**
- **Reference Lists**

## Explanation of the problem:
In this project, the goal is by using Z-order based on Quadtree to implement and test the 
performance of query processing. In the process, data size, distribution, with Z-order or not 
will be changed. For the dataset part, it contains points and polygon. Also, it will perform in 
different queries, for example, window query, and KNN query. The execution time will be 
used to determine the performance.

## Implementation:
In the test, several variables need to change during the test. So that I generate four datasets
with different data size, there are 91 records, 2701 records, 16471 records and 260281
records. Some are uniform distribution and others are skewed distribution.
Otherwise, data type may influence the test performance like the point and polygon dataset. 
Hence, tourist points indicate the point data and the landmark areas indicate the polygon data.
And The schema created is like the figure below shown:


## Testing:
Based on control variable method, when investigate the relation between two conditions, only 
relative variables change, and others should be fixed.
All the tables below will clearly show what variable include and how it may change.
Data size:
There are 12 sets of data.

For window query, the test will consider the data with Quadtree, and data with Z-order based 
on Quadtree to find out the effect of Quadtree index with z-order though the execution time. 
Another one is relation between index and the KNN query. Modify the dataset so that the 
KNN query processing time is different.
For the data size, data type, data distribution, the test should include different data volume
and type under fixed data distribution, various data volume and distribution with no change in 
data type, and data size keep same, change in data volume and distribution.

## Result:

## Conclusion:
1. From the result, it shows data size increases, then query processing time increase 
while other variables have no change.
2. Compare all the result data, quadtree index with Z-order will speed up processing.
3. Compare uniform point data and uniform polygon data which entries is 91 and 100, 
KNN query is the faster, and for uniform point data, window query’s execution time 
is less than polygon has.
4. For window query, as the Z-order used, the processing time is less than only quadtree 
index.
5. For KNN query, compare uniform point and skewed point, the result represents
uniform point is more efficiency than skewed one.
