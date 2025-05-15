---
layout: tutorial_hands_on
title: Creation of a Galaxy workflow table for your community
level: Introductory
redirect_from:
- /topics/dev/tutorials/community-workflow-table/tutorial
subtopic: sig

questions:
- Is it possible to have an overview of all Galaxy workflows for a specific scientific domain?
objectives:
- Create a community reviewed table for Galaxy workflows within a specific scientific domain
- Embed the workflow table in a community page
time_estimation: 1H
key_points:
- The Galaxy Codex extracts all Galaxy workflows to create tables
- The community interactive Galaxy workflows table can be embed into any website
tags:
- Community
- SIG
contributions:
  authorship:
    - bebatut
    - paulzierep
    - scorreard

---

Similarly to the numerous tools available on Galaxy, numerous workflow are available on public Galaxy instances and in [Workflow Hub](https://workflowhub.eu/). This tutorail will take you through the steps to display the most relevant workflows on your community codex page.

The pipeline creates an table with all the workflows. This table can be **filtered to only include workflows that are relevant to a specific research community**.

The generated community-specific table can be used as it and/or embedded, e.g. into the respective Galaxy Hub page or Galaxy subdomain.

The pipeline is **fully automated** and executes on a **weekly** basis. Any research community can apply the pipeline to create a table specific to their community.

The aim is this tutorial is to create a workflow table for a community.

> <agenda-title></agenda-title>
>
> In this tutorial, we will cover:
>
> 1. TOC
> {:toc}
>
{: .agenda}

# Pull list of tags relevant to your community

To add workflows in your community workflow table, you will need to indicate a list of tags relevant to your community, and workflows associated with these tags will be automatically pulled from public Galaxy instances and [Workflow Hub](https://workflowhub.eu/). Only workflows with the selected tags will be added to the filtered table.
You will then be able to remove workflows that are not relevant to your community or deprecated.

> <hands-on-title>Select workflows tags from the Galaxy instances</hands-on-title>
>
> 1. Go to your favorite public Galaxy instance.
> 2. Go to the `Workflow` section
> 3. Select `Public workflows` (for example: [Public workflows on the French instance](https://usegalaxy.fr/workflows/list_published))
> 4. Browse for workflow that are releavnt to your community
> 5. Note the tags that are associated with workflows of interest
{: .hands_on}

> <hands-on-title>Select workflows tags from the Workflow Hub</hands-on-title>
>
> 1. Go to [Workflow Hub](https://workflowhub.eu/)
> 2. Browse for workflow that are releavnt to your community
> 3. Note the tags that are associated with workflows of interest (in the `tag` section on the left of the workflow page)
{: .hands_on}

# Add the list relevant tags for your community in the workflow_tags file

> <hands-on-title>Add the relevant tags to the workflow_tags file</hands-on-title>
> 1. Create a file named `workflow_tags` in your comunity metadata folder (`communities/<your community>/metadata` created previously)
> 2. Add the name of the tags relevant to your community in the `workflow_tags` file you started above. The file is split in two sections : `Public`, which should inidcate the tags used on public Galaxy instances; and `workflowhub`, which inidcates the tags to use to select workflow on [Workflow Hub](https://workflowhub.eu/).

>
>    For example:
>    ```
>    public:
>    - name:microgalaxy
>    - microgalaxy
>    workflowhub:
>    - abromics
>    - amr
>    - amplicon
>    ```
>

{: .hands_on}

Once you have a list of the tags that you wish to keep, you can submit this to Galaxy Codex.

> <hands-on-title>Submit the new list of tags to Galaxy Codex</hands-on-title>
>
> 1. Click on **Commit changes** at the top
> 2. Fill in the commit message with something like `Add workflows tags for my community`
> 3. Click on `Create a new branch for this commit and start a pull request`
> 4. Create the pull request by following the instructions
>
{: .hands_on}

The Pull Request will be reviewed. Make sure to respond to any feedback.

Once the Pull Request is merged, a table with all workflow will be created in `communities/<your community>/resources/workflow_status.tsv`

# Review the generated table to curate tools

The generated table will contain all the workflows associated with the tags that you selected. However, not all of these workflows might be interesting for your community.

Galaxy Codex allows for an additional optional filter for workflows, that can be defined by the community curator (maybe that is you!).

TO DO : We Will soon update this section to explain how to filter workflow, sorry for the inconvenience.

# Embed the table in your community page on the Hub

The table you have created can be embedded in your community page on the Hub, e.g. [microGalaxy](https://galaxyproject.org/community/sig/microbial/#workflows-and-tutorials).

> <hands-on-title>Embed your table</hands-on-title>
>
> 1.  If not already done, fork the repository [Galaxy Hub](https://github.com/galaxyproject/galaxy-hub)
> 2. Open or create your community page: `content/community/sig/<your community>/index.md`
> 3. TO DO : We Will soon update this section to explain how to include the table, sorry for the inconvenience. 
> 4. Submit the changes
> 5. Wait for the Pull Request to be merged
>
{: .hands_on}

# Conclusion

You now have a table with workflows available for your community, and this table is embedded in a community page.
