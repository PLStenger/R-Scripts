# Connaître le nombre d'haplotypes et quels individus en sont porteurs:

library(pegas)
ttr = read.dna("Alignement total PL + ML (Medit) Corrigée-ordonnée.fas", format="fasta")
h <- haplotype(ttr, labels = NULL)
attr(h, "index")
