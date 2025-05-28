---
layout: tutorial_hands_on
title: Creation of a Galaxy tutorial table for your community
level: Introductory
redirect_from:
- /topics/dev/tutorials/community-tutorial-table/tutorial
subtopic: sig

questions:
- Is it possible to have an overview of all Galaxy tutorials for a specific scientific domain?
objectives:
- Create a community reviewed table for Galaxy tutorials within a specific scientific domain
- Embed the tutorial table in a community page
time_estimation: 1H
key_points:
- The Galaxy Codex extracts all Galaxy tutorials to create tables
- The community interactive Galaxy tutorials table can be embed into any website
tags:
- Community
- SIG
contributions:
  authorship:
    - bebatut
    - paulzierep
    - scorreard

---

Similarly to the numerous tools available on Galaxy, the [Galaxy Training Network](https://training.galaxyproject.org/) includes numerous tutorials. This tutorail will take you through the steps to display the most relevant tutorials on your community codex page.

The pipeline creates table with all the tutorials. This table can be **filtered to only include tutorials that are relevant to a specific research community**.

The generated community-specific table can be used as it and/or embedded, e.g. into the respective Galaxy Hub page or Galaxy subdomain.

The pipeline is **fully automated** and executes on a **weekly** basis. Any research community can apply the pipeline to create a table specific to their community.

The aim is this tutorial is to create a tutorial table for a community.

> <agenda-title></agenda-title>
>
> In this tutorial, we will cover:
>
> 1. TOC
> {:toc}
>
{: .agenda}

# Add your community to the Galaxy CoDex

You first need to check if your Community is in the [Galaxy CoDex](https://github.com/galaxyproject/galaxy_codex/tree/main/communities), a central resource for Galaxy communities.
If the community is already there, you can move to the next tutorial of the learning pathway to include tools, tutorials and workflows.

If you community is not already included, follow this tutorial :
> <hands-on-title>Add your community to the Galaxy CoDex</hands-on-title>
>
> You need to create a new folder in the data/community folder within Galaxy Codex code source.
> 1. If not already done, fork the [Galaxy Codex repository](https://github.com/galaxyproject/galaxy_codex)
> 2. Go to the `communities` folder
> 3. Click on **Add file** in the drop-down menu at the top
> 4. Select **Create a new file**
> 5. Fill in the `Name of your file` field with:  name of your community + `/metadata/`
>    This will create a folder for your community and a new folder for your community called metadata.
> 6. Click on **Commit changes**
> 7. Fill in the commit message with something like `Add X community`
> 8. Click on `Create a new branch for this commit and start a pull request`
> 9. Create the pull request by following the instructions
>
{: .hands_on}

# Pull list of tags relevant to your community

To add tutorials in your community tutorial table, you will need to indicate a list of tags relevant to your community, and tutorials associated with this tag will be automatically pulled from the [Galaxy Training Network](https://training.galaxyproject.org/). Only tutorials with the selected tags will be added to the filtered table.
You will then be able to remove tutorials that are not relevant to your community or deprecated.

> <hands-on-title>Select tutorials tags from the Galaxy Training Network</hands-on-title>
>
> 1. Go to the [Galaxy Training Network]({% link index.md %})
> 2. Browse for tutorials that are relevant to your community
> 3. Note the tags that are associated with tutorials of interest
{: .hands_on}
> <comment-title>Tips</comment-title>
> You can also create a tag (for example, your community name) and tag all relevant tutorials with it. Then, you only need to use this tag to pull all the relevant tutorials.
{: .comment}

# Add the list releavnt tags for your community in the tutorial_tags file

> <hands-on-title>Add the relevant tags to the tutorial_tags file</hands-on-title>
> 1. Create a file named `tutorial_tags` in your comunity metadata folder (`communities/<your community>/metadata` created previously)
> 2. Add the name of the tags relevant to your community in the `tutorial_tags` file you started above, with 1 tag per row
>
>    For example:
>    ```
>    Assembly
>    Metagenomics
>    ```
{: .hands_on}

Once you have a list of the tags that you wish to keep, you can submit this to Galaxy Codex.

> <hands-on-title>Submit the new list of tags to Galaxy Codex</hands-on-title>
>
> 1. Click on **Commit changes** at the top
> 2. Fill in the commit message with something like `Add tutorials tags for my community`
> 3. Click on `Create a new branch for this commit and start a pull request`
> 4. Create the pull request by following the instructions
{: .hands_on}

The Pull Request will be reviewed. Make sure to respond to any feedback.

Once the Pull Request is merged, a table with all tutorial will be created in `communities/<your community>/resources/tutorials.tsv`

# Embed the table in your community page on the Hub

The table you have created can be embedded in your community page on the Hub, e.g. [microGalaxy](https://galaxyproject.org/community/sig/microbial/#workflows-and-tutorials).

> <hands-on-title>Embed your table</hands-on-title>
>
> 1.  If not already done, fork the repository [Galaxy Hub](https://github.com/galaxyproject/galaxy-hub)
> 2. Open or create your community page: `content/community/sig/<your community>/index.md`
> 3. TO DO : We Will soon update this section to explain how to include the table, sorry for the inconvenience. 
> 4. Submit the changes
> 5. Wait for the Pull Request to be merged
{: .hands_on}

# Conclusion

You now have a table with tutorials available for your community, and this table is embedded in a community page.
