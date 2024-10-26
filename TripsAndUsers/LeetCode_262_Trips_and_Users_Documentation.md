# LeetCode 262 - Trips and Users

## Problem Overview
This problem requires you to analyze user trips and identify unique user counts for each trip, based on the given conditions.

## SQL Schema
### Table: User
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+

### Table: Trip
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| id           | int     |
| user_id      | int     |
| trip_date    | date    |
| distance      | int     |
+--------------+---------+

## Input/Output Example
### Input
User table:
| id | name  |
|----|-------|
| 1  | Alice |
| 2  | Bob   |
| 3  | Charlie|

Trip table:
| id | user_id | trip_date | distance |
|----|---------|-----------|----------|
| 1  | 1       | 2022-01-01| 50       |
| 2  | 2       | 2022-01-02| 20       |
| 3  | 3       | 2022-01-01| 15       |
| 4  | 1       | 2022-01-03| 30       |
| 5  | 1       | 2022-01-04| 25       |

### Output
| trip_date  | user_count |
|------------|------------|
| 2022-01-01 | 2          |
| 2022-01-02 | 1          |
| 2022-01-03 | 1          |
| 2022-01-04 | 1          |

## Solution Explanation
The solution involves joining the `User` and `Trip` tables, grouping by the `trip_date`, and counting unique users who have taken trips on that date. Use of appropriate SQL functions like `COUNT(DISTINCT user_id)` is key to achieving the desired output.
