# -*- coding: utf-8 -*-

from datetime import datetime
import numpy as np

'''
i2 = np.eye(2)
print i2

np.savetxt("data.txt",i2)
'''

c,v=np.loadtxt('data.csv',delimiter=',',usecols=(6,7),unpack=True)

print c,v

# VWAP

vwap = np.average(c,weights = v)  # to calculate the average with weight
print "VWAP =", vwap

#np.mean(ndarray) to calculate the mean of one-dimin-array

t = np.arange(len(c))
print "twap =",np.average(c,weights = t)

h,l=np.loadtxt('data.csv',delimiter=',',usecols=(4,5),unpack=True)

print "hightest =", np.max(h)
print "hightest =", np.min(l)  # get the min or max value of a array

# np.ptp(ndarray) to get the scope of ndarray , = max - min

# median 








