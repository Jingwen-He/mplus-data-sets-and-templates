# Sohona Productivity and Quality Data

## Overview

The key variables measured include:

1. performance (productivity and quality dimensions)
2. job satisfaction (work and customer dimensions)
3. burnout tendencies (company and customer dimensions)
4. role stress factors (11 different stress contributors involving work)
5. job characteristics (feedback, participation, autonomy)
6. individual characteristics (learning, demographics)
7. social reliability (for testing common method bias)

## Data Column Layout

The data within the mplus file is specifically laid out in this order. Changing this order will break your analysis.

```
VARIABLE:
  ! See README.md for documentation on variables
  ! CHANGE AT OWN RISK: you WILL break the DAT file and your analysis
  ! will not be correct (even if MPLUS returns results)
  Names are
    id age gender
    q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11 q12
    q13 q14 q15 q16 q17 p1 p2 p3 p4 p5 p6 p7
    sw1 sw2 sw3 sc1 sc2 sc3 bc1 bc2 bc3 bc4 bc5 bc6
    bm1 bm2 bm3 bm4 bm5 bm6 l1 l2 l3 rd1 rd2 rd3 rd4
    ra1 ra2 rc1 rc2 rc3 wf1 wf2 cr1 cr2 cr3 cr4
    ec1 ec2 ec3 ec4 ec5 mu1 mu2 lc1 lc2 lc3 lc4
    de1 de2 uc1 uc2 uc3 ub1 ub2 ub3 ub4 ap1 ap2 ap3
    f1 f2 f3 f4 pp1 pp2 pp3 pp4 a1 a2 a3
    marital people yrsjob cusinter yrsfirm educ income category
    SDRS1 SDRS2 SDRS3 SDRS4 SDRS5;
  ;
```

## Construct and Variable Documentation

The following variables are avaliable within the `productivity-quality-sd-data.dat`
for MPLUS as of February 15, 2023.

| Construct | Summary                                 | Measure | Variables     | Description   |
| --------- | --------------------------------------- | ------- | ------------- | ------------- |
| REL       | (reliability)                           | Scale   | q1 – q5       | 17 items measuring the quality of service on 7-point scale<br>1=bottom 20%, 7=top 5%. <br>Q1 to Q5 measure Reliability |
| TR        | (trust)                                 | Scale   | q6 – q8       | 17 items measuring the quality of service on 7-point scale<br>1=bottom 20%, 7=top 5%.<br>Q6 to Q8 measure Trust |
| PR        | (promptness)                            | Scale   | q9 – q13      | 17 items measuring the quality of service on 7-point scale<br>1=bottom 20%, 7=top 5%.<br>Q9 to Q13 measure Promptness |
| ATN       | (attention)                             | Scale   | q14 – q17     | 17 items measuring the quality of service on 7-point scale<br>1=bottom 20%, 7=top 5%.<br>Q14 to Q17 measure Individualized Attention. |
| OUT       | (output productivity)                   | Scale   | p1 – p4       | 4 items measuring productivity of service on a 7 point scale<br>1=bottom 20%, 7=top 5%.<br>P1 to P4 measures Output |
| BPRD      | (backroom productivity)                 | Scale   | p5 – p7       | 3 items measuring productivity of service on a 7 point scale<br>1=bottom 20%, 7=top 5%.<br>P5 to P7 measures Backroom productivity. |
| SATW      | (satisfaction with work)                | Scale   | sw1 – sw3     | 3 items measuring satisfaction with work itself<br>5 point scale; 1=extremely dissatisfied, 5=extremely satisfied. |
| SATC      | (satisfaction with customers)           | Scale   | sc1 – sc3     | 3 items measuring satisfaction with customers<br>5 point scale; 1=extremely dissatisfied, 5=extremely satisfied. |
| BURNC     | (burnout-customers)                     | Scale   | bc1 – bc6     | 6 items measuring burnout tendencies resulting from interacting with customers; 6 point scale; <br>1=very much unlike me, 6=very much like me.<br>BC1 and BC2 measure|
| BURNM     | (burnout-management)                    | Scale   | bm1 – bm6     | 6 items measuring burnout tendencies resulting from interacting with company management; 6 point scale; <br>1=very much unlike me, 6=very much like me.<br> BM3 and BM4 measure Reduced Personal Accomplishment (RPA) |
| LRN       | (learning orientation)                  | Scale   | l1 – l3       | 3 items measuring disposition toward learning from challenging tasks 5 point scale; 1=never do this, 5=always do this. |
| RD        | (resource-demand)                       | Scale   | rd1 – rd4     | 4 items measuring the frequency of resource-demand gap.<br>5 point scale; 1=never, 5=always. |
| WU        | (work uncertainty)                      | Scale   | ra1 – ra2     | 2 items measuring the frequency of role ambiguity <br>5 point scale; 1=never, 5=always. |
| RC        | (role conflict)                         | Scale   | rc1 – rc3     | 3 items measuring the frequency of role conflict <br>5 point scale; 1=never, 5=always.  |
| WF        | (work-family conflict)                  | Scale   | wf1 – wf2     | 5 point scale; 1=never, 5=always.<br>4 items measuring the frequency of customer rejections. |
| CR        | (customer rejection)                    | Scale   | cr1 – cr4     | 4 items measuring the frequency of customer rejections. <br>5 point scale; 1=never, 5=always. |
| ETHC      | (ethical concerns)                      | Scale   | ec1 – ec5     | 5 point scale; 1=never, 5=always.<br>2 items measuring the frequency of top management unfairness. |
| MU        | (management unfairness)                 | Scale   | mu1 – mu2     | 5 point scale; 1=never, 5=always.<br>4 items measuring the frequency of lack of task control. |
| LC        | (lack of control)                       | Scale   | lc1 – lc4     | 4 items measuring the frequency of lack of task control.<br>5 point scale; 1=never, 5=always.  |
| DE        | (dead end job)                          | Scale   | de1 – de2     | 2 items measuring the frequency of lack of opportunities.<br>5 point scale; 1=never, 5=always. |
| UC        | (unsupportive coworkers)                | Scale   | uc1 – uc3     | 3 items measuring frequency of unsupportive coworkers.<br>5 point scale; 1=never, 5=always.  |
| UB        | (unsupportive boss)                     | Scale   | ub1 – ub4     | 4 items measuring the frequency of unsupportive boss.<br>5 point scale; 1=never, 5=always. |
| AP        | (apathy)                                | Scale   | ap1 – ap3     | 3 items measuring disposition of apathy toward stressful tasks;<br>5 point scale; 1=never do this, 5=always do this. |
| FEED      | (feedback)                              | Scale   | f1 – f4       | 4 item measuring the amount of feedback obtained at work<br>5 point scale; 1=strongly disagree, 5=strongly agree.  |
| PART      | (participation)                         | Scale   | pp1 – pp4     | 4 items measuring the frequency of participation in various decisions;<br>5 point scale; 1=strongly disagree, 5=strongly agree. |
| AUT       | (autonomy)                              | Scale   | a1 – a3       | 3 items measuring the amount of freedom and independence at work;<br>5 point scale; 1=strongly disagree, 5=strongly agree. |
| SDRS      | (Social Desirability Reliability Scale) | Scale   | SDRS1 - SDRS5 | 5 items measuring idealized interpersonal behaviors on 5-point scale<br>1= Definitely True, 2 = Mostly True, 3= Don’t Know, 4= Mostly False,5=Definitely False<br>SDRS1 I am always courteous, even to people who are disagreeable.<br>SDRS2 There have been occasions when I took advantage of someone.<br>SDRS3 I sometimes try to get even rather than forgive and forget.<br>SDRS4 I sometimes feel resentful when I don't get my way.<br>SDRS5 No matter who I'm talking to, I'm always a good listener.<br>Hays, R. D., Hayashi, T., & Stewart, A. L. 1989. A five-item measure of socially desirable response set. Educational and psychological measurement, 49(3): 629-636. |
| AGE       | (age)                                   | Scale   | AGE           | In years |
| GENDER    | (gender)                                | Nominal | GENDER        | 1=male; 2=female. |
| MARITAL   | (marital status)                        | Nominal | MARITAL       | 1=married, 2=divorced, 3=widowed, 4=single, 5=living  |
| PEOPLE    | (people in household)                   | Scale   | PEOPLE        | Numerical value |
| YRSJOB    | (years in current job)                  | Scale   | YRSJOB        | Numerical value in years |
| CUSINTER  | (customer interaction)                  | Scale   | CUSINTER      | Number of customers handled per day |
| YRSFIRM   | (years in the firm)                     | Scale   | YRSFIRM       | Numerical value in years |
| EDUC      | (education)                             | Ordinal | EDUC          | 1=high school, 2=1-3 years of college...5=masters |
| INCOME    | (income)                                | Ordinal | INCOME        | 1=<$9999, 2=$10,000--$19,999... 6=>$50,000 |
| CATEGORY  | (collectors vs. service employees)      | Nominal | CATEGORY      | 0 = Customer Service (CSR); 1 = Bill Collectors (BCR) |
| ID        | ID                                      | Ordinal | ID            | Four Digit Respondent Identification |
