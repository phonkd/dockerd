***
>[!question] What URL should the end user use?
>With a configured node Port service the users could access pods with the `ip:port` of any node.
>How can we make our pods accessible via 1 URL?

>[!answer] Answer 1
>>[!warning] Works only on supported cloud platforms:
>>Like:
>>- Google cloud platform
>>- AWS
>>- microsoft azure
>>
>>**update spec type in service-def.yaml:**
>>```
>>...
>>spec
>>	type: LoadBalancer
>>...
>>```

