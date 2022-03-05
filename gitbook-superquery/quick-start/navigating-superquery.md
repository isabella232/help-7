---
description: Get familiarized with the superQuery UI
---

# Navigating superQuery

This post will cover the fundamental parts of the superQuery UI.

superQuery is broken down into five sections:

1. Resource Panel
2. SQL Editor
3. Results Grid
4. Visualize Toggle
5. Right pane

Let's briefly cover the main capabilities of each section.



### #1 — Resource Panel <a href="1--resource-panel" id="1--resource-panel"></a>

The resource panel contains eight resources, each represented by a unique icon.

#### Boards

[![](https://downloads.intercomcdn.com/i/o/162594881/fea2d764f0cf059263c9fabf/boards.png)](https://downloads.intercomcdn.com/i/o/162594881/fea2d764f0cf059263c9fabf/boards.png)

[Boards](../superquery-editor/organizing-queries.md) are like folders, where you can organize your queries by topic, theme, project. Think of them as a filing & management system for your queries.

#### Resources  <a href="projects" id="projects"></a>

[![](https://downloads.intercomcdn.com/i/o/162586232/2f6b298a4d97ab75c6b3dbc1/projects.png)](https://downloads.intercomcdn.com/i/o/162586232/2f6b298a4d97ab75c6b3dbc1/projects.png)

Access all of your BigQuery projects and resources for other supported services (AWS Athena and DynamoDB) here.\


#### Schema <a href="schema" id="schema"></a>

[![](https://downloads.intercomcdn.com/i/o/162587680/541666f1e4269e9b643dfa05/schema.png)](https://downloads.intercomcdn.com/i/o/162587680/541666f1e4269e9b643dfa05/schema.png)

View columns of the table(s) being queried in your current query tab.&#x20;

[Schema](../superquery-editor/schema.md) is automatically detected based on the tables queried in your SQL.

\
**Query History**

[![](https://downloads.intercomcdn.com/i/o/162595843/e4ad30227edb768a9248e820/scheduled.png)](https://downloads.intercomcdn.com/i/o/162595843/e4ad30227edb768a9248e820/scheduled.png)

Query history displays the previous queries you've executed in superQuery and BigQuery.



#### **Scheduled Queries** ****[![](https://downloads.intercomcdn.com/i/o/162595797/4e75d0213a3a869dc4799b1d/queryhistory.png)](https://downloads.intercomcdn.com/i/o/162595797/4e75d0213a3a869dc4799b1d/queryhistory.png)

Manage and edit your [scheduled queries](../scheduled-queries/managing-scheduled-queries.md) here.&#x20;

####

#### Source Control

![](../.gitbook/assets/SourceControl.jpg)

Connect your [GitHub repository](../git-integrations/connect-github.md) or [GitLab project](../git-integrations/connect-gitlab.md) to superQuery.

Once connected, it's easy to back up queries, catalogue them, and version-control them.



#### Dark Mode / Light Mode toggle

[![](https://downloads.intercomcdn.com/i/o/162599071/f72cc1a9feb8d955beeff11e/theme+toggle.png)](https://downloads.intercomcdn.com/i/o/162599071/f72cc1a9feb8d955beeff11e/theme+toggle.png)

Toggle between Dark Mode and Light Mode with a single click.

####

#### superQuery Help

![](../.gitbook/assets/Help.jpg)

Clicking on this icon gives you several options:

1. Contact Support
2. Make a feature request
3. Open superQuery documentation
4. Access keyboard shortcuts
5. Open the latest release notes
6. Check out pricing

**Profile**

****[![](https://downloads.intercomcdn.com/i/o/162598834/d1720f085eeefd43f17ee639/user-profile.png)](https://downloads.intercomcdn.com/i/o/162598834/d1720f085eeefd43f17ee639/user-profile.png)

* View and change your billing plan
* Connect your Google Cloud Storage bucket to save downloaded CSV results there.

### #2 — SQL Editor

The SQL Editor is where you write your queries. In the editor, you have the following capabilities for analyzing data faster and more efficiently.

#### Query Tabs

Organize your queries into [tabs](../superquery-editor/query-tabs.md) that you can name & easily identify later.&#x20;

Tabs allow you to work across multiple queries in one window. The SQL persists across sessions, similar to how you work in a Google Doc — meaning you won't lose your work if you refresh the page or close your session.

With tabs, you can easily jump between queries you're working on.

#### Query Cost Calculator

Know your query's cost before executing it. Avoid costly mistakes and query with transparency.

![](<../.gitbook/assets/image (3).png>)

#### Variables

[Variables](../superquery-editor/variables.md) are placeholders for values that can change.&#x20;

When you find yourself constantly updating a WHERE clause, then variables can be useful.\
\
They make your queries more readable and allow you to perform quick changes on your query without modifying the SQL itself.

![](<../.gitbook/assets/ChangeVariable (1).gif>)

#### Autocomplete

Write queries faster using SQL Autocomplete.

![](../.gitbook/assets/autocomplete.gif)

#### Share query tab

[Share a query tab](../superquery-editor/query-tabs.md#share-tab), or an [entire Board](../superquery-editor/organizing-queries.md#share-a-board), with your team.

![](../.gitbook/assets/ShareQueryes.gif)

#### Manually commit queries to Github or GitLab

Use [Manual Commit](../git-integrations/add-commit-messages.md) to add a message to your Git commits, or if you want to commit a change without running the query.

![](<../.gitbook/assets/Manual Commit.gif>)



### #3 — Results Grid

In your results grid, you can:

* View, explore, and export query results.
* [Generate a quick visualization](../superquery-editor/charts.md) of your query result.
* Preview tables and views and see their details.
* Make changes to views and [commit them to Git](../git-integrations/version-control-views.md)

![](<../.gitbook/assets/ChartsSQ (1).gif>)



### #4 - Dashboard View

The **Visualize** toggle transforms the latest results of all of your query tabs into a [dashboard](../dashboards/create-dashboards.md) in one click — no exporting required.

![](../.gitbook/assets/VisuallizeSQ.gif)

### #5 — Right Pane

Your right pane (highlighted below) is separated into the following features

* [Schedule Query](../scheduled-queries/schedule-query.md) - schedule your current tab's SQL to run at a regularly scheduled interval
* [Query Tab Settings](../superquery-editor/tab-settings.md) - modify settings for your query tab like billing project, destination table, and more
* Full-Screen Mode - expands your editor view
* A "More Options" button which opens
  * Format Query - formats your current tab's SQL
  * Save View - saves your current query as a view
  * Save To - saves your current query tab to a different board
  * Download SQL - downloads your current query tab's SQL into a .sql file

![](<../.gitbook/assets/CleanShot 2021-02-22 at 12.23.06.jpg>)

\
