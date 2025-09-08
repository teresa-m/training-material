---
layout: tutorial_hands_on

title: Introduction to Digital Humanities in Galaxy
level: Introductory
draft: true
zenodo_link: 'https://doi.org/10.5281/zenodo.17053220'
questions:
  - How to get started in Galaxy for text-related tasks?  
objectives:
  - Log in to Galaxy
  - Upload files to the platform
  - Use tools within Galaxy
  - Clean and prepare text data
  - Compare two texts
  - Visualize your results
time_estimation: 1H
key_points:
  - Galaxy has many tools for text analysis that you can adapt for your needs.
tags:
- text mining
contributions:
  authorship:
    - Sch-Da
    - RZ9082
  funding:
    - deKCD
---

<!-- This is a comment. -->

Loosely building on {% cite Richardson2003 %}, this tutorial compares two editions of the poem "The Sorrows of Yamba".[^1]
The first couple of steps in this tutorial derive from [A short introduction to Galaxy]({% link topics/introduction/tutorials/galaxy-intro-short/tutorial.html %}).

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

# Get started in Galaxy

## Create an account on Galaxy
To use Galaxy's full potential, you need to register and create an account. You can skip this step if you already have a Galaxy account.

{% snippet faqs/galaxy/account_create.md %}

Alternatively, you can log in using a single sign-on of your choice, for example, from [IAM4NFDI](https://iam.services.base4nfdi.de/faq_ENG/) on [Galaxy Europe](https://usegalaxy.eu/).

 ![Screenshot of Galaxy Europe register window with the IAM4NFDI login button highlighted](../../images/iam4nfdi.png)

## Log in to Galaxy

<!-- to do adapt screenshot / upload / make suitable 4 Europe -->

> <hands-on-title>Log in to Galaxy</hands-on-title>
> 1. Open your favourite browser (Chrome, Safari, Edge or Firefox as your browser, not Internet Explorer!)
> 2. Browse to your Galaxy instance, for example [Galaxy Europe](https://usegalaxy.eu/)
> 3. Log in with your credentials
>  
> ![Screenshot of Galaxy Australia with the register or login button highlighted]({% link topics/introduction/images/galaxy-login.png %})
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
* The Activity Bar on the left: _This is where you will navigate to the resources in Galaxy (Tools {% icon tool %}, Workflows {% icon galaxy-workflows-activity %}, Histories {% icon galaxy-history-storage-choice %}, etc.)_
* Currently active "Activity Panel" on the left: _By default, the {% icon tool %} **Tools** activity will be active and its panel will be expanded_
* Viewing panel in the middle: _The main area for context for your analysis_
* History of analysis and files on the right: _Shows your "current" history; i.e.: Where any new files for your analysis will be stored_

![Screenshot of the Galaxy interface with aforementioned structure]({% link topics/introduction/images/galaxy_interface.png %})

The first time you use Galaxy, your history panel is empty.

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
>    ![upload data button shown in the galaxy interface]({% link topics/introduction/images/upload-data.png %})
>
>    This brings up a box:
>
>    ![the complicated galaxy upload dialogue, the 'regular' tab is active with a large textarea to paste subsequent URL]({% link topics/introduction/images/upload-box.png %})
>
> 3. Click **Paste/Fetch data**
> 4. Paste in the address of both files in the Zenodo folder:
>    ```
>    https://zenodo.org/records/17053220/files/SoY_Cheap_Repo_Source.txt
>    https://zenodo.org/records/17053220/files/SoY_Univ_Mag_Source.txt
>    ```
>
> 5. Click **Start**
> 6. Click **Close**
>
> 
> One usegalaxy.eu, you can alternatively access Zenodo directly from within Galaxy:
>
> 1. At the top of the **Activity Bar**, click the {% icon galaxy-upload %} **Upload** activity
> 2. Click on the bottom of the newly opened window on **Choose from repository**.
> 3. Enter **"Zenodo"** in the search bar and click on the folder **"Zenodo"**.
> 4. Enter **Training material for Galaxy tutorial "Introduction to Digital Humanities in Galaxy"** in the search bar and select the items.
> 7. Click **Select**
> 8. Click **Start**
> 9. Click **Close**
{: .hands_on}


Your uploaded file is now in your current history.
When the file has been uploaded to Galaxy, it will turn green.

> <comment-title></comment-title>
> After this, you will see your first history item (called a "dataset") in Galaxy's right panel. It will go through
> the grey (preparing/queued) and yellow (running) states to become green (success).
>
{: .comment}

The contents of the file will be displayed in the central Galaxy panel. If the dataset is large, you will see a warning message which explains that only the first megabyte is shown.

> <hands-on-title>View the text files content</hands-on-title>
> 1. Click the {% icon galaxy-eye %} (eye) icon next to the dataset name, to look at the file content
> 
>    ![galaxy history view showing a single dataset mutant_r1.fastq. Display link is being hovered.](../../images/eye-icon.png){:width="520px"}
>
> 2. Check the datatype - is it **txt**? Then you are all set. Otherwise, adapt the datatype.
>
>    {% snippet faqs/galaxy/datasets_change_datatype.md datatype="datatypes" %}
>
> 3. Add to each database a tag corresponding to the file's origin.
>    One saying "#cheap" for the file from the cheap repository (SoY_Cheap_Repo_Source.txt) and the other one "#universal" for the second one ( SoY_Univ_Mag_Source.txt) with the hashtag but without the quotation marks. 
>
>    {% snippet faqs/galaxy/datasets_add_tag.md %}
>
{: .hands_on}


What are those files?

You can see two text files; they are two versions of the poem "The Sorrows of Yamba". 
The file "SoY_Cheap_Repo_Source.txt" is a poem version of Sorrows of Yamba, which was published in the [Cheap Repository](https://archive.org/details/McGillLibrary-PN970_C52_no_42a-1732).
The file "SoY_Univ_Mag_Source.txt" is another version of the poem, first published in the Universal Magazine in 1797. 

Both files start with "Text adapted from:" and two different hyperlinks. The second paragraph for both texts starts with "the sorrows of yamba" - but the files continue differently. While one gives the year, the other is immediately followed by more text.  
Both texts are already pre-cleaned and are completely in lower case, but still contain punctuation.

It is obvious that the texts have similarities, but they are not identical. Now comes the fun part: Using Galaxy to compare your files. To do that, we first need to clean both files.

# Clean your Texts

## Delete the Hyperlink


When looking at the two datasets, you will notice they still contain the hyperlink from their source. 
As this is metadata and not the text we want to compare, we delete it at the beginning of both files.


> <hands-on-title> Delete Hyperlink in Text One </hands-on-title>
>
> 1. Click on **Tools** {% icon tool %} in the left panel
> 2. Search for {% tool [Remove beginning](Remove beginning1) %} and pass the following parameters:
>    - {% icon param-file %} *"from"*: `1: SoY_Cheap_Repo_Source.txt`
> 3. Click on **Run Tool** {% icon workflow-run %}
>
>    > <comment-title> What does this tool do? </comment-title>
>    >
>    > Remove beginning deletes a selected number of lines from your file. In this case, removing the first line is enough.
>    {: .comment}
>
{: .hands_on}

When the job is finished and appears green in your history, click on its name. 

> <question-title></question-title>
>
> 1. Check how many lines the file now contains?
> 2. How does this differ from the original file you uploaded?
>
> > <solution-title></solution-title>
> >
> > 1. The file now contains only one line. 
> > 2. The originally uploaded text contained two lines. You removed one with this step.
> >
> {: .solution}
>
{: .question}

As a result, only the text of the poem remains, while the source was removed for text one.
Galaxy names the files after the task used to create that step. While this can be helpful, we change the name to a clearer filename.

{% snippet faqs/galaxy/datasets_rename.md %}

Change the name of the output of this tool, which removed the beginning of `SoY_Cheap_Repo_Source.txt` to `SoY_Cheap_Repo.txt`

We also use this tool on the second file.


> <hands-on-title> Delete Hyperlink in Text Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Remove beginning](Remove beginning1) %} with the following parameters:
>    - {% icon param-file %} *"from"*: `2: SoY_Univ_Mag_Source.txt`
>
> {% snippet faqs/galaxy/tools_rerun.md %}
{: .hands_on}

Once it is finished, rename this file to `SoY_Univ_Mag.txt`. 

Click on the finished dataset that just appeared in your history. Check that it starts with the poem text and that the hyperlink is removed.
To be able to quickly see which version of the poems we have, we rename both datasets with clearer names and add tags based on the text origin.
The hashtag propagates the tags, so all further outputs from this dataset contain the same hashtag, making it much easier to identify what text we are currently working with.


Depending on how detailed you want to compare your texts, we suggest unifying them even further. In the next step, we therefore remove all the punctuation with one command. 


## Remove punctuation

Regular Expressions (RegEx) allow you to search for particular patterns in your text. They can be a huge help if you want to extract or remove them with minimal work. In our two poems, the punctuation is not unified, and therefore, we want to remove it from both using RegEx. If comparing the punctuation of texts is also relevant to you, you can skip this step.

> <hands-on-title> Remove Punctuation in Poem One </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `3: Remove beginning on data 1`
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `[[:punct:]]`
>
>    > <comment-title> Regular Expressions </comment-title>
>    >
>    > <!-- Todo: add regular expressions FAQ -->
>    {: .comment}
>
{: .hands_on}

And we repeat the same for the second text. Remember to use the redo button if you want to save some time.

Also in text two, we search for the pattern `[[:punct:]]` and omit a replacement, meaning that all punctuation marks will be deleted.

> <hands-on-title> Remove Punctuation in Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `4: Remove beginning on data 2`
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `[[:punct:]]`
>
{: .hands_on}

To get an idea, how the two cleaned texts compare to each other, we check out their metadata.

# Different ways to compare the texts

## Compare Quantitatively

The tool {% tool [Line/Word/Character count](wc_gnu) %} allows us to get a quick overview of a text. We want to see if the cleaned versions are really that different from each other.

> <hands-on-title> Count the Characters of Poem One </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Line/Word/Character count](wc_gnu) %} with the following parameters:
>    - {% icon param-file %} *"Text file"*: `5: Replace Text on data 3`
>
{: .hands_on}

If you click on the eye {% icon galaxy-eye %} symbol, once the dataset has finished running and appears green, you can see how many lines, words and characters the text consists of.
And again, we run {% icon workflow-run %} the tool on the second poem.

> <hands-on-title> Count the Characters of Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Line/Word/Character count](wc_gnu) %} with the following parameters:
>    - {% icon param-file %} *"Text file"*: `6: Replace Text on data 4`
>
{: .hands_on}

> <question-title>How do the texts compare</question-title>
>
> 1. How many lines do the poems have?
> 2. Which of the two texts contains more words, and how many?
>
> > <solution-title></solution-title>
> >
> > 1. Both texts consist of only two lines. 
> > 2. The poem version from the cheap repository is longer, containing 1139 words, more than double the amount of the second poem.
> >
> {: .solution}
>
{: .question}

The differences between the two texts are quantifiable, but do these also affect the content? 

## Compare Visually

A picture says more than 1000 words! Accordingly, we want to get closer to the actual content of both texts. Particularly for larger corpora, a word cloud can be a nice way to get a first idea, what a text is about.

> <hands-on-title> Visualise the Content of Poem One </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Generate a word cloud](toolshed.g2.bx.psu.edu/repos/bgruening/wordcloud/wordcloud/1.9.4+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Input file"*: `5: Replace Text on data 3` (output of **Replace Text** {% icon tool %})
>    - *"Do you want to select a special font?"*: `Use the default DroidSansMono font`
>    - *"Color option"*: `Color`
>    - *"Scaling of words by frequency (0 - 1)"*: `0.8`
>
>    > <comment-title> Adapting the Word Cloud </comment-title>
>    >
>    > The word cloud has many different features. You can upload a stop word list that should be excluded from the visualisation, or play around with other parameters like the text size. Rerun {%icon dataset-rerun %} the tool with some changed parameters and see what happens.
>    {: .comment}
>
{: .hands_on}

We also rerun {%icon dataset-rerun %} the word cloud with the second poem.

The word cloud for the second text is created the same way. For better comparability, we suggest rerunning the tool with the second text but the same parameters you used for creating the first word cloud image. That makes both comparable.

> <hands-on-title> Visualise the Content of Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Generate a word cloud](toolshed.g2.bx.psu.edu/repos/bgruening/wordcloud/wordcloud/1.9.4+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Input file"*: `6: Replace Text on data 4` (output of **Replace Text** {% icon tool %})
>    - *"Do you want to select a special font?"*: `Use the default DroidSansMono font`
>    - *"Color option"*: `Color`
>    - *"Scaling of words by frequency (0 - 1)"*: `0.8`
>
>    > <comment-title> Uniqueness of the Word Cloud </comment-title>
>    >
>    > The word cloud from this tool looks a little different each time you run it. The layout might therefore vary even when you are redoing it with the exact same texts and inputs.
>    {: .comment}
>
{: .hands_on}

Comparing items from your history is easiest when enabling the window manager and seeing both images side by side.
<!-- to do: check if FAQ for enabling window manager exists-->

> <question-title></question-title>
>
> 1. What is the most prominent word in each of the clouds?
> 2. How do the Word Clouds for Poem One and Poem Two compare?
>
> > <solution-title></solution-title>
> >
> > 1. The most prominent word in the word cloud created from the cheap repository is "yamba", while the one from the universal text is "death".
> > 2. The word cloud from the cheap repository has four different words that appear most prominent and are much bigger - and therefore more frequent in the text. They are "yamba", "now", "death" and "ye". The most prominent words in the universal text are "death", "yamba" and "africs". They appear a bit smaller than the words from the cheap repository, suggesting a lower frequency.
> >
> > ![Word Cloud of Cheap Repository Version](../../images/wc_cheap.png "Word Cloud of Cheap Repository Version")
> > ![Word Cloud of Universal Text Version](../../images/wc_universal.png "Word Cloud of Universal Text Version")
> {: .solution}
>
{: .question}

You can disable the window manager again by clicking on the item, then you will see your datasets again in your middle panel, once you click on its eye {% icon galaxy-eye %} symbol.

The visualisation suggests that not only the text's metrics, which we checked with the line and character count, but also their messages differ. The cheap repository text addresses the reader with multiple mentions of "ye", you, which is rare in the second poem. In the universal poem, death is more central than yamba, which is the other way around in the cheap repository text.

With this text's length and just two poems, this is, of course, something you can find out by reading both texts. But particularly with bigger corpora, this distant reading approach can give you important preliminary insights to guide your close reading.

Of course, the word cloud insights are just a first glance and do not allow a proper analysis; for that, we need to properly compare both texts. But what is a good way to do this? We suggest comparing them side by side and line by line. For that, we adapt the layout once more.


## Replace spaces with line breaks to prepare side-by-side comparison

We used the tool to replace text before. Now, we are not deleting something, as we did with the punctuation, but we are replacing some characters. To get a convenient layout that shows one word per line, we replace the spaces (\s) with line breaks (\n). That way, each word gets shown in a different line, which prepares the detailed comparison in the next step.

Regular Expressions help again by changing all spaces with line breaks with just one command.


> <hands-on-title> Changing Layout of Poem One </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `5: Replace Text on data 3`
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `\s`
>            - *"Replace with:"*: `\n`
>
>
>    > <comment-title> How do I know what the RegEx commands are? </comment-title>
>    >
>    > Don't worry, if you have never used any regular expressions. There are several websites to help you find out what patterns to detect and how to catch the passages you need. For now, you can just add the symbols that stand for the space (\s) and the line break (\n). But you can find out more here:
>    {: .comment}
>
{: .hands_on}

<!-- to do Add Regex help -->

When you click on the eye {% icon galaxy-eye %} icon of the data set in the history now, when the dataset turns green, you can see that it now contains one word per line. To match this, we repeat the step with the same parameters also on the second poem. 


> <hands-on-title> Changing Layout of Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace Text](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_replace_in_line/9.5+galaxy0) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `6: Replace Text on data 4`
>    - In *"Replacement"*:
>        - {% icon param-repeat %} *"Insert Replacement"*
>            - *"Find pattern"*: `\s`
>            - *"Replace with:"*: `\n`
>
{: .hands_on}


> <question-title></question-title>
>
> 1. How many lines long are the poems now?
>
> > <solution-title>  </solution-title>
> >
> > 1. When you click on the two names of the two new datasets that you just worked on, you see that one is now 539, the other 1139 lines long. The number of lines now matches the word number we detected with the tool `Line/Word/Character count`.
> >
> {: .solution}
>
{: .question}

Now, both poems show one word per line, the perfect setup to compare them side by side. Use a tool called `diff` to visualise this.


## Compare side-by-side with **diff**

> <hands-on-title> Compare the Poems </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [diff](toolshed.g2.bx.psu.edu/repos/bgruening/diff/diff/3.10+galaxy1) %} with the following parameters:
>    - {% icon param-file %} *"First input file"*: `11: Replace Text on data 5`
>    - {% icon param-file %} *"Second input file"*: `12: Replace Text on data 6`
>    - *"Choose a report format"*: `Generates an HTML report to visualize the differences`
>    - *"Choose report output format"*: `Side by side`
>
>    > <comment-title> Different Report Formats </comment-title>
>    >
>    > The `diff` tool allows you to create different outputs, depending on what you want to achieve. In this case, the HTML report contains colours to highlight the changes between both texts, which makes it really useful for researchers to quickly identify. If you want to extract information automatically, the option `text file, side by side` could also be helpful.
>    {: .comment}
>
{: .hands_on}

We get two new files as a result. The HTML report and the raw output it is based on, in txt format.

> <question-title></question-title>
>
> 1. What is the first difference between the two texts visualised in the HTML report?
>
> > <solution-title></solution-title>
> >
> > 1. Lines 6-40 of one poem are marked in red. They are not part of the second poem. The couple of lines before and after are identical.
> >
> {: .solution}
>
{: .question}

In the HTML report, you can quickly identify deletions (in red) and additions (in green) between both texts.
You can also see smaller details, which you might quickly miss manually. Lines 63/64 and 28/29, respectively, show that also changes within one word (prisoner / prisner) are detected. You can furthermore see how the perspective was changed between the poems. While line 359-361 in the cheap repository text states "they sell us", the other text states "they sell them" (l. 298-300), suggesting the reader is (no longer) among the group which is sold. You can go through it and detect further changes in language and length.

Seeing this, you might want to go into detail with the respective themes once more. As "death" was central in both texts, we will extract sentences containing this word so you can analyse them more closely. For this, the cleaned texts without punctuation and one word per line are not the easiest form. Instead, we use an earlier version from our history.

# Extract Specific Sentences

## Breaking text into sentences

We return to Regular Expressions a third time, but this time to use a different tool. This one does not go through the text line by line, but also has further functionalities. We use it to divide the text into more lines, to make it easier to extract those containing the word "death." Here, punctuation is a helpful stop point. We use full stops to indicate a sentence, which will not be perfectly accurate but will be sufficient for this case. We then add a line break after the full stops to get full sentences. Of course, you could spend more time on this and make it neater.

<!--to add adapt what the remove beginning file is called -->

> <hands-on-title> Rearrange Poem One </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_find_and_replace/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `3: Remove beginning on data 1`
>    - In *"Find and Replace"*:
>        - {% icon param-repeat %} *"Insert Find and Replace"*
>            - *"Find pattern"*: `\.`
>            - *"Replace with"*: `\.\n`
>            - *"Find-Pattern is a regular expression"*: `Yes`
>            - *"Replace all occurences of the pattern"*: `Yes`
>            - *"Find and Replace text in"*: `entire line`
>
>    > <comment-title> What do those inputs mean? </comment-title>
>    >
>    > A full stop (.) has its own meaning in regular expressions. It stands for all elements. To show, we do not mean all characters but actually a full stop, we need to escape it in RegEx by putting `\.` instead of `.` if we mean a full stop. We want to add a line break afterwards, which we already learned is indicated as `\n`. The replacement pattern, therefore, is `\.\n`.
>    {: .comment}
>
{: .hands_on}

When you have finished this step, remember to redo it for the second poem.

> <hands-on-title> Rearrange Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Replace](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_find_and_replace/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"File to process"*: `4: Remove beginning on data 2`
>    - In *"Find and Replace"*:
>        - {% icon param-repeat %} *"Insert Find and Replace"*
>            - *"Find pattern"*: `\.`
>            - *"Replace with"*: `\.\n`
>            - *"Find-Pattern is a regular expression"*: `Yes`
>            - *"Replace all occurences of the pattern"*: `Yes`
>            - *"Find and Replace text in"*: `entire line`
>
{: .hands_on}

As a result, you get two files, each split at full stops. And how can you now extract the sentences relevant to you?


## Extract sentences containing 'death'

Use {% tool [Search in textfiles](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_grep_tool/9.5+galaxy2) %} to select all lines containing the word "death".

> <hands-on-title> Extract particular sentences </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Search in textfiles](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_grep_tool/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Select lines from"*: `15: Replace on data 3`
>    - *"Regular Expression"*: `death`
>
>    > <comment-title> Further Functionalities </comment-title>
>    >
>    > You can see that the tool has many parameters you can tweak. The ones which are not mentioned here are kept at the default input, like `Match` and `Perl`, the kind of RegEx applied. But you could also choose to select all lines that do not contain death by selecting `Do not match` or extract also lines before or after the line containing the content you chose.
>    {: .comment}
>
{: .hands_on}

And for the last time, we redo this step also for the second poem.

> <hands-on-title> Extract particular sentences from Poem Two </hands-on-title>
>
> 1. Run {% icon workflow-run %} {% tool [Search in textfiles](toolshed.g2.bx.psu.edu/repos/bgruening/text_processing/tp_grep_tool/9.5+galaxy2) %} with the following parameters:
>    - {% icon param-file %} *"Select lines from"*: `16: Replace on data 4`
>    - *"Regular Expression"*: `death`
>
{: .hands_on}

When you enable the window manager at the top bar, you can click on the eye {% icon galaxy-eye %} symbols of your last two outputs and visualise them side by side in two different windows. Six and seven lines from the poem contain the term, respectively. You could analyse them in detail now to see where they differ. While the first lines are nearly identical, the last ones are completely different in both versions of the poem. An intriguing insight for further analysis. No wonder the poems and their many editions have sparked the interest of many researchers.

If you only analyse those two poems, you might find it easier to just do those steps manually. But particularly, if you create a workflow out of this, you will be able to reproduce this process with only a couple of clicks, and it will save you a huge amount of work. 

Learn how to [extract a workflow from the above analysis]({% link topics/galaxy-interface/tutorials/history-to-workflow/tutorial.html %}). 

Alternatively, you can make your analysis more complex and extract further differences between the poems automatically to adapt the above analysis. For inspiration, check out 
the [advanced tutorial on Text-Mining]({% link topics/digital-humanities/tutorials/text_mining_chinese/tutorial.html %}).

# Conclusion

Congratulations! You just finished your first analysis with Galaxy, well done! In the tutorial, we covered the basic setup of Galaxy, how you can register, log in and upload your material. You are now familiar with particular terms in Galaxy, like history, dataset, tool and so on. We used several tools, learned to rerun them and how we can see the outputs in different ways. We used various versions of Regular Expressions to rearrange and clean your text. We also reshaped the text to compare it with the `diff` tool. In the end, we extracted notable sentences for further close reading. 
The workflow created from this history would look as follows:

 ![Screenshot of Workflow extracted from the Tutorial Introduction to DH](../../images/WF_Intro_to_DH.png)

With all this knowledge in mind, you can now continue with one of our other tutorials or start to experiment with your own input. Enjoy!


[^1]: Thanks to Lilli Fortmeier for suggesting this use case!
