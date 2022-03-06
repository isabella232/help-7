.. _google-cloud_gcp-transfer_transfer-manually:

Transfer manually
=================

.. WARNING::

   Please mind the Google Marketplace :doc:`note <index>`.

Please follow the below steps to switch your Google Cloud projects to use DoiT-provided billing account.

The steps
---------

* Go to `https://console.cloud.google.com/billing <https://console.cloud.google.com/billing>`_
* Make sure your organization is selected and then click on your the billing account from the list

.. image:: ../../_assets/image\ (62)\ (1).png
   :alt: A screenshot showing you the organization selection menu and the billing account list

* Click on Manage

.. image:: ../../_assets/image\ (65).png
   :alt: A screenshot showing the location of the Manager option

* The list of your Google Cloud projects currently linked to this billing account will be displayed. For each of the projects, click on the three-dots menu and select "Change billing"

.. image:: ../../_assets/image\ (63)\ (1).png
   :alt: A screenshot showing the location of the Change Billing option

* In the popup modal, please select the new billing account provided to you by DoiT International

.. image:: ../../_assets/image\ (60).png
   :alt: A screenshot showing you the billing account dropdown menu

* Repeat for each projects on the list

Within an hour, your transferred projects will appear in DoiT `Cloud Management Platform <https://hello.doit-intl.com>`__.

.. image:: ../../_assets/image\ (61)\ (1).png
   :alt: A screenshot showing you how to access the list of transferred projects

Troubleshooting
---------------

I don't see any billing accounts in my Google Cloud Organization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Make sure you have Billing Account Administrator permissions on your billing account in question. Please contact your Google Cloud administrator if you believe you don't.

I can't change billing for the projects listed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To change billing account for a project you need to have proper permissions on the project itself. Usually having Billing Account Administrator on your whole Google Cloud Organization or the project in question is enough.

While trying to select a new Billing Account no DoiT billing accounts appear on the list
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Make sure you have access to the target Billing Account. To verify, please go to hello.doit-intl.com and check if your name is on the list:

.. image:: ../../_assets/image\ (59)\ (1).png
   :alt: A screenshot showing you how to verify you have access to the billing account

If it's not, please contact one of the persons who are on the list to add you.
