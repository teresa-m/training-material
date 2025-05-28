---
layout: tutorial_hands_on
title: Creation of a Codex for your community
level: Introductory
redirect_from:
- /topics/dev/tutorials/community-codex/tutorial
subtopic: sig

questions:
- How can I create a new Galaxy community?
objectives:
- Create a community page
time_estimation: "5m"
key_points:
- The Galaxy community will have it's own page
tags:
- Community
- SIG
contributions:
  authorship:
    - scorreard
    - bebatut
    - paulzierep

---

Galaxy offers thousands of tools and many tutorials and workflows on a diversity of topics. In order to support researchers from specific community to identify information relevant to their field, it is possible for communities to create specific lists of tools, tutorials and softwares tailored to their community in the [Galaxy Codex](https://github.com/galaxyproject/galaxy_codex).

![A diagram illustrating the Galaxy Codex pipeline, showcasing the various steps involved in creating a community Galaxy tool table.](./../community-tool-table/images/galaxy_tool_metadata_extractor_pipeline.png "Workflow of the Galaxy Codex pipeline. Tool wrappers are parsed from different repositories and additional metadata is retrieved from bio.tools, BioConda, and the main public Galaxy servers. Upon filtering and manual curation of the data for specific scientific communities, the data is transformed into interactive web tables and a tool usage statistic-base word cloud, that can be integrated into any website.")

The aim is this tutorial is to create the folder that will allow the creation of the community codex.

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

# Conclusion

You now have a folder for your community, follow the next step of the learning pathway to add a list of tools relevant to your community.


