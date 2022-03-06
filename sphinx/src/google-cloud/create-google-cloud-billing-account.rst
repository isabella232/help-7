.. _google-cloud_create-google-cloud-billing-account:

Create Google Billing Account
=============================

.. epigraph::

   How to create a Google Cloud Billing Account directly from the Cloud Management Platform.

Overview
--------

The *Cloud Billing accounts* are used to define who pays for a given set of Google Cloud resources and *Google Maps Platform APIs*. Access control to a Cloud Billing account is established by IAM roles. A Cloud Billing account is connected to a DoiT International :doc:`billing profile <../invoices-and-payments/setting-up-a-new-billing-profile>`.

Use these instructions to create a Google Cloud Billing Account and link it to your company's billing profile using the Cloud Management Platform.

.. IMPORTANT::

   Required Permissions: *Assets Manager*

.. ATTENTION::

   Please note: Your user account must be linked to at least one billing profile in the *Cloud Management Platform*.

Create a new Billing Account
----------------------------

Start with you logging into the `Cloud Management Platform <https://app.doit-intl.com>`__, and select *Manage Licenses & Assets* from the main dashboard:

.. image:: ../_assets/transfer-projects.png
   :alt: A screenshot showing you the location of the Manage Licenses & Assets section

Once you're at the Assets page, switch to the Google Cloud tab and select *New Billing Account*, located on the right-hand side of the page.

.. image:: ../_assets/image\ (64).png
   :alt: A screenshot showing the location of the New Billing Account button

You will be prompted with a pop-up requesting you to enter your Google *Billing Account Name*, *Billing Profile*, and the email addresses of designated *Billing Account Administrators*.

.. image:: ../_assets/image\ (118).png
   :alt: A screenshot showing the Create Google Cloud Billing Account modal dialog

After a few seconds, you should now see the new billing account:

.. image:: ../_assets/image\ (81)\ (1).png
   :alt: A screenshot showing the new billing account

.. WARNING::

   Your domain is added as a *Billing Account User* on the new Billing Accounts you create in the CMP. This allows anyone on the domain to link projects to the billing account.

The following video shows you how to create a Google Cloud Billing Account.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 57.4621%;"><iframe src="https://www.loom.com/embed/c2b1e2fe55204fa9aa7bafe7a3cc8c06" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>

Manage Billing Account Permissions
----------------------------------

.. ATTENTION::

   Only current Billing Admin(s) of the DoiT Billing Account can add or remove billing administrators.

From CMP navigation pane, select Assets > Google Cloud:

.. image:: ../_assets/image\ (57).png
   :alt: A screenshot showing the location of the *Assets* icon

Locate the Billing Account you want to update and click on the:

.. image:: ../_assets/image\ (84).png
   :alt: An image of the "⌄" icon icon

.. image:: ../_assets/image\ (10).png
   :alt: A screenshot showing the location of the *Assets* icon

Add a Billing Account Administrator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

#. Click the

   .. image:: ../_assets/image\ (95).png
      :alt: An image showing the person icon icon for *Billing Admins*

   .. image:: ../_assets/image\ (74).png
      :alt: An image showing the location of the person icon

#. Input the email(s) of users you want to add as Billing Admin(s) then select *Save*:

   .. image:: ../_assets/image\ (98).png
      :alt: A screenshot showing the location of the person icon

Remove a Billing Account Administrator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Find the billing admin you want to remove and click the

.. image:: ../_assets/image\ (27).png
   :alt: An image showing the trash can icon next to their email

.. image:: ../_assets/image\ (40).png
   :alt: A screenshot showing the location of the trash can icon

Review and confirm the action by clicking

.. image:: ../_assets/image\ (51).png
   :alt: An image showing the *APPROVE* button

.. image:: ../_assets/image.png
   :alt: A screenshot showing the *Remove Billing Account Admin* modal dialog

If you prefer to manage Billing Account permissions using your GCP Console, please follow the steps on GCP documentation.

.. image:: ../_assets/image\ (49).png
   :alt: An image of the GCP icon

`Update Cloud Billing permissions <https://cloud.google.com/billing/docs/how-to/billing-access#update-cloud-billing-permissions>`__

.. image:: ../_assets/image\ (49).png
   :alt: An image of the GCP icon

`Overview of Cloud Billing roles in IAM <https://cloud.google.com/billing/docs/how-to/billing-access#overview-of-cloud-billing-roles-in-cloud-iam>`__
