#Extract the files from the archive and relocate to the resulting directory.
#tar -xf gencommand_proj1_data.tar.gz
#cd gencommand_proj1_data

#1. How many chromosomes are there in the genome?
grep ">" apple.genome
grep -c ">" apple.genome 

#2. How many genes does the genome contain?
cut -f1 apple.genes | sort -u | wc -l
cut -f1 apple.genes | sort -u | wc -l 

#3. How many transcript variants does the species have?
cut -f2 apple.genes | sort -u | wc -l
cut -f2 apple.genes | sort -u | wc -l 

#4. How many genes of the species have just one splice variant?
cut -f1 apple.genes | uniq -c | grep " 1 " | wc -l
cut -f1 apple.genes | sort | uniq -c | grep -c " 1 "

#5. How many genes of the species have two or more splice variants?
cut -f1 apple.genes | uniq -c | grep -v " 1 " | wc -l
cut -f1 apple.genes | sort | uniq -c | grep -v " 1 " | wc -l

#6. How many genes are there on the ‘+’ strands of the chromosomes?
cut -f1,4 apple.genes | grep "+" | uniq | wc -l
cut -f1,4 apple.genes | sort -u | cut -f2 | sort | uniq -c

#7. How many genes are there on the ‘-’ strands of the chromosomes?
cut -f1,4 apple.genes | grep "-" | uniq | wc -l
cut -f1,4 apple.genes | sort -u | cut -f2 | sort | uniq -c

#8. How many genes are there on chromosome chr1?
cut -f1,3 apple.genes | grep "chr1" | uniq | wc -l
cut -f1,3 apple.genes | sort -u | cut -f2 | sort | uniq -c

#9. How many genes are there on chromosome chr2?
cut -f1,3 apple.genes | grep "chr2" | uniq | wc -l
cut -f1,3 apple.genes | sort -u | cut -f2 | sort | uniq -c

#10. How many genes are there on chromosome chr3?
cut -f1,3 apple.genes | grep "chr3" | uniq | wc -l
cut -f1,3 apple.genes | sort -u | cut -f2 | sort | uniq -c

#11. How many transcripts are there on chromosome chr1?
cut -f2,3 apple.genes | grep "chr1" | wc -l
cut -f2,3 apple.genes | cut -f2 | sort | uniq -c

#12. How many transcripts are there on chromosome chr2?
cut -f2,3 apple.genes | grep "chr2" | wc -l
cut -f2,3 apple.genes | cut -f2 | sort | uniq -c

#13. How many transcripts are there on chromosome chr3?
cut -f2,3 apple.genes | grep "chr3" | wc -l
cut -f2,3 apple.genes | cut -f2 | sort | uniq -c

#14. How many genes do condition A and condition B have in common?
cut -f1 apple.conditionA | sort -u > ConA
cut -f1 apple.conditionB | sort -u > ConB
comm -12 ConA ConB | wc -l
comm -1 -2 ConA ConB | wc -l

#15. How many genes are specific to condition A?
cut -f1 apple.conditionA | sort -u > ConA
cut -f1 apple.conditionB | sort -u > ConB
comm -23 ConA ConB | wc -l
comm -2 -3 ConA ConB | wc -l

#16. How many genes are specific to condition B?
cut -f1 apple.conditionA | sort -u > ConA
cut -f1 apple.conditionB | sort -u > ConB
comm -13 ConA ConB | wc -l
comm -1 -3 ConA ConB | wc -l

#17. How many genes do condition A, condition B, and condition C have in common?
cut -f1 apple.conditionA | sort -u > ConA
cut -f1 apple.conditionB | sort -u > ConB
cut -f1 apple.conditionC | sort -u > ConC
cat Con{A,B,C} | sort | uniq -c | grep -c " 3 "