---
description: How to detect trending dimensions in Cloud Analytics Reports
---

# Trend Analysis

Oftentimes when analyzing our cloud usage, we're overwhelmed with so many data points that it becomes impossible to identify important trends. _Trend Analysis_ helps you cut through the "noise" and isolate what is trending upward or downward in a single click.

Use forecasting in your Cloud Analytics reports by selecting the _Trending Up_ or _Trending Down_ options from the _ML Features_ drop-down menu on the left-hand side of the report:

![A screenshot showing you the _ML Features_ drop-down](../.gitbook/assets/cmp-report-ml-menu.png)

Using the [Mann-Kendall](https://www.statisticshowto.com/mann-kendall-trend-test/) algorithm, the trending feature removes "noise" from your Cloud Analytics Reports and only shows trending [Metrics](editing-your-cloud-report.md#metrics) (i.e. Cost or Usage) in your series.

Here's what the same report looks like with the _Trending Up_ option selected:

![A screenshot of a trending up report](../.gitbook/assets/cmp-report-ml-trend.png)

See how it works in the video below.

{% embed url="https://www.loom.com/share/e2b7381983fa41bb929436a1d4a1e30b" %}
