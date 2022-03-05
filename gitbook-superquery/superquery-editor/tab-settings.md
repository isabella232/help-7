---
description: Understanding your tab settings.
---

# Query Tab Settings

This article will help you understand the various options you have in your query tab settings.

Click on the Settings gear icon at the top right of your screen to open query tab settings, as shown below.\


![](<../.gitbook/assets/image (19).png>)

A slideout will appear, showing your Query Tab settings:

![](<../.gitbook/assets/image (20).png>)

Let's go over each of the options:

### Select Project

* This is the project to be billed when you execute a query in the active tab.&#x20;
* By default, "Auto" mode is selected. This pulls your current project from your SQL.&#x20;
* If you need to bill another project, select your project from the dropdown list.

### SQL Dialect

* This lets you toggle between **Standard** and **Legacy** SQL dialects, as well as superQuery's "**Auto-Detect**" mode.&#x20;
* The default setting is "**Auto-Detect**" mode, which automatically detects your SQL syntax from your query and makes sure it runs correctly. This also replaces the necessity to put #standardSQL or #legacySQL.

### Cache Preference

You have three options for caching:

* “**SuperQuery**” — executes your query leveraging superQuery's enhanced caching if you have it set up.
* “**BigQuery**” — executes your query without applying any enhanced cost-saving logic.&#x20;
* “**Off**” — executes your query using superQuery's query optimization algorithm, but without caching.&#x20;

[![](https://downloads.intercomcdn.com/i/o/130019029/eaac9cf1706138996e0c05c5/image.png)](https://downloads.intercomcdn.com/i/o/130019029/eaac9cf1706138996e0c05c5/image.png)

### Query Priority

* Interactive queries will start immediately.&#x20;
* Queries with batch priority have fewer quota restrictions, but may not execute for up to 24 hours.&#x20;

For more details on query priority, see GCP’s [documentation](https://developers.google.com/bigquery/docs/queries#batchqueries).

### Processing Location

* Specify the location in which the query will execute. Queries that run in a specific location may only reference data in that location.
* For data in US/EU, you may choose Unspecified to run the query in the location where the data resides. For data in other locations, you must specify the query location explicitly.

### Max**. Query Cost**

* Sets a limit for the tab's query cost.
* If this query will have a cost billed beyond this limit, the query will not execute (without incurring a charge).

### Destination Table

Generates a new table based on the result of an executed query.&#x20;

* **Project**: Choose the project where the destination table will be created.
* **Dataset**: Choose the dataset within that project that will store the table.&#x20;
* **Table**: Give your new table a name.
* **Preference**: Use this option to control the write disposition of the destination table. You have three options:

1. Write if empty — Writes the query results to the table only if the table is empty.
2. Append to table — Appends the query results to an existing table.
3. Overwrite table — Overwrites an existing table with the same name using the query results.

### Autocomplete

Toggling "**Autocomplete**" on will activate an IntelliSense-like auto-complete feature in your SQL editor.&#x20;

### Source Control

Toggling "Auto Commit" on will automatically commit your query to whichever Git repo you've selected (Github, GitLab, or BitBucket) if you've set up the connection.
