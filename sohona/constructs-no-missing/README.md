# Sohana No Missing Data

## Data Column Layout

The data within the mplus file is specifically laid out in this order. Changing this order will break your analysis.

```
Variable:
  ! See README.md for documentation on variables
  ! CHANGE AT OWN RISK: you WILL break the DAT file and your analysis
  ! will not be correct (even if MPLUS returns results)
  Names ARE
    id age gender marital people yrsjob
    cusinter yrsfirm educ income category qual
    rel tr pr atn prod out
    bprd jobsat satw satc burnout burnc
    burnm lrn rd wu rc wf
    cr ethc mu lc de uc
    ub ap jc feed part aut;
```

## Construct and Variable Documentation

The following variables are avaliable within the `sohana_constructs_no_missing.dat`
for MPLUS as of February 15, 2023.

| variable name | description                         | notes            |
|---------------|-------------------------------------|------------------|
| `id`          | respondent's id                     |                  |
| age           | age                                 |                  |
| gender        | gender                              | 1:Male, 2:Female |
| marital       | marital status                      |                  |
| people        | people in the household             |                  |
| yrsjob        | years in current job                |                  |
| cusinter      | number of customers handled per day |                  |
| yrsfirm       | years in current firm               |                  |
| educ          | education                           |                  |
| income        | income                              |                  |
| category      | job category                        | 0:crs, 1:bcr     |
| qual          | quality                             |                  |
| rel           | reliability                         |                  |
| tr            | trust                               |                  |
| pr            | promptness                          |                  |
| atn           | individualized attention            |                  |
| prod          | productivity                        |                  |
| out           | output                              |                  |
| bprd          | backroom productivity               |                  |
| jobsat        | JOB SATISFACTION                    |                  |
| satw          | satisfaction with work              |                  |
| satc          | satisfaction with customers         |                  |
| burnout       | burnout                             |                  |
| burnc         | burnout from customers              |                  |
| burnm         | burnout from management             |                  |
| lrn           | learning orientation                |                  |
| rd            | resource-demand gap                 |                  |
| wu            | work uncertainty                    |                  |
| rc            | role conflict                       |                  |
| wf            | work-family conflict                |                  |
| cr            | customer rejection                  |                  |
| ethc          | ethical concerns                    |                  |
| mu            | management unfairness               |                  |
| lc            | lack of task control                |                  |
| de            | dead end job                        |                  |
| uc            | unsupportive coworkers              |                  |
| ub            | unsupportive boss                   |                  |
| ap            | apathy                              |                  |
| jc            | JOB CHARACTERISTICS                 |                  |
| feed          | feedback                            |                  |
| part          | participation                       |                  |
| aut           | autonomy                            |                  |