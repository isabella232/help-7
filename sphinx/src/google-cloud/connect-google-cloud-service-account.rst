.. _google-cloud_connect-google-cloud-service-account:

Link Google Cloud Organization
==============================

.. epigraph::

   Connect CMP to your Google Cloud Organization to unlock additional CMP features.

In order to use many of the functionalities available to you within the **Cloud Management Platform**, we request an extra set of permissions, depending on the features you'd like to use. These permissions allow us to access the Google API and obtain information for monitoring or alerts, and/or help you take action on recommendations.

To grant these permissions, you will need to create a Google Cloud Service Account, set up a Google Cloud IAM Role at the organization level, and upload the key to the Cloud Management Platform. In this article, we'll go over how to do all of the above.

.. IMPORTANT::

   Required Permissions: **Manage Settings**

Create Google Service Account
-----------------------------

To create a Google Cloud Service account, please execute the following steps:

#. Open `Cloud Management Platform <https://app.doit-intl.com>`__
#. Navigate to the Settings icon in your lefthand navigation panel
#. Check the features you'd like to enable within the CMP
#. Review the permissions each service request (by expanding the card)
#. Click on "Create Service Account"

.. image:: ../_assets/cmp-featuresconfig-serviceaccount.jpg
   :alt: A screenshot showing the key locations mentioned above

Next, a slide-out will appear on the right side of your screen, containing all of the Google SDK `gcloud <https://cloud.google.com/sdk>`__ commands you need to run in order to create the service account and set it up with the correct role.

Before executing the gcloud commands, ensure that you have selected an appropriate project to create your service account. The project should be one that you are planning to keep long-term and that will only be accessible by only trusted people.

Next, copy the commands generated above and run them sequentially in your terminal or Google Cloud Shell.

.. HINT::

   The ``gcloud`` commands vary according to the boxes of the features you checked

.. image:: ../_assets/cmp-gcp-createserviceaccount2.jpg
   :alt: A screenshot showing the list of generated commands

Once you finished to run the gcloud commands, you can download the key in the JSON file for your new service account.

.. image:: ../_assets/gcloud-download-file.png
   :alt: A screenshot showing the location of the Download File menu item

.. HINT::

   The gcloud command achieve the following: the service account is created in one of the projects in your organization, and then the permissions for this service account are given on the organization level.

Congrats! You have now created a new "doit_cmp_role" linked to the "DoiT CMP Service Account", under your organization.

.. image:: ../_assets/created-doit-cmp-role.png
   :alt: A screenshot of a list of organization roles

Upload the Service Account Key
------------------------------

Whether you've generated your service account key, your next step is to upload the JSON file to the CMP by clicking on "Upload File".

If configured successfully, you should see a "**Healthy**" or "**Partial**" value appear under the "Status" column in the "Configured Accounts" widget.

"**Partial**" will only appear next to your configured service account if you didn't grant permissions for *all* of the available features. What's important in this case is to examine the "Features" widget and verify that all of the features you selected have a "**Healthy**" status.

If there is something wrong with the JSON file you uploaded, you will see an "**Unhealthy**" value under the "Status" column.

.. image:: ../_assets/cmp-gcp-service-account.jpg
   :alt: A screenshot showing the location of the both Status columns

Updating your Service Account
-----------------------------

If, after initially connecting your Google Cloud Organization, you decide that you want to grant permissions for an additional feature :raw-html:`&mdash;` or remove permissions :raw-html:`&mdash;` you can do that easily from the same page.

First, check or uncheck the feature(s) you'd like to add or remove. Then click on "Update Role".

.. image:: ../_assets/cmp-update-role.jpg
   :alt: A screenshot showing the location of the Update Role button

A slide-out will appear containing the ``gcloud`` commands you need to run to update your service account's role so that permissions corresponding to the feature you checked or unchecked are added or removed, respectively.

.. image:: ../_assets/cmp-update-role-2.jpg
   :alt: A screenshot showing the generated commands

Adding Multiple Service Accounts
--------------------------------

In the very rare event that you have multiple Google Cloud Organizations, you can upload multiple service account keys to regulate which Organizations get access to which features.

To add a new service account, click on the "**+**" icon in the top-right corner of the Configured Accounts widget.

.. image:: ../_assets/cmp-add-multiple-service-account.jpg
   :alt: A screenshot showing the location of the + icon

Once clicked, notice that all of the Features will revert back to "Not Configured" since you are setting up a new service account.

As you did with your initial service account, select the features you'd like to grant permissions for this service account, and run the ``gcloud`` commands provided.

Check out the bite-sized video below for a closer look at connecting your Google Cloud Organization to CMP.

.. raw:: html

   <div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe src="https://www.loom.com/embed/55c2fd9dbde74ac6bd2d3ac7e8c8bd45" style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" allowfullscreen scrolling="no" allow="encrypted-media;"></iframe></div>
