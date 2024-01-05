# Track-7-Z-Order

## Catalog

- [Explanation of the Problem](#explanation-of-the-problem)
- [Implementation](#implementation)
- [Testing](#testing)
- [Result](#result)
- [Conclusion](#conclusion)

## Explanation of the problem
In this project, the goal is to use Z-order based on Quadtree to implement and test the 
performance of query processing. In the process, data size, and distribution, with Z-order or not 
will be changed. For the dataset part, it contains points and polygons. Also, it will perform in 
different queries, for example, window query, and KNN query. The execution time will be 
used to determine the performance.

## Implementation
In the test, several variables need to change during the test. So I generate four datasets
with different data sizes, there are 91 records, 2701 records, 16471 records, and 260281
records. Some are uniform distribution and others are skewed distribution.
Otherwise, the data type may influence the test performance like the point and polygon dataset. 
Hence, tourist points indicate the point data, and the landmark areas indicate the polygon data.
And The schema created is like the figure below shown:
![0de0984177fd2e6372ea7ad52ec0c46](https://github.com/wenlinwwww/Track-7-Z-Order/assets/104260056/25695b51-b405-4866-9c01-78e53fe380e3)


## Testing
Based on the control variable method, when investigating the relation between two conditions, only 
relative variables change, and others should be fixed.
All the tables below will clearly show what variable is included and how it may change.
Data size:
There are 12 sets of data.
![c6d72800616392854846f0d45d1d699](https://github.com/wenlinwwww/Track-7-Z-Order/assets/104260056/59bd2323-13d7-46be-b1dd-1990f187deed)
![9d711958b39745e92246bd30342e1a9](https://github.com/wenlinwwww/Track-7-Z-Order/assets/104260056/b434e7bc-e4b5-47dc-b08d-fa53f089cf24)


For window query, the test will consider the data with Quadtree, and data with Z-order based 
on Quadtree to find out the effect of Quadtree index with z-order though the execution time. 
Another one is the relation between the index and the KNN query. Modify the dataset so that the 
KNN query processing time is different.
For the data size, data type, and data distribution, the test should include different data volume
and type under fixed data distribution, various data volumes, and distribution with no change in 
data type and data size remain the same, changes in data volume and distribution.

## Result
![a2bdf70953cc4e03e8393a6c4f7d783](https://github.com/wenlinwwww/Track-7-Z-Order/assets/104260056/23cee450-2079-478d-be94-ff4dc295db8d)


## Conclusion
1. From the result, it shows data size increases, then query processing time increases 
while other variables have no change.
2. Compare all the result data, quadtree index with Z-order will speed up processing.
3. Compare uniform point data and uniform polygon data which entries are 91 and 100, 
KNN query is faster, and for uniform point data, the window query’s execution time 
is less than the polygon has.
4. For window query, as the Z-order is used, the processing time is less than only the quadtree 
index.
5. For the KNN query, compare the uniform point and skewed point, the result represents
uniform point is more efficient than the skewed one.
