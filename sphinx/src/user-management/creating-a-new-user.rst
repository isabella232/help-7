.. _user-management_creating-a-new-user:

Creating a New User
===================

You can manage the access of other users on behalf of the organization, as well as create users for new employees who need access to the Cloud Management Platform.

.. IMPORTANT::

   Required Permissions: **User Manager**

Inviting new users
------------------

Please select the '**Users and Roles**' icon on the left-hand navigation panel.

.. image:: ../_assets/usersandroles-2.jpg
   :alt: A screenshot showing the location of the _Users and Roles_ menu item

Next, click the "Invite User" button on the right side of the page.

.. image:: ../_assets/roles1.jpg
   :alt: A screenshot showing the location of the _Invite User_ button

Enter the email(s) of the colleague(s) you'd like to invite to your team. If you want to continue on to edit their profile settings, check the "Continue to editing user profile" box.

.. image:: ../_assets/inviteuser2.jpg
   :alt: A screenshot showing the location of the _Continue to editing user profile_ checkbox and the _Invite_ button

The recipient(s) you invited will receive an email, which you will be CC'd on, inviting them to complete the sign up and use the CMP.

Editing User Profiles
---------------------

There are two ways you can access the page to edit a user's profile:

* Check the "Continue to editing user profile" box when initially inviting them.
* Click on their email in your Users list.

When editing a profile, you have four sections:

#. **Profile** - Set name, job function, and phone number of the user
#. **Permissions** - :doc:`Assign a role <manage-roles>` to the user, which contains the :doc:`set of permissions <user-permissions-explained>` they have.
#. **Notifications** - Determine which events you'd like the user to be notified on.
#. **API** - `Generate an API key <https://developer.doit-intl.com/docs/start>`__ that lets you programmatically access CMP features.

.. image:: ../_assets/edituserprofiles.gif
   :alt: An animated screenshot showing how to generate an API key

Bulk Editing
^^^^^^^^^^^^

To perform bulk updates on users in your organization, check the boxes next to the users you'd like to update. Next, click on the "Edit" button.

.. image:: ../_assets/bulkupdate1.jpg
   :alt: A screenshot showing the location of the organizations checkboxes and the _Edit_ button

In the "Bulk Update Users" pop-up, make your bulk changes. This can include updating multiple users' job function, role, and/or notifications.

Once you've made your desired changes, click on the "Update" button to confirm them.

You may also bulk delete users from your organization. Simply click on the "Delete" button and confirm your decision after.

.. image:: ../_assets/bulkupdate2.jpg
   :alt: A screenshot showing the _Bulk Update Users_ modal dialog

Notification Types
^^^^^^^^^^^^^^^^^^

* *New Invoices* - Get sent an email when a new invoice is uploaded to the Cloud Management Platform.
* *Cost Anomalies* - Get notified when our system detects abnormal usage of your cloud platform (i.e., AWS or Google Cloud)
* *Payment Due/Overdue* - Get automated updates when your invoices are becoming due and when they're overdue.
* *Credit Alerts* - request to be notified when your credits are nearly exhausted (75% utilization), and once again when they've been exhausted.
* *Cloud Quota Utilization* - _Get alerted when your Google Cloud and/or AWS service quota utilization exceeds 80%.
* *Cloud Known Issues* - _Get notified when there are any :doc:`known infrastructure issues <../tickets/cloud-infrastructure-known-issues>` with Google Cloud and/or AWS.
