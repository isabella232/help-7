.. _index:

What is CMP?
============

.. epigraph::

   Overview of DoiT International Cloud Management Platform

**Welcome to DoiT International's Help Center for all things Cloud Management Platform!**

.. TIP::

   You can request changes to articles or report issues via our `public GitHub repository <https://github.com/doitintl/cmp-docs>`__ by submitting a pull request or creating an issue.

But for now, let's go over what exactly the CMP is and how *you* can benefit from using it.

The Cloud Management Platform helps the developers and system administrators at digital-native companies improve cloud operations, maintain security, control cost, and ensure governance of its cloud estate. It has five strategic pillars: Analytics, Optimization, Enablement, Productivity, and Governance.

In this brief, we'll briefly go over each of the main capabilities you have access to in the CMP, along with links to other articles for each feature if you're interested in doing a deeper dive.

Cloud Analytics
---------------

Reports
^^^^^^^

Cloud Reports give you instant visibility into your Google Cloud and AWS costs without having to spend agonizing hours manually scanning through cloud bills.

* Analyze cloud spend to identify optimization opportunities.
* :doc:`Build customized reports <../cloud-analytics/create-cloud-report/index>` and :doc:`share <../cloud-analytics/sharing-cloud-reports>` them with others.
* Monitor costs on the go from your phone.
* :doc:`Detect trends <../cloud-analytics/trend-analysis>` in your cloud usage
* :doc:`Forecast your cloud spend <../cloud-analytics/forecasting>` across all time ranges and any cloud services
* Cross-check your SUD/CUD credits with by-the-hour reporting.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/3bb89b9c624a4a52a2ecfbb61a56b4b8" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Cost Attributions
^^^^^^^^^^^^^^^^^

Attributions are a flexible way to group resources and their associated costs, helping you understand the cloud costs and relate them to the business in your Cloud Reports.

You may have various components of your application(s) spread across different projects, using different services. Attributions allow you to combine everything into something coherent.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/8d36dbd796c84d51a26b3f836226c883" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Cloud Cost Optimization
-----------------------

Rightsizing for Google Cloud
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you create an instance in Google Cloud and it is under-utilized, you are paying more than you should as a result of idle resources.

With Instance Rightsizing for Google Cloud, you will:

* Get notified of idle resources across **all** projects, and potential savings from rightsizing.
* :doc:`Identify and delete and/or modify idle VMs <dashboards/rightsizing-for-google-cloud>` in two clicks.
* Never pay for underutilized Google Compute instances again.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/cecfc1a7f3d84240a5be922e27c0ac56" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

**FlexSave**
----------------

Purchasing compute commitments — Reserved Instances (RIs) or Savings Plans (SPs) for AWS; Committed Use Discounts (CUDs) for Google Cloud — is a great way for you to reduce your compute costs for stable, predictable workloads.

However, getting compute commitments *just right* and then managing them is an extremely manual, never ending process. FlexSave automates this for you while maximizing your compute discounts.

FlexSave works by analyzing your workloads, seeing which ones aren"t covered by compute commitments like CUDs, RIs, or Savings Plans. Then, with the click of a button, it assigns reserved compute resources from DoiT's own wholesale inventory to optimally cover them, continuously monitoring for any changes in needs.

See how it works in the video below:

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/b3a232a312c24735aead19d02df4c50f" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

BigQuery FinOps
^^^^^^^^^^^^^^^

As powerful as BQ is, it comes at a high cost depending on your analysts" behavior and how your BigQuery architecture is set up. Adding on to this, trying to identify BigQuery resource inefficiencies without knowing *what* you're looking for can be a huge time-suck.

As a result, we created the :doc:`BigQuery FinOps Dashboard <dashboards/bigquery-finops-dashboard>`, your Swiss Army knife for highlighting inefficiencies in your team's BigQuery usage.

It analyzes your team"s BigQuery behavior, aggregate information, and display the most important statistics for you. Unlike alternative solutions and methods, BigQuery FinOps Dashboard brings important information TO you, without you having to configure anything.

Below you will see the widgets of the dashboard that provide you with insights into your organization's BigQuery usage statistics.

One important aspect of the BigQuery FinOps Dashboard is the Recommendations widget, which offers smart recommendations around the nature of how your datasets, tables, and queries are structured.

Each recommendation category comes with further details on how to act on each recommendation.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.youtube.com/embed/7r1WfwnBAA4?rel=0" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture;"></iframe></div>

Cloud Enablement
----------------

Cloud Sandboxes
^^^^^^^^^^^^^^^

Cloud sandboxes (or DCEs, - disposable cloud environments) offer engineering teams a safe and controlled environment to run experiments, test, and build out new features without worrying about impacting production infrastructure. While easy, simply creating a new Google Cloud project cannot be considered a "complete" solution due to the lack of built-in budget management, self-service for developers, and governing policies.

Cloud Sandbox for Google Cloud gives admins and developers the governance and autonomy they both need, respectively, all while connecting to their Google Cloud Organization.

First, :doc:`create a sandbox policy <cloud-sandbox-management/configuring-a-policy-for-sandbox-accounts>` to automate sandbox management. With a policy set up, you can:

* Connect to your Google Cloud billing account, organization, and IAM folder.
* Set sandbox budgets.
* Get alerts when a budget is hit, or automatically disable the billing.
* Limit the number of sandboxes per user.
* Give your sandbox names a stable naming convention.

Once a policy is created, developers are free to :doc:`create cloud sandbox environments <cloud-sandbox-management/create-gcp-sandbox-accounts>` themselves. No more submitting tickets just to get a new environment provisioned by an SRE. Finally, when sandboxes are up and running, you can monitor them all from a central hub.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/2e2adffc48464c0189b87e4750e7b7d3" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Cloud Quota Monitoring
^^^^^^^^^^^^^^^^^^^^^^

Every cloud provider has resource quotas for things like VPCs, CPU cores, and more. If you'd like to change that quota, you can request more, and typically cloud vendors will approve it. However, this takes hours to days.

However, sometimes your quota limits can, without warning, be hit by a surge of demand that causes you to hit those quotas. When this happens, you're forced to wait for your ticket to be addressed.

With Quota Monitoring for :doc:`Google Cloud <google-cloud/google-cloud-quotas>`, and :doc:`AWS <amazon-web-services/aws-quotas>` you can stay on top of your cloud quotas with proactive monitoring. You'll get notified when you're approaching quotas.

This way, you'll keep services always running by adjusting limits ahead of time.

Cost Anomalies
^^^^^^^^^^^^^^

With so many moving parts in the cloud, it"s critical to keep a finger on the pulse of your costs. However, unless IT regularly monitors cloud spend, sudden spikes in resource costs can remain undetected for weeks — until the monthly bill arrives.

As a result, critical staff resources are wasted manually monitoring for and identifying the scope & source of problems.

:doc:`Cloud cost anomaly detection <anomaly-detection/cloud-anomalies>` offers end-to-end **autonomous monitoring** of spikes in your AWS & Google Cloud usage & billing, seamlessly, across all your projects and services.

Available to DoiT customers right from the CMP, it also offers:

* Context-aware detection that treats each Google Cloud service uniquely.
* Advanced alerting that goes beyond static budgets & thresholds
* Fine-tune alerts by training them with your direct feedback.
* Real-time analysis of workload activity

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.youtube.com/embed/h6V7XfhsdmY?rel=0" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture;"></iframe></div>

Cloud Support and Advisory
^^^^^^^^^^^^^^^^^^^^^^^^^^

As a DoiT International customer, you have access to 80+ battle-tested senior cloud engineers around the globe with over 200 certifications between them.

Within the CMP you can:

* Create :doc:`support or advisory requests <tickets/open-a-new-support-request>`
* :doc:`Escalate <tickets/escalating-support-requests>` support requests
* :doc:`Share <tickets/ticket-sharing>` support requests with others

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/ec2e0bca53fc46ef80061dd96be2f1a0" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Perks
^^^^^

:doc:`Perks <perks/perks>` are service-based benefits available to DoiT International customers at no extra cost, including workshops, training, cost optimization sessions, case studies, and co-produced webinars. They can easily be browsed and requested on-demand from within the CMP.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/9ff183270cb84e32817818589a80d37e" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Cloud Governance
----------------

Asset Management
^^^^^^^^^^^^^^^^

CMP gives you complete self-service management of assets across Google Cloud, AWS, G Suite, Azure, and Office 365.

From your Asset Management screen, you can:

* View all cloud subscriptions in one place.
* :doc:`Create a new Google Cloud Billing Account <google-cloud/create-google-cloud-billing-account>` and/or an :doc:`AWS account <amazon-web-services/create-an-aws-account>`.
* :doc:`Invite an existing AWS account <amazon-web-services/invite-existing-aws-account>`
* :doc:`Purchase additional seats for G Suite <g-suite-and-workspace/purchasing-g-suite-licenses>` and/or :doc:`Office 365 <microsoft-office-365/purchasing-office-365-licenses>` yourself.
* Automate subscription management with :doc:`auto-provisioning <g-suite-and-workspace/configure-auto-increase-for-google-workspace-subscriptions>` for G Suite, guaranteeing there is an open seat at all times.
* :doc:`Tag Assets <assets-and-contracts/tag-assets>` for classification and invoicing purposes (e.g. team name, cost center, location, etc.).

Additionally, you can view your order history of all licenses and subscriptions across all of your cloud products.

Advanced Billing
^^^^^^^^^^^^^^^^

CMP gives you capabilities unavailable in Google Cloud or AWS to customize *precisely* how you'd like to billed via Billing Profiles, Invoices, and Invoice Buckets.

:doc:`Billing Profiles <invoices-and-payments/setting-up-a-new-billing-profile>` are for when your company has different entities requiring separate invoices. For instance, you may use a different payment method or currency depending on the entity.

In the CMP, customers can create as many Billing Profiles as required, per their company's needs.

Additionally, whereas with Google Cloud or AWS you can only pay with a credit card, DoiT International customers have more options for customizing the payment method for their Billing Profile(s) including Credit Card, Wire, Bill.com, and ACH.

:doc:`Invoices <invoices-and-payments/managing-invoices>` across all cloud platforms and their current statuses can be easily accessed using the CMP.

From the Invoices page, you can:

* Click on an invoice to view a detailed breakdown.
* Download invoices.
* Sort invoices by billing profile, cloud service, date, etc.
* Get an at-a-glance look of the invoice status, the product its referencing, and the total/balance.

Any tags placed on assets will also appear in invoices so you can more easily identify invoice items.

:doc:`Invoice Bucketing <invoices-and-payments/changing-invoice-settings>` lets you create custom "buckets" and assign specific assets to those buckets.

This is especially useful when you have different cost centers such as R&D or Operations using different assets and want to bill them separately.

With invoice buckets, you will receive separate invoices for each invoice bucket, billed to the billing profile it is associated with.

:doc:`Go here <invoices-and-payments/managing-invoices>` for the full list of your billing and payment related capabilities.

Contract Management
^^^^^^^^^^^^^^^^^^^

Via the Contracts page, you get self-service access to all cloud contracts you are being billed for through DoiT International.

User and Role Management
^^^^^^^^^^^^^^^^^^^^^^^^

Use User Management to:

* :doc:`Add colleagues <user-management/creating-a-new-user>` to your CMP team.
* Management Billing Profile assignments.
* Configure notifications for alerts like payment reminders, new invoices, and more.
* :doc:`Set up and grant roles <user-management/manage-roles>` that give access to various CMP features.

Managed Cloud Support
^^^^^^^^^^^^^^^^^^^^^

Within the CMP you can resolve your cloud issues quickly with hyper-responsive and unlimited support from DoiT International— **at no extra cost**.

* :doc:`Open tickets <tickets/open-a-new-support-request>` with experienced Cloud Architects and Engineers.
* View open or historical tickets and their statuses.
* :doc:`Share tickets <tickets/ticket-sharing>` with other team members.
* Stay up to date on any :doc:`known issues <tickets/cloud-infrastructure-known-issues>` across all clouds you use.

.. toctree::
   :maxdepth: 1
   :hidden:

   general/index
   google-cloud/index
   amazon-web-services/index
   flexsave-aws/index
   spot-scaling/index
   cloud-analytics/index
   dashboards/index
   governance/index
   tickets/index
   g-suite-and-workspace/index
   microsoft-office-365/index
   cloud-sandbox-management/index
   invoices-and-payments/index
   anomaly-detection/index
   user-management/index
   notifications/index
   vendor-information/index
   apis/index
   perks/index
   assets-and-contracts/index
   tutorials/index

..
   flexible-reservations
