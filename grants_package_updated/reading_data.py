import numpy as np


#data = np.genfromtxt("grantsThomsons2017_maxMissing0.2.bed", delimiter='    ')

content = []
with open("grantsThomsons2017_maxMissing0.2.bed")as f:
    for line in f:
        content.append(line.strip().split())

print content