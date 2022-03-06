---
description: Setting up and configuring your scheduled queries.
---

# Schedule a query

{% hint style="info" %}
Using superQuery's scheduler is not the same as using BigQuery's.&#x20;
{% endhint %}

To schedule a query, first open the tab containing the query you'd like to schedule. If the query hasn't been written yet, open a new tab and write out the SQL.

Then, click on the scheduler icon that appears to the right of your [query tabs](../superquery-editor/query-tabs.md) (show below).

![](<../.gitbook/assets/image (78).png>)

## Scheduler Settings

Before scheduling your query, you'll need to set up the scheduler.

Your query scheduler settings (screenshot at the end) contain four main sections:

### Query details&#x20;

* Give your scheduled query a recognizable name. This will help you identify the query if you have multiple scheduled queries.&#x20;
* By default, the name you've given the query tab will be used.&#x20;

### Set up scheduler interval &#x20;

* Determine how often you'd like the query to execute.&#x20;
* Select one of the preset options in the dropdown, or customize your interval.
* For custom intervals, refer to [this article](http://www.quartz-scheduler.org/documentation/quartz-2.3.0/tutorials/crontrigger.html) and [this article](https://www.freeformatter.com/cron-expression-generator-quartz.html) if you need help setting up the proper notation.&#x20;

### Set up the query's destination table&#x20;

* This is just like setting up a destination table for a regular query.&#x20;
* Give the table a recognizable name, and decide whether you'd like the results to append to or overwrite the table's previous results.

### Notification options   <a href="notification-options" id="notification-options"></a>

* Decide whether you'd like to receive alerts when the query executes successfully, fails, or both.

{% hint style="info" %}
Note: When you are scheduling a query that contains [variables](../superquery-editor/variables.md), the variable will execute as a literal value.
{% endhint %}

![](<../.gitbook/assets/image (79).png>)

## Scheduling a sequence of DML scripts

You can save tons of time by setting up a series of [DML statements](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax) to execute in a sequence — and how to schedule these in a single scheduler.  \
\
It might look a little bit like this:

```
CREATE TABLE IF NOT EXISTS `myproject.mydataset.mytable` (
the_time TIMESTAMP,    
customer_name STRING,    
item_name STRING,    
item_id NUMERIC NOT NULL,    
price NUMERIC);

INSERT INTO `myproject.mydataset.mytable` (
the_time, customer_name, item_name, item_id, price)
VALUES (
'2019-08-01 12:41:11', 'John Smith' 'MacBook Pro', '1245124', 2000
);

SELECT * FROM `myproject.mydataset.mytable`;
```

superQuery detects from the syntax whether to execute these queries in parallel, or in a sequence.

To do so, write out your queries as you would in a Query Tab, separated by a semicolon. Then create your scheduled query as normal, except **do not** include a destination table when configuring the settings.

## Scheduler Tips & Tricks <a href="scheduler-tips--tricks" id="scheduler-tips--tricks"></a>

There are a couple unique characteristics about superQuery's scheduler. Notably, you can:

* Schedule queries that Create, Update, and Delete other tables.
* Set **Job priority** to Batch mode to help in cases when the scheduled query is triggered during high load times (when using Slots). BigQuery's engine will allocate resources at the best time.
* Select the billing project the query will be executed on while defining another project inside your SQL.
