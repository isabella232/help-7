.. _tutorials_how-to-get-gcs-cost-per-bucket:

How to get GCS cost per bucket
==============================

.. epigraph::

   extract cost insights about your Google Cloud Storage buckets

Introduction
------------

Google Cloud Storage (GCS) is object storage for companies of all sizes. You can use GCS to store any amount of data and retrieve it as often as you"d like.

Cloud Management Platform (CMP) is a software service that automatically identifies cloud cost issues, gives those insights to relevant teams, and delivers the context you need to get back on track.

.. NOTE::

   This tutorial is intended for people who are somewhat familiar with Google Cloud Console and want to learn about the Cloud Management Platform. There are explanations for all of the actions in Google Cloud Console, but they may not explain everything needed for someone completely new to Google Cloud. There is no assumed knowledge about CMP.

Label Google Cloud Storage Buckets
----------------------------------

Start with adding labels to your Google Cloud Storage buckets.

#. Open the `Cloud Storage browser <https://console.cloud.google.com/storage/browser>`__ in the Google Cloud Console

#. In the bucket list, find the bucket you want to apply a label to, and click its **overflow** menu:

   .. image:: ../_assets/overflow-menu-icon.png
      :alt: A screenshot showing the overflow menu icon

#. Click Edit labels

#. In the side panel that appears, click the + Add label button

#. Specify ``bucket-name`` as a 'key' and the name of the bucket as a 'value' for your label

#. Click Save

.. TIP::

   In the Edit labels side panel, you can also edit the Value of existing labels.

Create Cloud Analytics Report
-----------------------------

Start with creating a new CMP Analytics Report

* Open `CMP Analytics <https://app.doit-intl.com/analytics>`__
* Click "Explore" to start a new report

.. image:: ../_assets/image\ (3)\ (1).png
   :alt: A screenshot showing the location of the Explore button
