***
# Syntax
`property: value
```yaml
fruit: apple
```

### Array(/list):
```yml
Fruits:
- Orange
- Apple
- Banana
```
### Dictionary:
**Example**
```yml
Banana:
	calories: 105
	fat: 0.4g
	Carbs: 27 g
```
**Example 2:** (Note: Projects is a list inside of the dictionary)
```yml
Employee:
	Name: Jacob
	Sex: Male
	Age: 30
	Title: System Engineer
	Projects:
		- Automation
		- Support
```
**Example 3**
>[!Code] Ordered:
>```yml
>Employee:
>  Name: Jacob
>  Sex: Male
>  Age: 30
>  Title: Systems Engineer
>  Projects:
>    - Automation
>    - Support
>  Payslips:
>    - Month: June 
>      Wage: 4000
>    - Month: July
>      Wage: 4500
>    - Month: August
>      Wage: 4000
>```

>[!warning]
>Indentation is important.
>The amount of spaces before the property must be the same.
>>[!code] false example: (Fat&Carbs would be a property of calories)
>>```yml
>>Banana:
>> calories: 105
>>	fat: 0.4g
>>	Carbs: 27 g
>>```

