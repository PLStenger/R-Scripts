###########################################################################
########################## Put sd bar on barplot ##########################
###########################################################################

# By Pierre-Louis Stenger
# Upload 19.01.2017

############################ Data presentation ############################

# Data on the file "Saison.txt":
# diversite.genetique means genetic diversity, and diversite.haplotypique means haplotypique diversity. Sd are standard deviation
# Données dans le fichier "Saison.txt":
# sd correspond à l'écart-type.

	Mars	Septembre
diversite.genetique	0.2342	0.311125
sd.dg	0.124675	0.097975
diversite.haplotypique	0.0006455	0.0001065
sd.dh	0.00100925	0.00072425



############################### R Script ################################


#PlotSaison 
as.matrix(read.table("Saison.txt")) -> saison
saison

# Put two plot together 
# Mettre les deux graphiques ensemble
par(mfrow=c(1,2))


# First plot
# Premier graphique
barplot(saison[1,],ylab="Diversité génétique",col=c("lightblue", "lightblue", "lightblue", "lightblue"), border = "blue")-> marks
segments(marks,saison[1,]-saison[2,], marks,saison[1,]+saison[2,])
segments(marks-0.1,saison[1,]-saison[2,], marks+0.1,saison[1,]-saison[2,]);segments(marks-0.1,saison[1,]+saison[2,], marks+0.1,saison[1,]+saison[2,])

# Second plot
# Second graphique
barplot(saison[3,],ylab="Diversité haplotypique",col=c("lightblue", "lightblue", "lightblue", "lightblue"), border = "blue")-> marks
segments(marks,saison[3,]-saison[4,], marks,saison[3,]+saison[4,])
segments(marks-0.1,saison[3,]-saison[4,], marks+0.1,saison[3,]-saison[4,]);segments(marks-0.1,saison[3,]+saison[4,], marks+0.1,saison[3,]+saison[4,])
