.. _amazon-web-services_set-up-cloudhealth:

Set up CloudHealth
==================

.. epigraph::

   How to setup AWS IAM Roles for CloudHealth integration

Please use the following instructions to setup `CloudHealth <https://www.cloudhealthtech.com>`__ for your new or existing AWS account linked to DoiT International consolidated billing.

Sign in to AWS Console
----------------------

Sign in to the AWS account you'd like to integrate with CloudHealth with an IAM account which has the permission to create AWS IAM roles and policies.

Create an AWS IAM Policy
------------------------

#. Navigate to `IAM Policies <https://console.aws.amazon.com/iam/home?region=us-east-1#/policies>`__
#. Click "Create Policy"
#. Switch to the JSON tab
#. Remove existing content and copy the content of `this JSON policy <https://storage.googleapis.com/hello-static-assets/cloudhealth/iam-policy.json>`__ and paste it into the text area
#. Click "Review Policy"
#. Set name to "CloudHealth"
#. Click "Create Policy"

Create an IAM Role
------------------

#. Navigate to `IAM Roles <https://console.aws.amazon.com/iam/home?region=us-east-1#/roles>`__
#. Click "Create Role"
#. Select  'Another AWS Account'
#. Provide ``454464851268`` as Account ID
#. Mark "Require external ID" and paste ``6cda262029ad7b34a64ff537196ab4``
#. Click "Next: Permissions"
#. Search and select "CloudHealth" IAM Policy
#. Click "Next: Tags"
#. Click "Next: Review"
#. Set Role Name to "CloudHealth"
#. Click "Create Role"

Create Users
------------

The first user will be an administrator we create for you.

Further users and administrators can be created by yourself in the `Cloudhealth Interface <https://apps.cloudhealthtech.com/users>`__ as an Admin.

If you are yourself not an admin, you need to approach an admin in your company to do this.

If you require any further assistance with the creation of the CloudHealth IAM Role, don't hesitate to contact our support at `https://support.doit-intl.com <https://support.doit-intl.com>`__

.. ATTENTION::

   If you have SSO enabled in CloudHealth, you will not be able to add users that use usernames and passwords. In order to add users they must first be added to the proper role group within the IDPs directory.

.. image:: ../_assets/image\ (130).png
   :alt: Inviting a user in Setup > Users is not possible when SSO is enabled results in an error

.. image:: ../_assets/image\ (129).png
   :alt: SSO in Cloudhealth

See also: `AWS Single Sign-On Service Integration Guide For CloudHealth <https://www.cloudhealthtech.com/blog/aws-single-sign-on-service-integration-guide-for-cloudhealth>`__
