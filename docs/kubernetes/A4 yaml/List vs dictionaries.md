#list #dictionary
****
# Dictionaries vs lists:

| Property | List | Dictionary |
| -------- | ---- | ---------- |
| Ordered  | Yes  | unordered           |
|          |      |            |
## When to use lists and when to use dictionaries
Use lists when you have multiple objects of the same kind:
```yml
cars:
 - Blue Corvette
 - Grey Corvette
 - Red Corvette
 - Green Corvette
 - Blue Corvette
```

As soon as you want to save properties to these list items, use Dictionaries:
```yml
- Color: blue 
Model:
  Name: Corvette
  Model: 1995
Transmission: Manual
Price: $20000
- Color: grey
Model:
  Name: corvette
  Model: 1995
transmission: manual
price: 20000$
  
  
```