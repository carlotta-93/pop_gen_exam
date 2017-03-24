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

#for (i in gr$CHR){
#gr[i] <- c(NA, NA, NA)
#gr[i] <- subset.data.frame(gr, gr$CHR==abs(i), select=c('CHR','SNP', 'MAF'))
#  }


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

##grlist <- list(gr1, gr9, gr10, gr11, gr12, gr13, gr14, gr15, gr16, gr17, gr18, gr19)



#for (i in chs){
#  function(i){gri}
#  gr[i] <- cbind(gr[i],position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr[i][,"SNP"]))) 
#  gr[i] <- cbind(gr[i], pi=het(gr[i]$MAF) *(length(gr[i]$MAF)/(gr[i][length(gr[i][,"position"]),"position"] - gr[i][1,"position"])))
#}

#picalc <- function(x, y){
#  x[y] <- cbind(x[y],position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','', x[y][,"SNP"]))) 
#  x[y] <- cbind(x[y], pi=het(x[y]$MAF) *(length(x[y]$MAF)/(x[y][length(x[y][,"position"]),"position"] - x[y][1,"position"])))
#}

#sapply(grlist, picalc)



## Add columns with the MAF on the chromosome and the pi‐values for each polymorphic SNP 
#g.granti
gr1 <- cbind(gr1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr1[,"SNP"]))) 
gr1 <- cbind(gr1, pi=het(gr1$MAF) *(length(gr1$MAF)/(gr1[length(gr1[,"position"]),"position"] - gr1[1,"position"])))

gr9 <- cbind(gr9,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr9[,"SNP"]))) 
gr9 <- cbind(gr9, pi=het(gr9$MAF) *(length(gr9$MAF)/(gr9[length(gr9[,"position"]),"position"] - gr9[1,"position"])))

gr10 <- cbind(gr10,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr10[,"SNP"]))) 
gr10 <- cbind(gr10, pi=het(gr10$MAF) *(length(gr10$MAF)/(gr10[length(gr10[,"position"]),"position"] - gr10[1,"position"])))

gr11 <- cbind(gr11,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr11[,"SNP"]))) 
gr11 <- cbind(gr11, pi=het(gr11$MAF) *(length(gr11$MAF)/(gr11[length(gr11[,"position"]),"position"] - gr11[1,"position"])))

gr12 <- cbind(gr12,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr12[,"SNP"]))) 
gr12 <- cbind(gr12, pi=het(gr12$MAF) *(length(gr12$MAF)/(gr12[length(gr12[,"position"]),"position"] - gr12[1,"position"])))

gr13 <- cbind(gr13,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr13[,"SNP"]))) 
gr13 <- cbind(gr13, pi=het(gr13$MAF) *(length(gr13$MAF)/(gr13[length(gr13[,"position"]),"position"] - gr13[1,"position"])))

gr14 <- cbind(gr14,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr14[,"SNP"]))) 
gr14 <- cbind(gr14, pi=het(gr14$MAF) *(length(gr14$MAF)/(gr14[length(gr14[,"position"]),"position"] - gr14[1,"position"])))

gr15 <- cbind(gr15,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr15[,"SNP"]))) 
gr15 <- cbind(gr15, pi=het(gr15$MAF) *(length(gr15$MAF)/(gr15[length(gr15[,"position"]),"position"] - gr15[1,"position"])))

gr16 <- cbind(gr16,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr16[,"SNP"]))) 
gr16 <- cbind(gr16, pi=het(gr16$MAF) *(length(gr16$MAF)/(gr16[length(gr16[,"position"]),"position"] - gr16[1,"position"])))

gr17 <- cbind(gr17,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr17[,"SNP"]))) 
gr17 <- cbind(gr17, pi=het(gr17$MAF) *(length(gr17$MAF)/(gr17[length(gr17[,"position"]),"position"] - gr17[1,"position"])))

gr18 <- cbind(gr18,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr18[,"SNP"]))) 
gr18 <- cbind(gr18, pi=het(gr18$MAF) *(length(gr18$MAF)/(gr18[length(gr18[,"position"]),"position"] - gr18[1,"position"])))

gr19 <- cbind(gr19,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',gr19[,"SNP"]))) 
gr19 <- cbind(gr19, pi=het(gr19$MAF) *(length(gr19$MAF)/(gr19[length(gr19[,"position"]),"position"] - gr19[1,"position"])))


#g.roberti
ro1 <- cbind(ro1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro1[,"SNP"]))) 
ro1 <- cbind(ro1, pi=het(ro1$MAF) *(length(ro1$MAF)/(ro1[length(ro1[,"position"]),"position"] - ro1[1,"position"])))

ro9 <- cbind(ro9,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro9[,"SNP"]))) 
ro9 <- cbind(ro9, pi=het(ro9$MAF) *(length(ro9$MAF)/(ro9[length(ro9[,"position"]),"position"] - ro9[1,"position"])))

ro10 <- cbind(ro10,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro10[,"SNP"]))) 
ro10 <- cbind(ro10, pi=het(ro10$MAF) *(length(ro10$MAF)/(ro10[length(ro10[,"position"]),"position"] - ro10[1,"position"])))

ro11 <- cbind(ro11,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro11[,"SNP"]))) 
ro11 <- cbind(ro11, pi=het(ro11$MAF) *(length(ro11$MAF)/(ro11[length(ro11[,"position"]),"position"] - ro11[1,"position"])))

ro12 <- cbind(ro12,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro12[,"SNP"]))) 
ro12 <- cbind(ro12, pi=het(ro12$MAF) *(length(ro12$MAF)/(ro12[length(ro12[,"position"]),"position"] - ro12[1,"position"])))

ro13 <- cbind(ro13,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro13[,"SNP"]))) 
ro13 <- cbind(ro13, pi=het(ro13$MAF) *(length(ro13$MAF)/(ro13[length(ro13[,"position"]),"position"] - ro13[1,"position"])))

ro14 <- cbind(ro14,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro14[,"SNP"]))) 
ro14 <- cbind(ro14, pi=het(ro14$MAF) *(length(ro14$MAF)/(ro14[length(ro14[,"position"]),"position"] - ro14[1,"position"])))

ro15 <- cbind(ro15,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro15[,"SNP"]))) 
ro15 <- cbind(ro15, pi=het(ro15$MAF) *(length(ro15$MAF)/(ro15[length(ro15[,"position"]),"position"] - ro15[1,"position"])))

ro16 <- cbind(ro16,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro16[,"SNP"]))) 
ro16 <- cbind(ro16, pi=het(ro16$MAF) *(length(ro16$MAF)/(ro16[length(ro16[,"position"]),"position"] - ro16[1,"position"])))

ro17 <- cbind(ro17,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro17[,"SNP"]))) 
ro17 <- cbind(ro17, pi=het(ro17$MAF) *(length(ro17$MAF)/(ro17[length(ro17[,"position"]),"position"] - ro17[1,"position"])))

ro18 <- cbind(ro18,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro18[,"SNP"]))) 
ro18 <- cbind(ro18, pi=het(ro18$MAF) *(length(ro18$MAF)/(ro18[length(ro18[,"position"]),"position"] - ro18[1,"position"])))

ro19 <- cbind(ro19,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',ro19[,"SNP"]))) 
ro19 <- cbind(ro19, pi=het(ro19$MAF) *(length(ro19$MAF)/(ro19[length(ro19[,"position"]),"position"] - ro19[1,"position"])))

#notata
no1 <- cbind(no1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no1[,"SNP"]))) 
no1 <- cbind(no1, pi=het(no1$MAF) *(length(no1$MAF)/(no1[length(no1[,"position"]),"position"] - no1[1,"position"])))

no9 <- cbind(no9,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no9[,"SNP"]))) 
no9 <- cbind(no9, pi=het(no9$MAF) *(length(no9$MAF)/(no9[length(no9[,"position"]),"position"] - no9[1,"position"])))

no10 <- cbind(no10,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no10[,"SNP"]))) 
no10 <- cbind(no10, pi=het(no10$MAF) *(length(no10$MAF)/(no10[length(no10[,"position"]),"position"] - no10[1,"position"])))

no11 <- cbind(no11,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no11[,"SNP"]))) 
no11 <- cbind(no11, pi=het(no11$MAF) *(length(no11$MAF)/(no11[length(no11[,"position"]),"position"] - no11[1,"position"])))

no12 <- cbind(no12,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no12[,"SNP"]))) 
no12 <- cbind(no12, pi=het(no12$MAF) *(length(no12$MAF)/(no12[length(no12[,"position"]),"position"] - no12[1,"position"])))

no13 <- cbind(no13,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no13[,"SNP"]))) 
no13 <- cbind(no13, pi=het(no13$MAF) *(length(no13$MAF)/(no13[length(no13[,"position"]),"position"] - no13[1,"position"])))

no14 <- cbind(no14,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no14[,"SNP"]))) 
no14 <- cbind(no14, pi=het(no14$MAF) *(length(no14$MAF)/(no14[length(no14[,"position"]),"position"] - no14[1,"position"])))

no15 <- cbind(no15,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no15[,"SNP"]))) 
no15 <- cbind(no15, pi=het(no15$MAF) *(length(no15$MAF)/(no15[length(no15[,"position"]),"position"] - no15[1,"position"])))

no16 <- cbind(no16,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no16[,"SNP"]))) 
no16 <- cbind(no16, pi=het(no16$MAF) *(length(no16$MAF)/(no16[length(no16[,"position"]),"position"] - no16[1,"position"])))

no17 <- cbind(no17,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no17[,"SNP"]))) 
no17 <- cbind(no17, pi=het(no17$MAF) *(length(no17$MAF)/(no17[length(no17[,"position"]),"position"] - no17[1,"position"])))

no18 <- cbind(no18,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no18[,"SNP"]))) 
no18 <- cbind(no18, pi=het(no18$MAF) *(length(no18$MAF)/(no18[length(no18[,"position"]),"position"] - no18[1,"position"])))

no19 <- cbind(no19,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',no19[,"SNP"]))) 
no19 <- cbind(no19, pi=het(no19$MAF) *(length(no19$MAF)/(no19[length(no19[,"position"]),"position"] - no19[1,"position"])))

#petersii
pe1 <- cbind(pe1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe1[,"SNP"]))) 
pe1 <- cbind(pe1, pi=het(pe1$MAF) *(length(pe1$MAF)/(pe1[length(pe1[,"position"]),"position"] - pe1[1,"position"])))

pe9 <- cbind(pe9,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe9[,"SNP"]))) 
pe9 <- cbind(pe9, pi=het(pe9$MAF) *(length(pe9$MAF)/(pe9[length(pe9[,"position"]),"position"] - pe9[1,"position"])))

pe10 <- cbind(pe10,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe10[,"SNP"]))) 
pe10 <- cbind(pe10, pi=het(pe10$MAF) *(length(pe10$MAF)/(pe10[length(pe10[,"position"]),"position"] - pe10[1,"position"])))

pe11 <- cbind(pe11,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe11[,"SNP"]))) 
pe11 <- cbind(pe11, pi=het(pe11$MAF) *(length(pe11$MAF)/(pe11[length(pe11[,"position"]),"position"] - pe11[1,"position"])))

pe12 <- cbind(pe12,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe12[,"SNP"]))) 
pe12 <- cbind(pe12, pi=het(pe12$MAF) *(length(pe12$MAF)/(pe12[length(pe12[,"position"]),"position"] - pe12[1,"position"])))

pe13 <- cbind(pe13,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe13[,"SNP"]))) 
pe13 <- cbind(pe13, pi=het(pe13$MAF) *(length(pe13$MAF)/(pe13[length(pe13[,"position"]),"position"] - pe13[1,"position"])))

pe14 <- cbind(pe14,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe14[,"SNP"]))) 
pe14 <- cbind(pe14, pi=het(pe14$MAF) *(length(pe14$MAF)/(pe14[length(pe14[,"position"]),"position"] - pe14[1,"position"])))

pe15 <- cbind(pe15,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe15[,"SNP"]))) 
pe15 <- cbind(pe15, pi=het(pe15$MAF) *(length(pe15$MAF)/(pe15[length(pe15[,"position"]),"position"] - pe15[1,"position"])))

pe16 <- cbind(pe16,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe16[,"SNP"]))) 
pe16 <- cbind(pe16, pi=het(pe16$MAF) *(length(pe16$MAF)/(pe16[length(pe16[,"position"]),"position"] - pe16[1,"position"])))

pe17 <- cbind(pe17,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe17[,"SNP"]))) 
pe17 <- cbind(pe17, pi=het(pe17$MAF) *(length(pe17$MAF)/(pe17[length(pe17[,"position"]),"position"] - pe17[1,"position"])))

pe18 <- cbind(pe18,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe18[,"SNP"]))) 
pe18 <- cbind(pe18, pi=het(pe18$MAF) *(length(pe18$MAF)/(pe18[length(pe18[,"position"]),"position"] - pe18[1,"position"])))

pe19 <- cbind(pe19,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',pe19[,"SNP"]))) 
pe19 <- cbind(pe19, pi=het(pe19$MAF) *(length(pe19$MAF)/(pe19[length(pe19[,"position"]),"position"] - pe19[1,"position"]))) 

#mkazi
mk1 <- cbind(mk1,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk1[,"SNP"]))) 
mk1 <- cbind(mk1, pi=het(mk1$MAF) *(length(mk1$MAF)/(mk1[length(mk1[,"position"]),"position"] - mk1[1,"position"])))

mk9 <- cbind(mk9,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk9[,"SNP"]))) 
mk9 <- cbind(mk9, pi=het(mk9$MAF) *(length(mk9$MAF)/(mk9[length(mk9[,"position"]),"position"] - mk9[1,"position"])))

mk10 <- cbind(mk10,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk10[,"SNP"]))) 
mk10 <- cbind(mk10, pi=het(mk10$MAF) *(length(mk10$MAF)/(mk10[length(mk10[,"position"]),"position"] - mk10[1,"position"])))

mk11 <- cbind(mk11,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk11[,"SNP"]))) 
mk11 <- cbind(mk11, pi=het(mk11$MAF) *(length(mk11$MAF)/(mk11[length(mk11[,"position"]),"position"] - mk11[1,"position"])))

mk12 <- cbind(mk12,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk12[,"SNP"]))) 
mk12 <- cbind(mk12, pi=het(mk12$MAF) *(length(mk12$MAF)/(mk12[length(mk12[,"position"]),"position"] - mk12[1,"position"])))

mk13 <- cbind(mk13,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk13[,"SNP"]))) 
mk13 <- cbind(mk13, pi=het(mk13$MAF) *(length(mk13$MAF)/(mk13[length(mk13[,"position"]),"position"] - mk13[1,"position"])))

mk14 <- cbind(mk14,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk14[,"SNP"]))) 
mk14 <- cbind(mk14, pi=het(mk14$MAF) *(length(mk14$MAF)/(mk14[length(mk14[,"position"]),"position"] - mk14[1,"position"])))

mk15 <- cbind(mk15,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk15[,"SNP"]))) 
mk15 <- cbind(mk15, pi=het(mk15$MAF) *(length(mk15$MAF)/(mk15[length(mk15[,"position"]),"position"] - mk15[1,"position"])))

mk16 <- cbind(mk16,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk16[,"SNP"]))) 
mk16 <- cbind(mk16, pi=het(mk16$MAF) *(length(mk16$MAF)/(mk16[length(mk16[,"position"]),"position"] - mk16[1,"position"])))

mk17 <- cbind(mk17,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk17[,"SNP"]))) 
mk17 <- cbind(mk17, pi=het(mk17$MAF) *(length(mk17$MAF)/(mk17[length(mk17[,"position"]),"position"] - mk17[1,"position"])))

mk18 <- cbind(mk18,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk18[,"SNP"]))) 
mk18 <- cbind(mk18, pi=het(mk18$MAF) *(length(mk18$MAF)/(mk18[length(mk18[,"position"]),"position"] - mk18[1,"position"])))

mk19 <- cbind(mk19,position= as.numeric(gsub('[[:alpha:]]{3}[[:digit:]]{1,2}[[:punct:]]{1}','',mk19[,"SNP"]))) 
mk19 <- cbind(mk19, pi=het(mk19$MAF) *(length(mk19$MAF)/(mk19[length(mk19[,"position"]),"position"] - mk19[1,"position"]))) 

#Mean Pi across all chromosomes

#g.granti
grpi <- mean(mean(gr1$pi) + mean(gr9$pi) + mean(gr10$pi) + mean(gr11$pi) + mean(gr13$pi) + mean(gr14$pi) + mean(gr15$pi) + mean(gr16$pi) + mean(gr17$pi) + mean(gr18$pi) + mean(gr19$pi))
  
#g.roberti
ropi <- mean(mean(ro1$pi) + mean(ro9$pi) + mean(ro10$pi) + mean(ro11$pi) + mean(ro13$pi) + mean(ro14$pi) + mean(ro15$pi) + mean(ro16$pi) + mean(ro17$pi) + mean(ro18$pi) + mean(ro19$pi))

#g.notata
nopi <- mean(mean(no1$pi) + mean(no9$pi) + mean(no10$pi) + mean(no11$pi) + mean(no13$pi) + mean(no14$pi) + mean(no15$pi) + mean(no16$pi) + mean(no17$pi) + mean(no18$pi) + mean(no19$pi))

#g.pertersii
pepi <- mean(mean(pe1$pi) + mean(pe9$pi) + mean(pe10$pi) + mean(pe11$pi) + mean(pe13$pi) + mean(pe14$pi) + mean(pe15$pi) + mean(pe16$pi) + mean(pe17$pi) + mean(pe18$pi) + mean(pe19$pi))

#mkazi
mkpi <- mean(mean(mk1$pi) + mean(mk9$pi) + mean(mk10$pi) + mean(mk11$pi) + mean(mk13$pi) + mean(mk14$pi) + mean(mk15$pi) + mean(mk16$pi) + mean(mk17$pi) + mean(mk18$pi) + mean(mk19$pi))


# Making a barplot with the nucleotide diversity 
val = c(grpi, ropi, nopi, pepi, mkpi)
#format(val, scientific = FALSE)

par(mfrow=c(1,1)) 

colours = c("blue", "red", "green", "orange" ,"pink")

barplot(val, main="Genetic Diversity", ylab="Nucleotide Diveristy (pi)", ylim=c(0,0.00003), xlab="Population", col = colours, 
        names.arg=c("G.Granti","G.roberti","Notata","Petersii","Mkomazi")) 


