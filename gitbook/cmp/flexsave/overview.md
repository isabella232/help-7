---
description: >-
  A fundamentally new way to save money on your cloud compute workloads without
  making long-term commitments
---

# Flexsave overview

Flexsave is your cloud co-pilot, dynamically maximizing your cloud-compute discounts for [Amazon Web Services][aws] (AWS) and [Google Compute Platform][gcp] (GCP) without any of the risks or limitations of long-term use commitments.

In most cases, save [the equivalent of a 1-year commitment discount](#how-much-can-i-save) on your cloud-compute spend with on-demand access to DoiT International's wholesale inventory of AWS [Savings Plans][sps] (SPs), AWS [EC2 Reserved Instances][ris] (RIs), and GCP [Committed Use Discounts][cuds] (CUDs).

{% hint style="info" %}
See also:

* [Flexsave for AWS](aws.md)
* [Flexsave for GCP](gcp.md)
{% endhint %}

## Benefits

* _No commitment_ &mdash; AWS and GCP provide cloud-compute discounts (SPs, RIs, and CUDs) with mandatory commitment periods lasting one year or more. Flexsave provides the same cloud-compute discounts with no commitments.

* _No risk_ &mdash; Flexsave provides on-demand access to DoiT International's wholesale inventory of SPs, RIs, and CUDs. We handle capacity planning and bear the risk of underutilization, meaning you don't have to.

* _Zero cost_ &mdash; Flexsave costs nothing, there are no hidden fees, and _you are guaranteed to save money_. <!-- textlint-disable max-comma -->We optimize our bulk purchasing, so, in most cases, we can afford to pass on the equivalent of a 1-year commitment discount for any SPs, RIs, and CUDs in our wholesale inventory.<!-- textlint-enable -->

* _Easy to use_ &mdash; Flexsave runs on auto-pilot, continually applying the optimum cost-saving strategy to your account. You can enable or disable Flexsave whenever you like.

## How it works

Flexsave uses your GCP and AWS billing data to track your on-demand resource utilization, analyze patterns, detect trends, and predict seasonal variations.

Flexsave will attach the ideal blend of DoiT International's wholesale SPs, RIs, and CUDs to your billing account. As your resource utilization changes, Flexsave will continually readjust the configuration of attached SPs, RIs, and CUDs to maximize your potential savings.

We will automatically convert your Flexsave savings to account credits and [deduct them from your monthly invoice](#invoicing).

## Start saving

Within the CMP, select _Savings_ from the top menu bar, then select _Flexsave_ from the drop-down menu. If Flexsave isn't active, the CMP will take you to the Flexsave start page:

![A screenshot of the Flexsave dashboard inviting you to start saving](../.gitbook/assets/cmp-flexsave-start-saving.png)

At the top of the screen, you can see:

* Your estimated savings rate (based on your on-demand spend history)
* Your estimated monthly savings as a result of using Flexsave
* Your estimated monthly on-demand spend after applying your Flexsave discount

To enable Flexsave, select the _START SAVING_ button on the bottom left-hand corner of the page.

{% hint style="info" %}
Required permissions: [Flexsave Admin](../user-management/user-permissions-explained.md#flexsave-admin)

Default roles with this permission:

* [Power User](../user-management/manage-roles.md#power-user)
* [Admin](../user-management/manage-roles.md#admin)
{% endhint %}

## What to expect


## Monitor your savings

Within the CMP, select _Savings_ from the top menu bar, then select _Flexsave_ from the drop-down menu. If Flexsave is active, the CMP will take you to the Flexsave dashboard:

![An example screenshot of the Flexsave dashboard](../.gitbook/assets/cmp-flexsave.png)

{% hint style="success" %}
In the example screenshot above, Flexsave for GCP has only been active for one and a half months and has already saved the customer a total of $248,145 on their on-demand cloud-compute spend so far.
{% endhint %}

In the top-right hand corner of the screen, a _Time range_ drop-down menu allows you to select the time range you want to view.
Above the bar chart, the CMP displays three essential statistics for the specified time range:

* _Time range savings rate_ &mdash; The effective discount applied to your on-demand spend
* _Time range savings_ &mdash; Your savings as a result of using Flexsave
* _Time range net On-Demand spend_ &mdash; Your net on-demand spend after applying Flexsave discount

In the bar chart shown above:

* The dark blue area of each bar represents the net AWS on-demand spend for that month
* The light blue area of the bar represents the on-demand spend you would have paid without Flexsave
* The shaded regions represent forecasted numbers based on the current usage patterns

## Help

### Invoicing

On your monthly invoices, you will see a line item for Flexsave credits with information like this:

* _Description_: Flexsave Savings
* _Units_: -1
* _PPU_: $206,967.51

Because _Units_ is always set to -1 (indicating a credit), the Flexsave _Price Per Unit_ (PPU) amount is subtracted from your total spend.

Here's an abbreviated example:

| Description         | Units |         PPU |        Price |
| ------------------- | ----: | ----------: | -----------: |
| Google Cloud        |     1 | $574,813.82 |  $574,813.82 |
| Flexsave Savings    |    -1 | $206,967.51 | -$206,967.51 |
|                     |       |             |              |
| Total               |       |             |  $206,967.51 |

### FAQs

{% hint style="info" %}
These frequently asked questions (FAQs) apply to Flexsave in general.

For general platform-specific information, see:

* [Flexsave for AWS: FAQs](aws.md#faqs)
* [Flexsave for GCP: FAQs](gcp.md#faqs)
{% endhint %}

#### How much can I save?

In most cases, your savings will be equivalent to (or higher than) the applicable [AWS Convertible Reserved Instance 1-year Full Upfront][ri-pricing] or [1-year Google Committed Use Discount][cud-pricing].

#### How is using Flexsave better than purchasing discounts directly from AWS or GCP?

To receive a discount when purchasing directly from AWS or GCP, you must commit to at least one year of consistent usage.

Flexsave does not require any commitments, allowing you to adapt your workload and machine types to suit your changing needs without the hassle of capacity planning and the risk of under or over-provisioning.

#### Why don't I see the option to enable Flexsave?

Flexsave will be unavailable if either of the following is true:

* You recently connected your AWS or GCP account, and we haven't finished importing and processing your billing data
* You do have not yet met the minimum seven days of qualifying on-demand spend needed for Flexsave to begin analyzing your resource utilization

If we are still importing and processing your billing data, you can instead select the _NOTIFY ME_ button to receive an update when Flexsave is available.

{% hint style="warning" %}
At this time, we only support Flexsave for AWS customers with billing accounts [consolidated][consolidated] with the DoiT International billing organization.
{% endhint %}

#### Can I turn off Flexsave?

You can disable of Flexsave at any time. If you want to disable Flexsave, please [create a new request](../services/consulting-support/#create-a-new-request) for our support team.

[aws]: https://aws.amazon.com/
[consolidated]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html
[cud-pricing]: https://cloud.google.com/compute/vm-instance-pricing#committed_use
[cuds]: https://cloud.google.com/docs/cuds
[gcp]: https://cloud.google.com/
[reseller]: https://partners.amazonaws.com/partners/001E000001HPlIAIA1/
[ri-pricing]: https://aws.amazon.com/ec2/pricing/reserved-instances/pricing/
[ris]: https://aws.amazon.com/ec2/pricing/reserved-instances/
[sps]: https://aws.amazon.com/savingsplans/
