# Read in plink frequency data fro each population
gr <- read.table("g.granti_freq_noNA.frq",h=T)
ro <- read.table("g.robertsii_freq_noNA.frq",h=T)
no <- read.table("notata_freq_noNA.frq",h=T)
pe <- read.table("petersii_freq_noNA.frq",h=T)
mk <- read.table("mkazi_freq_noNA.frq",h=T)

# Heterozygosity function
het<-function(x){2*x*(1-x)}

# Remove all fixed alleles in each population 
gr <- gr[gr[,"MAF"]>0,]
ro <- ro[ro[,"MAF"]>0,]
no <- no[no[,"MAF"]>0,]
pe <- pe[pe[,"MAF"]>0,]
mk <- mk[mk[,"MAF"]>0,]

#vector of chromosomes
chs <- c(1,9,10,11,12,13,14,15,16,17,18,19)

for (i in chs){
  
  gr[i] <- subset.data.frame(gr, gr$CHR==, select=c('CHR','SNP', 'MAF'))
}


##Split data by chromosome
#g.granti
gr1 <- subset.data.frame(gr, gr$CHR==1, select=c('CHR','SNP', 'MAF'))
gr9 <- subset.data.frame(gr, gr$CHR==9, select=c('CHR','SNP', 'MAF'))
gr10 <- subset.data.frame(gr, gr$CHR==10, select=c('CHR','SNP', 'MAF'))
gr11 <- subset.data.frame(gr, gr$CHR==11, select=c('CHR','SNP', 'MAF'))
gr12 <- subset.data.frame(gr, gr$CHR==12, select=c('CHR','SNP', 'MAF'))
gr13 <- subset.data.frame(gr, gr$CHR==13, select=c('CHR','SNP', 'MAF'))
gr14 <- subset.data.frame(gr, gr$CHR==14, select=c('CHR','SNP', 'MAF'))
gr15 <- subset.data.frame(gr, gr$CHR==15, select=c('CHR','SNP', 'MAF'))
gr16 <- subset.data.frame(gr, gr$CHR==16, select=c('CHR','SNP', 'MAF'))
gr17 <- subset.data.frame(gr, gr$CHR==17, select=c('CHR','SNP', 'MAF'))
gr18 <- subset.data.frame(gr, gr$CHR==18, select=c('CHR','SNP', 'MAF'))
gr19 <- subset.data.frame(gr, gr$CHR==19, select=c('CHR','SNP', 'MAF'))

#g.roberti
ro1 <- subset.data.frame(ro, ro$CHR==1, select=c('CHR','SNP', 'MAF'))
ro9 <- subset.data.frame(ro, ro$CHR==9, select=c('CHR','SNP', 'MAF'))
ro10 <- subset.data.frame(ro, ro$CHR==10, select=c('CHR','SNP', 'MAF'))
ro11 <- subset.data.frame(ro, ro$CHR==11, select=c('CHR','SNP', 'MAF'))
ro12 <- subset.data.frame(ro, ro$CHR==12, select=c('CHR','SNP', 'MAF'))
ro13 <- subset.data.frame(ro, ro$CHR==13, select=c('CHR','SNP', 'MAF'))
ro14 <- subset.data.frame(ro, ro$CHR==14, select=c('CHR','SNP', 'MAF'))
ro15 <- subset.data.frame(ro, ro$CHR==15, select=c('CHR','SNP', 'MAF'))
ro16 <- subset.data.frame(ro, ro$CHR==16, select=c('CHR','SNP', 'MAF'))
ro17 <- subset.data.frame(ro, ro$CHR==17, select=c('CHR','SNP', 'MAF'))
ro18 <- subset.data.frame(ro, ro$CHR==18, select=c('CHR','SNP', 'MAF'))
ro19 <- subset.data.frame(ro, ro$CHR==19, select=c('CHR','SNP', 'MAF'))

#notata
no1 <- subset.data.frame(no, no$CHR==1, select=c('CHR','SNP', 'MAF'))
no9 <- subset.data.frame(no, no$CHR==9, select=c('CHR','SNP', 'MAF'))
no10 <- subset.data.frame(no, no$CHR==10, select=c('CHR','SNP', 'MAF'))
no11 <- subset.data.frame(no, no$CHR==11, select=c('CHR','SNP', 'MAF'))
no12 <- subset.data.frame(no, no$CHR==12, select=c('CHR','SNP', 'MAF'))
no13 <- subset.data.frame(no, no$CHR==13, select=c('CHR','SNP', 'MAF'))
no14 <- subset.data.frame(no, no$CHR==14, select=c('CHR','SNP', 'MAF'))
no15 <- subset.data.frame(no, no$CHR==15, select=c('CHR','SNP', 'MAF'))
no16 <- subset.data.frame(no, no$CHR==16, select=c('CHR','SNP', 'MAF'))
no17 <- subset.data.frame(no, no$CHR==17, select=c('CHR','SNP', 'MAF'))
no18 <- subset.data.frame(no, no$CHR==18, select=c('CHR','SNP', 'MAF'))
no19 <- subset.data.frame(no, no$CHR==19, select=c('CHR','SNP', 'MAF'))

#petersii
pe1 <- subset.data.frame(pe, pe$CHR==1, select=c('CHR','SNP', 'MAF'))
pe9 <- subset.data.frame(pe, pe$CHR==9, select=c('CHR','SNP', 'MAF'))
pe10 <- subset.data.frame(pe, pe$CHR==10, select=c('CHR','SNP', 'MAF'))
pe11 <- subset.data.frame(pe, pe$CHR==11, select=c('CHR','SNP', 'MAF'))
pe12 <- subset.data.frame(pe, pe$CHR==12, select=c('CHR','SNP', 'MAF'))
pe13 <- subset.data.frame(pe, pe$CHR==13, select=c('CHR','SNP', 'MAF'))
pe14 <- subset.data.frame(pe, pe$CHR==14, select=c('CHR','SNP', 'MAF'))
pe15 <- subset.data.frame(pe, pe$CHR==15, select=c('CHR','SNP', 'MAF'))
pe16 <- subset.data.frame(pe, pe$CHR==16, select=c('CHR','SNP', 'MAF'))
pe17 <- subset.data.frame(pe, pe$CHR==17, select=c('CHR','SNP', 'MAF'))
pe18 <- subset.data.frame(pe, pe$CHR==18, select=c('CHR','SNP', 'MAF'))
pe19 <- subset.data.frame(pe, pe$CHR==19, select=c('CHR','SNP', 'MAF'))

#mkazi
mk1 <- subset.data.frame(mk, mk$CHR==1, select=c('CHR','SNP', 'MAF'))
mk9 <- subset.data.frame(mk, mk$CHR==9, select=c('CHR','SNP', 'MAF'))
mk10 <- subset.data.frame(mk, mk$CHR==10, select=c('CHR','SNP', 'MAF'))
mk11 <- subset.data.frame(mk, mk$CHR==11, select=c('CHR','SNP', 'MAF'))
mk12 <- subset.data.frame(mk, mk$CHR==12, select=c('CHR','SNP', 'MAF'))
mk13 <- subset.data.frame(mk, mk$CHR==13, select=c('CHR','SNP', 'MAF'))
mk14 <- subset.data.frame(mk, mk$CHR==14, select=c('CHR','SNP', 'MAF'))
mk15 <- subset.data.frame(mk, mk$CHR==15, select=c('CHR','SNP', 'MAF'))
mk16 <- subset.data.frame(mk, mk$CHR==16, select=c('CHR','SNP', 'MAF'))
mk17 <- subset.data.frame(mk, mk$CHR==17, select=c('CHR','SNP', 'MAF'))
mk18 <- subset.data.frame(mk, mk$CHR==18, select=c('CHR','SNP', 'MAF'))
mk19 <- subset.data.frame(mk, mk$CHR==19, select=c('CHR','SNP', 'MAF'))

## Add columns with the MAF on the chromosome and the pi‐values for each polymorphic SNP 
#g.granti
#gr1 <- cbind(gr,MAF= as.numeric(gsub("[:alpha:]{3}[:digit:]{1,2}[:punct:]{1}",'',gr[,"SNP"]))) 
#gr1 <‐ cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] ‐ gr1[1,"position"]))) 
 
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"]))) 

                                                            
#g.roberti
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"]))) 

#notata
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"]))) 

#petersii
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"]))) 

#mkazi
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"]))) 

# Making a barplot with the nucleotide diversity 
par(mfrow=c(1,1)) 
val = c(mean(gr$pi), mean(ro$pi), mean(no$pi), mean(pe$pi), mean(mk$pi))

barplot(val, ylab="pi",  xlab="Population", 
        names.arg=c("g.granti (excluding mkazi)","g.roberti","notata","petersii","mkazi")) 


