# Creating a New User

You can manage the access of other users on behalf of the organization, as well as create users for new employees who need access to the Cloud Management Platform.

{% hint style="info" %}
Required Permissions: **User Manager**
{% endhint %}

## Inviting new users

Select the _Settings_ icon (a gear icon), then select the _Identity and access_.

![A screenshot showing the _Identity and access_ screen](../.gitbook/assets/cmp-iam-screen.png)

Next, select the _INVITE USER_ button on the right-hand side of the page.

A modal dialog will appear, allowing you to add multiple email addresses you want to invite. You are also given the option to check a box indicating that you would like to continue on to editing their user profiles.

![A screenshot showing the location of the _Continue to editing user profile_ checkbox and the _Invite_ button](../.gitbook/assets/cmp-edit-user-profile-invite-button.png)

The recipient(s) you invited will receive an email, which you will be CC'd on, inviting them to complete the sign up and use the CMP.

{% hint style="warning" %}
Any user from your organization (as determined by their email address) can [sign up for a CMP account](../general/log-in.md) without being invited.

If someone from your organization signs up without being invited, their user account will be assigned your organization's [default role](manage-roles.md#setting-a-default-role) (or the [Basic Role](manage-roles.md#basic-role) if no default is configured).

You cannot enforce invitation-only access to the CMP. However, if you create a default role with no permissions, you can ensure that any users who do sign up without being invited must request permissions from an administrator before being able to do anything within the CMP.
{% endhint %}

## Editing User Profiles

There are two ways you can access the page to edit a user's profile:

* Check the "Continue to editing user profile" box when initially inviting them.
* Click on their email in your Users list.

When editing a profile, you have four sections:

1. **Profile** - Set name, job function, and phone number of the user
2. **Permissions** - [Assign a role](manage-roles.md) to the user, which contains the [set of permissions](user-permissions-explained.md) they have.
3. **Notifications** - Determine which events you'd like the user to be notified on.
4. **API** - [Generate an API key](https://developer.doit-intl.com/docs/start) that lets you programmatically access CMP features.

### Bulk Editing

To perform bulk updates on users in your organization, check the boxes next to the users you'd like to update then select the _Edit_ button.

A _Bulk Update Users_ modal dialog will appear, allowing you to make your changes. This action can update multiple users' job function, role, and notifications.

Once you've made your desired changes, select the _UPDATE_ button to confirm them.

You can also bulk delete users from your organization. Instead of selecting _UPDATE_, select _DELETE_.

![A screenshot showing the _Bulk Update Users_ modal dialog](../.gitbook/assets/cmp-bulk-update-dialog.png)

### Notification Types

* _New Invoices_ &mdash; Get sent an email when a new invoice is uploaded to the Cloud Management Platform.
* _Cost Anomalies_ &mdash; Get notified when our system detects abnormal usage of your cloud platform (i.e., AWS or Google Cloud)
* _Payment Due/Overdue_ &mdash; Get automated updates when your invoices are becoming due and when they're overdue.
* _Credit Alerts_ &mdash; request to be notified when your credits are nearly exhausted (75% utilization), and once again when they've been exhausted.
* _Cloud Quota Utilization_ &mdash; Get alerted when your Google Cloud and/or AWS service quota utilization exceeds 80%.
* _Cloud Known Issues_ &mdash; Get notified when there are any [known infrastructure issues](../services/consulting-support/cloud-incidents.md) with Google Cloud and/or AWS.
