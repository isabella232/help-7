# Sandboxes FAQ

## How do I delete the sandbox projects created in the CMP?&#x20;

Sandbox projects that were created in the CMP need to be deleted in your Google Cloud console. You cannot delete them from within the CMP itself.&#x20;

{% hint style="info" %}
You will need the **Project Deleter** permission at the project level to delete a sandbox project.
{% endhint %}

## Why do some sandbox projects do not belong to an organization?

It is possible that your organization was created after the sandbox project was created, meaning there was no organization that it could be attached to.

With the **Organization Viewer** role, you can run the following command in CloudShell if you want to see when your organization was created:

```
gcloud organizations describe NAME_OF_YOUR_ORG
```
