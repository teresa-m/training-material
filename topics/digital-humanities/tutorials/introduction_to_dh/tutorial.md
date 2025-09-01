---
layout: tutorial_hands_on

title: Introduction to Digital Humanities in Galaxy
level: Introductory
draft: true
zenodo_link: ''
questions:
  - How to get started in Galaxy for text-related tasks?  
objectives:
  - Learn how to log in to Galaxy
  - Learn how to upload a file
  - Learn how to use a tool
  - Learn how to clean your text
  - Learn how to compare two texts automatically
  - Learn how to make a visualisation
time_estimation: 1H
key_points:
  - Galaxy has many tools for text analysis that you can adapt for your needs.
tags:
- text mining
contributions:
  authorship:
    - Sch-Da
  funding:
    - deKCD
---

<!-- This is a comment. -->

Loosely building on {% cite Richardson2003 %},[^1] this tutorial compares two editions of the poem "The Sorrows of Yamba".
The first couple of steps in this tutorial derive from {% Syme2025GalaxyIntro %}.

"The Sorrows of Yamba" was published in 1795 and was among the most popular antislavery poems at the time. However, the version published by Hannah More in the Cheap Repository Tracts series was not the only version of the poem that circulated. Also, Moore's authorship on the topic is not uncontested. {% cite Richardson2003 %} But while we leave this debate to the experts, the different versions of the poem offer a great opportunity to delve into how digital tools can help us compare texts more quickly. And this, we will do in the following tutorial.

While Richardson compared the poems by hand, we use his example to introduce how Galaxy can help you with your text analysis.
From logging in, uploading the texts, to using the first tools, this tutorial covers the Galaxy basics.
We will clean the two poem versions and check the texts from a distance by comparing their number of lines and characters and visualising both in a word cloud. 
Then, we take a closer look. For an easier comparison, we reformat both texts and compare them line by line and side by side. As the word cloud shows, "death" is a dominant theme in the first poem, so we extract all lines including "death" for further in-depth analysis. This helps us get a better idea of where those articles differ and is applicable to many other texts you might want to compare.

> <agenda-title></agenda-title>
>
> In this tutorial, we will cover:
>
> 1. TOC
> {:toc}
>
{: .agenda}

# Hands-on Sections

## Create an account on Galaxy
To use Galaxy's full potential, you need to register and create an account. You can skip this step if you already have a Galaxy account.

{% snippet faqs/galaxy/account_create.md %}

Alternatively, you can log in using a single sign-on of your choice, for example, from [IAM4NFDI](https://iam.services.base4nfdi.de/faq_ENG/) on [Galaxy Europe](https://usegalaxy.eu/).

 ![Screenshot of Galaxy Europe register window with the IAM4NFDI login button highlighted](../../images/iam4nfdi.png)

## Log in to Galaxy
<to do adapt screenshot / upload / make suitable 4 Europe>
> <hands-on-title>Log in to Galaxy</hands-on-title>
> 1. Open your favourite browser (Chrome, Safari, Edge or Firefox as your browser, not Internet Explorer!)
> 2. Browse to your Galaxy instance, for example [Galaxy Europe](https://usegalaxy.eu/)
> 3. Log in with your credentials
>  
> ![Screenshot of Galaxy Australia with the register or login button highlighted](../../images/galaxy-login.png)
>
>   > <comment-title>Different Galaxy servers</comment-title>
>   >  This is an image of Galaxy Australia, located at [usegalaxy.org.au](https://usegalaxy.org.au/)
>   >
>   > The particular Galaxy server that you are using may look slightly different and have a different web address.
>   >
>   > You can also find more possible Galaxy servers at the top of this tutorial in **Available on these Galaxies**
>   {: .comment}
{: .hands_on}

The Galaxy homepage is divided into four sections (panels):
* The Activity Bar on the left: _This is where you will navigate to the resources in Galaxy (Tools, Workflows, Histories, etc.)_
* Currently active "Activity Panel" on the left: _By default, the {% icon tool %} **Tools** activity will be active and its panel will be expanded_
* Viewing panel in the middle: _The main area for context for your analysis_
* History of analysis and files on the right: _Shows your "current" history; i.e.: Where any new files for your analysis will be stored_

![Screenshot of the Galaxy interface with aforementioned structure](../../images/galaxy_interface.png)

The first time you use Galaxy, your history panel is empty.

# Key Galaxy actions

## Name your current history

Your "History" is in the panel at the right. It is a record of the actions you have taken.

> <hands-on-title>Name history</hands-on-title>
> 1. Go to the **History** panel (on the right)
> 2. Click {% icon galaxy-pencil %} (**Edit**) next to the history name (which by default is "Unnamed history")
>
>    ![Screenshot of the galaxy interface with the history name being edited, it currently reads "Unnamed history", the default value. An input box is below it.]({% link shared/images/rename_history.png %}){:width="250px"}
>
>    > <comment-title></comment-title>
>    >
>    > In some previous versions of Galaxy, you will need to click the history name to rename it as shown here:
>    > ![Screenshot of the galaxy interface with the history name being edited, it currently reads "Unnamed history", the default value.](../../../../shared/images/rename_history_old.png){:width="320px"}
>    {: .comment}
>
> 3. Type in a new name, for example, "My Analysis"
> 4. Click **Save**
>
> > <comment-title>Renaming not an option?</comment-title>
> > If renaming does not work, it is possible you aren't logged in, so try logging in to Galaxy first. Anonymous users are only permitted to have one history, and they cannot rename it.
> {: .comment}
>
{: .hands_on}

## Upload a file to Galaxy

The "Activity Bar" can be seen on the left-most part of the interface.

> <hands-on-title>Upload a file</hands-on-title>
> 1. At the top of the **Activity Bar**, click the {% icon galaxy-upload %} **Upload** activity
>
>    ![upload data button shown in the galaxy interface](../../images/upload-data.png)
>
>    This brings up a box:
>
>    ![the complicated galaxy upload dialogue, the 'regular' tab is active with a large textarea to paste subsequent URL](../../images/upload-box.png)
>
> 3. Click **Paste/Fetch data**
> 4. Paste in the address of a file:
> <Adapt to DH link>
>    ```
>    https://zenodo.org/record/582600/files/mutant_R1.fastq
>    ```
>
> 5. Click **Start**
> 6. Click **Close**
> 
> One usegalaxy.eu, you can alternatively access Zenodo directly from within Galaxy:
>
> 1. At the top of the **Activity Bar**, click the {% icon galaxy-upload %} **Upload** activity
> 2. Click on the bottom of the newly opened window on **Choose from repository**.
> 3. Enter **Zenodo** in the search bar and click on the folder **Zenodo**.
> 4. Enter **TODO UPLOAD DATA** in the search bar and select the items.
> 5. Click **Start**
> 6. Click **Close**
{: .hands_on}


Your uploaded file is now in your current history.
When the file has been uploaded to Galaxy, it will turn green.

> <comment-title></comment-title>
> After this, you will see your first history item (called a "dataset") in Galaxy's right panel. It will go through
> the grey (preparing/queued) and yellow (running) states to become green (success).
>
{: .comment}

What are those files?

> <hands-on-title>View the text files content</hands-on-title>
> 1. Click the {% icon galaxy-eye %} (eye) icon next to the dataset name, to look at the file content
>
> <Todo: update 2 current dataset>
>    ![galaxy history view showing a single dataset mutant_r1.fastq. Display link is being hovered.](../../images/eye-icon.png){:width="320px"}
>
> 2. Check the datatype
>
>    {% snippet faqs/galaxy/datasets_change_datatype.md datatype="datatypes" %}
>
> 3. Add to each database a tag corresponding to the file's origin.
>
>    {% snippet faqs/galaxy/datasets_add_tag.md %}
>
{: .hands_on}


The contents of the file will be displayed in the central Galaxy panel. If the dataset is large, you will see a warning message which explains that only the first megabyte is shown.

You can see two text files, both starting with "Text adapted from:" and two different links. The second paragraph for both texts starts with "the sorrows of yamba" - but the files continue differently. While one gives the year, the other is immediately followed by more text.
Both texts are already pre-cleaned and are completely in lower case, but still contain punctuation.
It is obvious the texts have similarities but they are not identical. Now comes the fun part: Using Galaxy to compare your files. To do that, we first need to clean both files.

## Sub-step with **Remove beginning**

When looking at the two datasets, you will notice they still contain the hyperlink from their source. 
As this is metadata and not the text we want to compare, we delete it at the beginning of both files.

<CONTINUE HERE>

> <hands-on-title> Delete Hyperlink </hands-on-title>
>
> 1. {% tool [Remove beginning](Remove beginning1) %} with the following parameters:
>    - {% icon param-file %} *"from"*: `output` (Input dataset)
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Remove beginning**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Remove beginning](Remove beginning1) %} with the following parameters:
>    - {% icon param-file %} *"from"*: `output` (Input dataset)
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Replace Text**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `out_file1` (output of **Remove beginning** {% icon tool %})
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `[[:punct:]]`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Replace Text**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `out_file1` (output of **Remove beginning** {% icon tool %})
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `[[:punct:]]`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Line/Word/Character count**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Line/Word/Character count](wc_gnu) %} with the following parameters:
>    - {% icon param-file %} *"Text file"*: `outfile` (output of **Replace Text** {% icon tool %})
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Line/Word/Character count**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Line/Word/Character count](wc_gnu) %} with the following parameters:
>    - {% icon param-file %} *"Text file"*: `outfile` (output of **Replace Text** {% icon tool %})
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Generate a word cloud**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Generate a word cloud](toolshed.g2.bx.psu.edu/repos/bgruening/wordcloud/wordcloud/1.9.4+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Input file"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - *"Do you want to select a special font?"*: `Use the default DroidSansMono font`
>    - *"Color option"*: `Color`
>    - *"Scaling of words by frequency (0 - 1)"*: `0.8`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Generate a word cloud**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Generate a word cloud](toolshed.g2.bx.psu.edu/repos/bgruening/wordcloud/wordcloud/1.9.4+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Input file"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - *"Do you want to select a special font?"*: `Use the default DroidSansMono font`
>    - *"Color option"*: `Color`
>    - *"Scaling of words by frequency (0 - 1)"*: `0.8`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Replace Text**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `\s`
>            - *"Replace with:"*: `\n`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Replace Text**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `\s`
>            - *"Replace with:"*: `\n`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **diff**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [diff](toolshed.g2.bx.psu.edu/repos/bgruening/diff/diff/3.10+galaxy1) %} with the following parameters:
>    - {% icon param-file %} *"First input file"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - {% icon param-file %} *"Second input file"*: `outfile` (output of **Replace Text** {% icon tool %})
>    - *"Choose a report format"*: `Generates an HTML report to visualize the differences`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}




## Sub-step with **Replace**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_find_and_replace/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `out_file1` (output of **Remove beginning** {% icon tool %})
>    - In *"Find and Replace"*:
>        - {% icon param-repeat %} *"Insert Find and Replace"*
>            - *"Find pattern"*: `\.`
>            - *"Replace with"*: `\.\n`
>            - *"Find-Pattern is a regular expression"*: `Yes`
>            - *"Replace all occurences of the pattern"*: `Yes`
>            - *"Find and Replace text in"*: `entire line`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Replace**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Replace](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_find_and_replace/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `out_file1` (output of **Remove beginning** {% icon tool %})
>    - In *"Find and Replace"*:
>        - {% icon param-repeat %} *"Insert Find and Replace"*
>            - *"Find pattern"*: `\.`
>            - *"Replace with"*: `\.\n`
>            - *"Find-Pattern is a regular expression"*: `Yes`
>            - *"Replace all occurences of the pattern"*: `Yes`
>            - *"Find and Replace text in"*: `entire line`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Search in textfiles**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Search in textfiles](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_grep_tool/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Select lines from"*: `outfile` (output of **Replace** {% icon tool %})
>    - *"Regular Expression"*: `death`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Sub-step with **Search in textfiles**

> <hands-on-title> Task description </hands-on-title>
>
> 1. {% tool [Search in textfiles](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_grep_tool/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Select lines from"*: `outfile` (output of **Replace** {% icon tool %})
>    - *"Regular Expression"*: `death`
>
>    ***TODO***: *Check parameter descriptions*
>
>    ***TODO***: *Consider adding a comment or tip box*
>
>    > <comment-title> short description </comment-title>
>    >
>    > A comment about the tool or something else. This box can also be in the main text
>    {: .comment}
>
{: .hands_on}

***TODO***: *Consider adding a question to test the learners understanding of the previous exercise*

> <question-title></question-title>
>
> 1. Question1?
> 2. Question2?
>
> > <solution-title></solution-title>
> >
> > 1. Answer for question1
> > 2. Answer for question2
> >
> {: .solution}
>
{: .question}

## Re-arrange

To create the template, each step of the workflow had its own subsection.

***TODO***: *Re-arrange the generated subsections into sections or other subsections.
Consider merging some hands-on boxes to have a meaningful flow of the analyses*

# Conclusion

Sum up the tutorial and the key takeaways here. We encourage adding an overview image of the
pipeline used.


[^1]: Thanks to Lilli Fortmeier for suggesting this use case!
