# Bencare No Missing Data

## Data Column Layout

The data within the mplus file is specifically laid out in this order. Changing this order will break your analysis.

```
Variable:
  ! See README.md for documentation on variables
  ! CHANGE AT OWN RISK: you WILL break the DAT file and your analysis
  ! will not be correct (even if MPLUS returns results)
  Names ARE
    id
    atrust ctrust trust
    valshort vallong value
    loylong loyrep loyalty
    age sex educ inc;
```

## Construct and Variable Documentation

The following variables are avaliable within the `bencare_constructs_no_missing.dat`
for MPLUS as of March 1, 2023.

| variable name | description            | notes                                                                   | measure |
| ------------- | ---------------------- | ----------------------------------------------------------------------- | ------- |
| id            | ID Number              | None                                                                    | Scale   |
| atrust        | Trust in Agent         | None                                                                    | Scale   |
| ctrust        | Trust in Company       | None                                                                    | Scale   |
| trust         | Ovrall trust           | None                                                                    | Scale   |
| valshort      | Value for short term   | None                                                                    | Scale   |
| vallong       | Value for long term    | None                                                                    | Scale   |
| value         | Overall value          | None                                                                    | Scale   |
| loylong       | Loyalty for Longterm   | None                                                                    | Scale   |
| loyrep        | Loyalty for Repeat     | None                                                                    | Nominal |
| loyalty       | Loyalty                | None                                                                    | Scale   |
| age           | Respondent's age       | 1 18-24 yrs, 2 25-34 yrs, 3 35-44 yrs, 4 45-54 yrs, 5 55+ yrs, 6=6, 7=8 | Nominal |
| sex           | Respondent's gender    | 1 Male, 2 Female                                                        | Nominal |
| educ          | Respondent's education | 1 High School, 2 Some College, 3 College, 4 Graduate School             | Nominal |
| inc           | Respondent's income    | None                                                                    | Nominal |
