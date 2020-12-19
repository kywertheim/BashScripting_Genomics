# BashScripting_Genomics
Context: This is the solution to the first exam of the Coursera course entitled 'Command Line Tools for Genomic Data Science'. The genome of Malus domestica (apple) was sequenced and assembled; its genes were annotated; and RNA-seq experiments were run to identify the genes expressed in three samples. The results are in the files named 'apple.genome', 'apple.genes', and 'apple.condition{A,B,C}'. These files are in the archive file named 'gencommand_proj1_data.tar.gz'.

About:
1. Working within a Unix shell, the Bash script 'analysis.sh' analyses the files in the archive and reports key statistics such as the number of chromosomes.
2. Some of the commands are redundant. For example, 'cut -f1,4 apple.genes | grep "-" | uniq | wc -l' and 'cut -f1,4 apple.genes | sort -u | cut -f2 | sort | uniq -c' generate equivalent results.

Files:
1. 'gencommand_proj1_data.tar.gz' is the archive file.
2. 'analysis.sh' should be placed in the directory created by unzipping the gz file.
