# Optimized Query for LeetCode 601 - Human Traffic of Stadium

## Problem Overview
This documentation discusses an optimized SQL query to identify records of visits to a stadium with three or more consecutive visits, where the number of attendees exceeds 100.

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
The input and output tables are the same as specified in the original problem for LeetCode 601.

## Optimization Explanation
The optimized version improves performance by reducing the need for additional joins or complex calculations. It utilizes a simplified approach to group and count consecutive records directly based on the conditions specified.
