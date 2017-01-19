Données "Saison.txt":

	Mars	Septembrediversité.génétique	0.2342	0.311125sd.dg	0.124675	0.097975diversité.haplotypique	0.0006455	0.0001065sd.dh	0.00100925	0.00072425






#PlotSaison 
as.matrix(read.table("Saison.txt")) -> saison
saison

par(mfrow=c(1,2))

barplot(saison[1,],ylab="Diversité génétique",col=c("lightblue", "lightblue", "lightblue", "lightblue"), border = "blue")-> marks
segments(marks,saison[1,]-saison[2,], marks,saison[1,]+saison[2,])
segments(marks-0.1,saison[1,]-saison[2,], marks+0.1,saison[1,]-saison[2,]);segments(marks-0.1,saison[1,]+saison[2,], marks+0.1,saison[1,]+saison[2,])

barplot(saison[3,],ylab="Diversité haplotypique",col=c("lightblue", "lightblue", "lightblue", "lightblue"), border = "blue")-> marks
segments(marks,saison[3,]-saison[4,], marks,saison[3,]+saison[4,])
segments(marks-0.1,saison[3,]-saison[4,], marks+0.1,saison[3,]-saison[4,]);segments(marks-0.1,saison[3,]+saison[4,], marks+0.1,saison[3,]+saison[4,])

