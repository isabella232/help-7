---
description: >-
  Unlock additional Cloud Management Platform features by linking your AWS
  account
---

# Link your AWS Account

By linking your AWS account/s, you will unlock additional functionalities such as proactive resource quota monitoring and more.

To link your AWS account(s) to the Cloud Management Platform, you will need to create an AWS IAM Role and attach IAM Policies to it. The policies you need to attach will depend on the feature(s) you'd like to enable.

This article will go over creating an IAM role with the required policies 1) automatically via CloudFormation and 2) manually.

{% hint style="warning" %}
Looking for instructions on [how to set up CloudHealth IAM role](https://www.cloudhealthtech.com/blog/cloud-governance-aws-iam-permissions)?
{% endhint %}

## Link an account

{% hint style="info" %}
Required Permission: _Manage Settings_
{% endhint %}

Within the CMP, select the gear icon in the right-hand corner of the top menu bar, then select _Amazon Web Services_ from the drop-down menu that appears. The CMP will take you to the _Link Amazon Web Services_ page:

![A screenshot showing the location of the _Link Amazon Web Services_ button](../.gitbook/assets/cmp-aws-link-account.png)

From the _Link Amazon Web Services_ page, select the _LINK ACCOUNT_ button in the top right-hand corner. The CMP will take you to a page that allows you to complete the process:

![A screenshot showing the location of the _Link Amazon Web Services_ button](../.gitbook/assets/cmp-aws-link-account-options.png)

To continue, follow the instructions in the following subsections to complete the linking process.

### Automatically Link AWS Account

Select the _Create a role automatically_ radio button, then check the boxes next to the features you'd like to enable for this AWS account.

To explore what AWS policies each feature requires, click the _V_ button to the left of the feature name to expand the list of policies.

![A screenshot showing an expanded feature section](../.gitbook/assets/cmp-aws-link-account-features.png)

There are two options for creating the role with this method:

1. Creating a stack in CloudFormation
2. Copy + Pasting a command in CloudShell

#### Option 1: Create stack in CloudFormation

After selecting the features, select _LINK ACCOUNT_. The CMP will open a modal dialog asking you to confirm you want to proceed:

![A screenshot of the AWS CloudFormation modal dialog](../.gitbook/assets/cmp-aws-link-account-stack-creation-modal.png)

After selecting _LINK ACCOUNT_ from the modal dialog, the CMP will open a preconfigured stack template with the necessary roles and permissions in a new AWS CloudFormation tab.

In your AWS account, review the details, then under _Capabilities_, mark the _'I acknowledge that AWS CloudFormation might create IAM resources with custom names'_ checkbox.

Finally, select the _Create stack_ button.

Within about 30 seconds of creating the stack, the CMP _Settings_ page will update, showing your linked AWS account with a _Healthy_ status next to it if the link attempt was successful.

#### Option 2: Create role via CLI

If you prefer to run the commands yourself in AWS CloudShell, select the _PREFER CLI?_ button instead. A pop-up will appear with the commands you should run to generate the role with the requisite policies for the features you selected. After running the command, it may take up to 30 seconds for the account to link to the CMP.

![A screenshot CLI Instructions modal dialog](../.gitbook/assets/cmp-aws-link-account-cli-modal.png)

Within about 30 seconds of creating the stack, the CMP _Settings_ page will update, showing your linked AWS account with a _Healthy_ status next to it if the link attempt was successful.

### Manually Link AWS Account

Select the _Create a role manually_ radio button, then make a note of the listed "AWS Account" and "External ID", as you'll need them for a later step.

![A screenshot of the manual role creation form](../.gitbook/assets/cmp-aws-link-account-manual-role.png)

#### Creating an AWS IAM Role

In a separate tab, open the AWS Management Console. Then, go to _Security, Identity, & Compliance > IAM_, or type `IAM` in the _Find Services_ search bar and select _Roles_ on the left-hand side of the page.

Next, select _Create Role_.

![A screenshot showing the location of the Roles menu item](../.gitbook/assets/aws-go-to-roles.png)

Enter the AWS Account ID and External ID you've noted in the previous step. You might need to check the _Options_ checkbox for the External ID field to show up.

![A screenshot of AWS IAM](../.gitbook/assets/aws-linking-aws-5.png)

Select the _Next: Permissions_ button to load a page where you can select built-in policies or create new ones.

Currently, there are three features you can enable for a linked AWS account: _Core_, [_Quotas_](https://help.doit-intl.com/amazon-web-services/add-your-amazon-web-services-iam-role#quota-monitoring), and [_SpotScaling_](https://help.doit-intl.com/amazon-web-services/add-your-amazon-web-services-iam-role#spot-scaling)

_Core_ permissions are for a minimum set of read-only permissions we need as a foundation for many CMP features. As such, it is checked by default.

For _Core_, you need to add three built-in policies to your role:

* `SecurityAudit`
* `Billing`
* `AWSSavingsPlansReadOnlyAccess`

To add permissions for other features, you'll need to create a new policy. If you wish to enable this feature, select _Create policy_.

![A screenshot showing the location of the Create policy button](../.gitbook/assets/aws-create-policy-in-role.png)

#### Creating new policies

##### Spot Scaling

A new tab will open for you to create the policy. Switch to the "JSON" tab and copy-paste the following list of required permissions as a JSON file:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ec2:Describe*",
                "ec2:CreateLaunchTemplate",
                "ec2:CreateLaunchTemplateVersion",
                "ec2:ModifyLaunchTemplate",
                "ec2:RunInstances",
                "ec2:TerminateInstances",
                "ec2:CreateTags",
                "ec2:DeleteTags",
                "ec2:CreateLaunchTemplateVersion",
                "ec2:CancelSpotInstanceRequests",
                "autoscaling:CreateOrUpdateTags",
                "autoscaling:UpdateAutoScalingGroup",
                "autoscaling:Describe*",
                "autoscaling:AttachInstances",
                "autoscaling:BatchDeleteScheduledAction",
                "autoscaling:BatchPutScheduledUpdateGroupAction",
                "cloudformation:ListStacks",
                "cloudformation:Describe*",
                "iam:PassRole",
                "events:PutRule",
                "events:PutTargets",
                "events:PutEvents"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
}
```

![A screenshot of the AWS _Create policy_ page](../.gitbook/assets/aws-linking-aws-6.png)

After the JSON for the new policy you want to create is pasted, click "**Next: Tags**". If you aren't adding tags to this role, then you may proceed by clicking on "**Next: Review**".

Finally, give your policy an identifiable name, like "spotscaling\_policy", and a description if necessary. Then click on "**Create Policy**".

![A screenshot of the policy name](../.gitbook/assets/aws-linking-8.png)

##### [Quota Monitoring](aws-quotas.md)

A new tab will open for you to create the policy. Switch to the "JSON" tab and copy-paste the following list of required permissions as a JSON file:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "support:DescribeTrustedAdvisorCheckSummaries",
        "support:DescribeTrustedAdvisorCheckRefreshStatuses",
        "support:DescribeTrustedAdvisorChecks",
        "support:DescribeSeverityLevels",
        "support:RefreshTrustedAdvisorCheck",
        "support:DescribeSupportLevel",
        "support:DescribeCommunications",
        "support:DescribeServices",
        "support:DescribeIssueTypes",
        "support:DescribeTrustedAdvisorCheckResult",
        "trustedadvisor:DescribeNotificationPreferences",
        "trustedadvisor:DescribeCheckRefreshStatuses",
        "trustedadvisor:DescribeCheckItems",
        "trustedadvisor:DescribeAccount",
        "trustedadvisor:DescribeAccountAccess",
        "trustedadvisor:DescribeChecks",
        "trustedadvisor:DescribeCheckSummaries"
      ],
      "Resource": "*"
    }
  ]
}
```

After the JSON for the new policy you want to create is pasted, click "**Next: Tags**". If you aren't adding tags to this role, then you may proceed by clicking on "**Next: Review**"

![A screenshot of the first step in the _Create policy_ flow](../.gitbook/assets/aws-linking-8.png)

Give your policy an identifiable name, like "doit\_intl\_quotas" in the case of the Quota Monitoring feature, and a description if necessary. Then click on "**Create Policy**".

![A screenshot of the third step in the AWS _Create policy_ flow](../.gitbook/assets/aws-linking-9.png)

If the policy was successfully created, you'll be taken to the IAM Policies page and see a success message at the top like the following:

!["doit_intl_quotas has been created"](../.gitbook/assets/cmp-doit-intl-quotas-created.png)

#### Select all policies and confirm role

Once any custom policies (if necessary) have been created, revert back to your original tab where the workflow first began, and click the Refresh icon towards the top-right of the policies box. Any newly-created policies will now appear in the search list.

Select all created policies for the features you want to enable in addition to the three built-in policies required for Core features, then click "**Next: Tags**".

If you aren't adding tags to this role, then you may proceed by clicking on "**Next: Review**" from the "Add Tags" page.

![A screenshot of the second step in the AWS _Create role_ flow](../.gitbook/assets/aws-create-role-2.png)

Give the Role an identifiable name (ex. 'doit-intl-cmp-role'), review the selected policies, and click on "**Create role**".

![A screenshot of the fourth step in the AWS _Create role_ flow](../.gitbook/assets/aws-create-role-4.png)

If the role was created successfully, you'll be taken back to the main Roles page and see your Role in the list.

After you have created the role, click on the role name to bring you to its summary page. Copy the value next to "**Role ARN**"

![A screenshot of the AWS role summary page](../.gitbook/assets/aws-roles-summary-screen.png)

Finally, copy and paste the Role ARN to the Cloud Management Platform and click 'Add'.

![A screenshot highlighting the location to paste the _Role ARN_ value](../.gitbook/assets/cmp-paste-role-arn-input.png)

If the status of your AWS account within the Cloud Management Platform appears as 'Healthy', it means the role was added successfully.

![A screenshot highlighting the status of the AWS account](../.gitbook/assets/cmp-aws-account-status.png)

## Editing Linked Accounts

### Unlinking an account

If you want to unlink an account, click on the "Unlink" button in the row corresponding to the account.

![A screenshot highlighting the location of the _Unlink_ button](../.gitbook/assets/cmp-account-unlink-button.png)

### Modifying feature access

#### Adding a feature

If, after linking your AWS account, you'd like to update your role with additional permissions for a new feature, click on the "Edit" button in the row corresponding to the account.

![A screenshot highlighting the location of the _Edit_ button](../.gitbook/assets/cmp-account-edit-button.png)

Then, check the box of any new feature(s) you'd like to add permissions for.

![A screenshot showing a list of features](../.gitbook/assets/cmp-add-feature-permissions.png)

There are two options for updating your role:

1. [Creating a stack in CloudFormation](link-account.md#option-1-create-stack-in-cloudformation)
2. [Copy + Pasting a command in CloudShell](link-account.md#option-2-create-role-via-cli)

Both methods are detailed above (and hyperlinked) in the section on linking your AWS account automatically.

The flows are essentially the same as described above, except instead of creating a new role you are simply updating a role you've already created.

#### Removing a feature

To remove a feature that a linked account has access to, go to the IAM page in the AWS console. Then, detach the policy or policies associated with the feature in that linked account's role.

## Video

{% embed url="https://www.loom.com/share/ed483a87c6474c22ae735ec7d19e2215" %}
