> ### {% icon details %} Align.seqs
>
> Align.seqs is part of a tool box mothur and will align a candidate sequence to a templed alignment. First using k-mer searching the tampled is compared with the candidate. Here suffixtrees or blastn are used. Second: pairwise alignments are performed betewwen the candidate sequence and ungaped sequences extracted of the alignment. Here Needleman-Wunsch Gotoh or blastn are used. And finaly the gabs of the original alignments are inserted back ot the pairweise alignment using the NAST algorithm. Databeses fo 16S and 18S rRNA genes sequences are alreadey provieded. this arlignment are compatible with the greengene or SILVA alignments 
>
{: .details}


> ### {% icon details %} LASTZ
>
> LASTZ is a drop-in replacement for BLASTZ. You can apply a target sequence, which can be either one sequence or set of sequences. To this target a other set of shorter sequences (query) are aligned. For the target sequece e.g. your faivorit genome a seed word position table is build. Than the query sequences are used to examen this table to to find a match, called seed. Than seeds are extended to longer matches, HSPs (high-scoring segment pairs), and filtered based on its score. The HPS having the highest-scoring set are appended together and riported as a local alignment, with gaps inbetween. 
>
{: .details}
