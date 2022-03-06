.. _google-cloud_import-historical-billing-data:

Import Historical Data
======================

.. epigraph::

   How to analyze cloud spend that pre-dates when you started using the CMP

Overview
--------

This feature enables you to upload all your historical Google Cloud billing data into DoiT Cloud Management Platform (CMP) to immediately analyze your cloud spend and promptly identify optimization opportunities through Cloud Analytics, BigQuery Lens, and other CMP features.

To get started, first, you need to ensure that you have a Service Account that connects your Google Cloud Organization to CMP. Then, you'll have to grant two additional required permissions.

Step 1. Identify the service account linked to CMP
--------------------------------------------------

#. From CMP's left side navigation menu, click "**Settings**"
#. Select "**Google Cloud**" tab
#. Locate the "**Service Account**" listed in Configured Accounts

.. image:: ../_assets/image\ (103).png
   :alt: A screenshot showing the location of the Settings menu item, Google Cloud tab, and _Service Account_ listing

If you do not have this configured yet, you need to create a service account and connect CMP to your Google Cloud Organization. Follow the steps in this link: `Connect Google Cloud Service Account <https://help.doit-intl.com/google-cloud/connect-google-cloud-service-account>`__

Once you have identified the service account, copy the service account email and proceed to granting it with the the additional required permissions.

Step 2. Grant the required Permissions
--------------------------------------

.. ATTENTION::

   You need to have the appropriate IAM role/permission in GCP to grant the required permissions to the service account

..

   **BigQuery Data Viewer role**

#. From GCP, navigate to the BigQuery Console and open the **dataset** where the billing data is stored, then click "**Share dataset**"
#. In the Dataset Permissions tab, click "**Add Member**" and paste the **service account** **email** that was linked to CMP as identified in :doc:`Step 1 <import-historical-billing-data>`.
#. Click "**Select a Role**" highlight BigQuery then choose **BigQuery Data Viewer**
#. Click "**Add**"
#. Click "**Done**"

.. image:: ../_assets/image\ (96).png
   :alt: A screenshot showing the location of the Share Dataset option

.. image:: ../_assets/image\ (94).png
   :alt: A screenshot showing the process of granting the BigQuery Data Viewer role

..

   **Grant the bigquery.jobs.create permission**

   Depending on the features initially enabled from the process `Connect Google Cloud Service Account <https://help.doit-intl.com/google-cloud/connect-google-cloud-service-account>`__, you may already have this permission granted to the role. Follow the steps below to verify / add the permission to the project.

#. From the GCP console, select your **organization** from the dropdown options
#. On the navigation menu, go to "IAM & Admin" then select "**Roles**"
#. Click on the role "**DoiT CMP Service Account**"
#. Check if **bigquery.jobs.create** is included in the assigned permissions, if yes, no further action is needed since these permissions will be inherited by the projects
#. If bigquery.jobs.create permission is not yet added, click on "**Edit Role**"
#. Click "**Add Permissions**"
#. Filter by **"Permission : bigquery.jobs.create**" and check the box for this permission
#. Click "**Add**"

.. image:: ../_assets/image\ (116).png
   :alt: A screenshot showing how to select an organization, access the IAM & Admin menu item, and then select Roles

.. image:: ../_assets/image\ (117).png
   :alt: A screenshot showing the location of the service account listing

.. image:: ../_assets/image\ (108).png
   :alt: A screenshot showing the location of the Edit Role option and the bigquery.jobs.create permission listing

.. image:: ../_assets/image\ (112).png
   :alt: A screenshot showing the Add Permissions option, a list of permissions, and the Add button

Step 3. Link your Google Cloud Direct Billing Account
-----------------------------------------------------

.. IMPORTANT::

   Required Permission: Assets Manager

#. From CMP's left side navigation menu, click "**Assets**"
#. Select "**Google Cloud**" tab
#. Click the dropdown button next to "New Billing Account" and select "**Link Direct Account**"

.. image:: ../_assets/image\ (107).png
   :alt: A screenshot showing the location of the Assets menu item, the Google Cloud tab, and the Link Direct Account option

You can now import your historical billing data into CMP. You need the following information to complete the process:

* Billing Account ID: *example* "**01CF51-9FDB87-7894FD**"
* Source Project: Enter the "**Project ID"**
* Source Dataset: Enter the "**Dataset ID"**

.. image:: ../_assets/image\ (161).png
   :alt: A screenshot of the Link your Google Cloud Direct Billing Account modal dialog

Once you click "**Import**" a new card will be added to your assets reflecting the details and progress or completion status.

.. image:: ../_assets/image\ (115).png
   :alt: A screenshot showing the new Google Cloud card with a "Processing" status

.. image:: ../_assets/image\ (118)\ (1)\ (1)\ (1)\ (1).png
   :alt: A screenshot showing the new Google Cloud card with a "Success" status
