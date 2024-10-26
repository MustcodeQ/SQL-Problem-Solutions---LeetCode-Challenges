# LeetCode 601 - Human Traffic of Stadium

## Problem Overview
The problem focuses on identifying records of visits to a stadium with three or more consecutive visits, where the number of attendees exceeds 100.

## SQL Schema
### Table: Stadium
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| visit_date    | date    |
| people        | int     |
+---------------+---------+

## Input/Output Example
### Input
Stadium table:
| id | visit_date | people |
|----|------------|--------|
| 1  | 2017-01-01 | 10     |
| 2  | 2017-01-02 | 109    |
| 3  | 2017-01-03 | 150    |
| 4  | 2017-01-04 | 99     |
| 5  | 2017-01-05 | 145    |
| 6  | 2017-01-06 | 1455   |
| 7  | 2017-01-07 | 199    |
| 8  | 2017-01-09 | 188    |

### Output
| id | visit_date | people |
|----|------------|--------|
| 5  | 2017-01-05 | 145    |
| 6  | 2017-01-06 | 1455   |
| 7  | 2017-01-07 | 199    |
| 8  | 2017-01-09 | 188    |

## Solution Explanation
The solution involves creating a Common Table Expression (CTE) to identify consecutive visits with the specified criteria. The logic counts consecutive entries and filters those that meet the threshold of attendees.
