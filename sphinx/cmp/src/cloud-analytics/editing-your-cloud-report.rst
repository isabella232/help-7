.. _cloud-analytics_editing-your-cloud-report:

Edit Cloud Analytics Report
===========================

.. NOTE::

   If you're new to Cloud Reports and/or haven't created a Cloud Report yet, we recommend reading our post on :doc:`Creating Cloud Reports <create-cloud-report/index>` before reading further.

There are several types of edits you can make to your Cloud Report:

* Adding additional dimensions
* Changing the metric by which your dimensions are being measured
* Reordering results
* Changing the visualization
* Modifying the time interval and/or range
* Filtering dimensions

Most of these are self-explanatory, as you would simply make your changes the same way you made your original selection.

Let's briefly go over your options for editing reports, highlighted below.

.. image:: ../_assets/cleanshot-2021-06-14-at-14.20.30.jpg
   :alt: A screenshot showing you the options for editing a report

Report Settings
---------------

Metrics
^^^^^^^

**Cost:** Analyze your reports on a basis of how much your selected dimensions cost you.

**Usage**: Analyze your reports and selected dimensions on a usage basis. Make sure to pair this with the Unit chip as a Breakdown Dimension.

**Savings:** Analyze your reports and selected dimensions on a savings basis. These savings come as a result of your commercial agreement with Google Cloud and the agreed-upon discount between your company and DoiT International.

.. ATTENTION::

   The discount is not available for the following services: Google Maps APIs, Google Support, Looker, Preemptible VMs (compute engine), 3rd party GCP Marketplace services, Premium OS Images.

Aggregation
^^^^^^^^^^^

Use aggregations to summarize how you view your reports. `Read more on aggregations <https://help.doit-intl.com/cloud-analytics/using-aggregations-in-cloud-reports>`__.

View As
^^^^^^^

This is where you select how your report is visualized.

ML Features
^^^^^^^^^^^

Use this to perform advanced analysis in your reports with just a click. Use this to perform `Trend Analysis <https://help.doit-intl.com/cloud-analytics/trend-analysis>`__ or to `create Forecasts <https://help.doit-intl.com/cloud-analytics/forecasting>`__ is supported.

Time Interval & Time range
^^^^^^^^^^^^^^^^^^^^^^^^^^

Specify the frequency in which data is aggregated. For the time interval, you have the following options: Hour, Day, Week, Month, Quarter, Year.

For the time range, the options are the following:

.. image:: ../_assets/image\ (77).png
   :alt: A screenshot showing you the options for Time Range

Exclude partial Intervals
^^^^^^^^^^^^^^^^^^^^^^^^^

When looking at at a report the most current interval is always incomplete. If the report is **Daily** then the current day will always be collecting billing data throughout the day. By checking this checkbox, cloud analytics will remove any incomplete time interval from the data of the report.

.. image:: ../_assets/image\ (25).png
   :alt: A screenshot of the *Time Range* drop-down menu

This means that we will hide data for the current day for daily intervals, current week for monthly intervals, etc.

This can be very useful when performing comparative reports like Month over Month analysis, or Week over Week analysis. This feature can also be used to remove outliers to help the accuracy of our heatmap views since partial intervals tend to skew trends by representing incomplete periods.

Timezone
^^^^^^^^

Timezone used to aggregate the time interval in your report.

.. ATTENTION::

   Google invoices are shown in PST

   Amazon invoices are shown in UTC

   *If you modify your timezone to reflect your local or company time, the totals will not reflect the invoices.*

Currency
^^^^^^^^

Currency that the billing data is reported in (Metric must be "Cost").

Compare Data
^^^^^^^^^^^^

The **Compare Data** dropdown will automatically add either **% change** or **actual difference** between 2 time intervals in a report.

To enable Comparison mode select either **Show actuals** or **Show percentage**
from the *Comparative data* drop-down in Edit mode of Cloud Analytics
Reports

.. image:: ../_assets/image\ (90).png
   :alt: A screenshot of the *Comparative data* drop-down menu

Comparison mode is

* Only supported on *Table* based views.
* Only supported with *Total Aggregation*
* Must be used on *Time series data*

When selected **we will automatically adjust your report**, you will be warned of the changes and asked to confirm.

.. image:: ../_assets/image\ (154).png
   :alt: A screenshot of the Show Comparative Report modal dialog

Once enabled, you will see new columns in your table based view showing the :raw-html:`&#8710;` between time intervals. This difference :raw-html:`(&#8710;)` appears **after** the intervals compared.

For example below: Months 07 (July) and 08 (August) show the % change after in the column :raw-html:`&#8710;08` (Change to August)

.. image:: ../_assets/image\ (155).png
   :alt: Report with highlighted comparison columns

.. Note::

   Column headings will contain a % symbol when showing % change**

Filtering Values
^^^^^^^^^^^^^^^^

You can filter the metric included in the report by using an :doc:`Metric Filter <metric-filters>`

To view a subset of your dimension's values, click on the chip you'd like to filter. Then check the boxes next to the subsets you'd like to view in the report.

You may also exclude a selection of values, or limit results to a specific number of values arranged in descending order according to the Metric (Cost**,** Usage, or Savings) selected.

Next, click "Save" in the lower-right corner of the popup modal.

.. image:: ../_assets/cloudreports-filters.jpg
   :alt: A screenshot showing you the location of the Save button

Your filters are displayed along with any other visible configurations on the right-hand collapsible sidebar. To expand it, click on the **>|** icon in the lower-right corner of your screen.

.. image:: ../_assets/cloudreports-filter-visible-config.jpg
   :alt: A screenshot showing you the location of the filters sidebar

Finally, click the "Run" button to generate an updated report that reflects the filters you've selected.

Performing Edits
----------------

Depending on the edits you're making to your Cloud Report, you may have to re-run your report for the changes to reflect while other edits will show up in real-time.

Real-time updates
^^^^^^^^^^^^^^^^^

Any edits which don't alter the results themselves will update the report in real-time. This includes changes made to:

* Metric measurement
* Chart type
* Sorting of results
* ML Features such as :doc:`Trend Analysis <trend-analysis>` or :doc:`Forecasting <forecasting>`

Below, we can see the first three types of real-time edits being performed.

.. image:: ../_assets/cleanshot-2020-06-30-at-12.49.48.gif
   :alt: An animated screenshot showing you the results of real-time edits

Edits requiring a refresh
-------------------------

Updates made to reports which require you to refresh it include:

* Adding additional dimensions
* Modifying the time interval and/or range
* Filtering dimensions
* :doc:`Filtering metrics <metric-filters>`

Below, you'll see what it looks like to filter a dimension.

.. image:: ../_assets/cleanshot-2020-06-30-at-13.19.17.gif
   :alt: An animated screenshot showing you a report being filtered by a dimension
