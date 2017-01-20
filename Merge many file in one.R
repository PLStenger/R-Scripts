###########################################################################
############################ Find haplotypes ##############################
###########################################################################

# By Pierre-Louis Stenger
# Upload 19.01.2017

############################ Data presentation ############################

# I have many file wich start with "admi" like adminsit1.txt, adminini27.txt in my working directory, and I want these informations in one file which will be called "LnPD.txt".
# J'ai plusieurs fichiers qui commence par "admi" comme  adminsit1.txt, adminini27.txt dans mon dossier de travail. Et je veux les informations de ces fichiers groupées en un seul qui se nommera "LnPD.txt".

################################ R Script #################################

# With this only common:
# Avec cette simple commande

system("cat admi* > LnPD.txt")
