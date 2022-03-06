.. _cloud-analytics_manage-budgets:

Manage Budgets
==============

.. epigraph::

   Track your cloud spend against your planned spend.

.. TIP::

   If you're new to Budgets and/or aren't familiar with Attributions we recommend reading our post on :doc:`Creating Attributions <attributing-cloud-spend>` before reading further.

Setting budgets and forecasting IT spend is a well-established FinOps practice, ensuring that you won"t get surprised by your cloud bill.

Within the Cloud Management Platform, you can set Budgets using :doc:`Attributions <attributing-cloud-spend>`, custom-defined groupings of cloud resources (accounts, services, etc.) that map to your organizational and financial reporting structure.

.. IMPORTANT::

   Required Permissions: **Cloud Analytics**

Creating budgets
----------------

Go to the main Budgets page by clicking on the [1] Cloud Analytics icon in the left-hand navigation panel, and then clicking on the [2] Budgets tab.

You will see a list of your team"s Budgets that you"ve created, been shared on, or have been made public if there are any.

To create a new Budget, click the [3] "**NEW BUDGET**"  button.

.. image:: ../_assets/budgets1.jpg
   :alt: A screenshot showing the location of the _NEW BUDGET_ button

Configure your Budget
---------------------

After giving your Budget a suitable name, set the Budget"s scope by selecting the Attribution(s) your Budget will be allocated to. As mentioned earlier, :doc:`Attributions <attributing-cloud-spend>` let you group any combination of cloud resources (and their associated costs) so you can better relate cloud costs to your financial reporting structure.

Next, select the Budget type, time interval, and start date. If you"re configuring a Fixed Budget, you"ll need to set the end date as well. After defining the above, it"s time to set your Budget"s amount or upper limit. Before entering a number, it might be helpful to see what the last period"s cost was for reference.

Click on the "**Refresh**" icon to view your last period"s cost, given the Budget scope, time interval, and date(s) you"ve selected.

.. image:: ../_assets/refreshbudget.gif
   :alt: An animated screenshot showing the results of selecting the _Refresh_ button

After refreshing and setting a Budget amount, two visual bars will appear below:

* **Current Spend:** Your current spend relative to alert thresholds (next section) you've set.
* **Forecasted Spend:** How much you are forecasted to spend by the end of the Budget period.

Lastly, if you"re configuring a recurring Budget, you have the option to factor in growth in spending for subsequent periods. This will adjust your Budget amount in future periods, increasing it by a growth percentage rate set by you.

Enable this by checking the "Allow growth in recurring budget periods" box, and then enter in a % growth rate for each subsequent period.

.. image:: ../_assets/growthbudget.jpg
   :alt: A screenshot showing the location of the _Allow growth in recurring budgets period_ input box

Set Budget Thresholds
---------------------

After configuring your Budget, you can set up to three Budget thresholds. By default, thresholds are set at 50%, 85%, and 95% of your Budget amount, but you can modify any of the percentages as you wish.

You will see the corresponding amount for each threshold, and the forecasted date that you will reach each threshold.

Setting thresholds is useful especially when setting up Budget alerts.

.. TIP::

   Note: In order to see forecasted dates for Budget thresholds, you need to click the "Refresh" button after setting a Budget amount.

.. image:: ../_assets/budgets3.jpg
   :alt: A screenshot showing the location of the _Alert Thresholds_ section

Sharing Budgets
---------------

By default, Budgets are only viewable by the creator. Sharing your Budget makes it visible to others.

To share your Budget, click the "Share" icon in the top right of the "Sharing & Alerting" widget.

This will open a pop-up that will give you two options when sharing:

* Give everyone on your team Viewer access.
* Explicitly give someone from your team Viewer or Editor Access.

Having View access means the Budget will appear on the main Budgets page, and that you can view the Budget itself — but you can"t make any edits to the Budget.

Edit access allows you to edit a Budget, but not delete it. Only those with Owner access can delete Budgets.

Once you've entered the email(s) of who you're sharing your Budget with, click "Add" and then hit "Save" to apply your changes.

.. ATTENTION::

   Sharing someone on your Budget does not mean they will be alerted when usage thresholds are exceeded.

.. image:: ../_assets/budgets4.gif
   :alt: An animated screenshot showing how to share a budget

Changing a user"s Budget permission
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To change a user's permission, make them the owner of the report, or remove them from the report, click on the dropdown next to their email in the Share Budget pop-up.

Then make a selection and click "Save" to apply the changes.

Receive Alerts for Budgets
^^^^^^^^^^^^^^^^^^^^^^^^^^

Alerts help notify yourself and others when you exceed a Budget threshold.

To add someone as a recipient of an email alert notification, enter their email in the "Send to" text box in the "Sharing & Alerting" widget. If they haven't been shared on the Budget already, you will be asked to share it with them first before being able to subscribe them to the Budget's alert.

You will see a confirmation in the lower-left corner of your screen when someone has been successfully subscribed to your Budget"s email alerts.

.. image:: ../_assets/budgets5.jpg
   :alt: "Budget shared successfully"

When you exceed a Budget threshold, you"ll receive an email detailing:

#. Which budget threshold you exceeded
#. Your current spend
#. The forecasted date when you will reach 100% of your budget

Here is what a typical alert looks like:

.. image:: ../_assets/budgetalert.jpg
   :alt: A screenshot showing an email alert

Video Walk-through
------------------

Watch Budgets in action in the video below:

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/3588cdf27fd84f7fab8e96ea91b7d7f9" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>
