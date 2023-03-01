# MPLUS Data and Starter Templates

## Overview

If you've found this page, two things likely have occurred:

1. You're a doctorate / PhD student at Case Western Reserve University and you're working with these data sets.
2. You're following [Dr. James Gaskin's](https://statwiki.gaskination.com/index.php?title=Main_Page) SEM or other videos on [YouTube](https://www.youtube.com/@Gaskination)

## Why this repo?

That would be because:

1. The version management of these files is non-existent
2. There are too many versions being passed around that bust your analysis when you have a bad or malformed version (and MPLUS will not tell you that)
3. There is absolutely no good starting MPLUS inp template for any of these data files
4. If you even so much as miss a NAME position, your analysis will be wrong

## Do you like MPLUS?

No. It has no language server, no intellisense, and it has limited error output even for the most basic syntactic errors.

And don't even get me started on it's terrible output formatting. Archaic in not a good way.

For a sample of how I run MPlus through VS Code, see [How I use MPlus via Visual Studio Code, Doctorate Cohort Edition](https://www.youtube.com/watch?v=nPrrq7ayWnk).

## Can you make it better?

I'm working on a language server, but in the mean time if you're using Visual Studio Code you can do two things:

1. Install the code highlighter and then rely on the default file intellisense (which will at least do some variable checking, but it's raw) [language-mplus](https://marketplace.visualstudio.com/items?itemName=pacbard.language-mplus).
2. Use the .vscode/tasks.json to run MPLUS files on the CLI (which is limited, but does allow you to work faster).
3. When in doubt if you're really in a bind, just use [R and the MPLUSAutomation](https://cran.r-project.org/web/packages/MplusAutomation/index.html) which is outside the scope of this repo (but does work). I have added a sample bash script and Rscript that show a simple use case one might use it for (iterating on model fit).
