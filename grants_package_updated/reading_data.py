import numpy as np


data = np.genfromtxt("grantsThomsons2017_maxMissing0.2.bed", delimiter='    ')
print data
content = []
with open("grantsThomsons2017_maxMissing0.2.bed")as f:
    for line in f:
        content.append(line.strip().split())

print content


# from pybedtools import BedTool
#
# snps = BedTool('bed_files.bed')  # [1]
# # genes = BedTool('grantsThomsons2017_maxMissing0.2.bed')    # [1]
#
#
# print snps.head(2)
#
# # intergenic_snps = snps.subtract(genes)                       # [2]
# # nearby = genes.closest(intergenic_snps, d=True, stream=True) # [2, 3]
# #
# # for gene in nearby:             # [4]
# #     if int(gene[-1]) < 5000:    # [4]
# #         print gene.name         # [4]