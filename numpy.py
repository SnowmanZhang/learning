#!/usr/bin/env/python
# -*- coding: utf-8 -*-
from datetime import datetime
import numpy as np


'''the first process to test the speed of numpy
def numpysum(n):

	a = np.arange(n) ** 2
	b = np.arange(n) ** 3
	c = a + b
	
	return c

def pythonsum(n):

	a = list(range(n))
	b = list(range(n))
	c = []

	for i in list(range(len(a))):
		a[i] = i ** 2
		b[i] = i ** 3
		c.append(a[i] + b[i])

	return c

size = 40000

start = datetime.now()
c = pythonsum(size)
delta = datetime.now() - start
print "The last 2 elements of the sum", c[-2:]
print "PythonSum elapsed time in microseconds", delta.microseconds
start = datetime.now()
c = numpysum(size)
delta = datetime.now() - start
print "The last 2 elements of the sum", c[-2:]
print "NumPySum elapsed time in microseconds", delta.microseconds
'''



# the base measure of ndarray
a = arange(5)   #arange(number) can create a one-diminsion array
print "the type of data is "+str(a.dtype)+" and the diminion is "+str(a.shape)

m = array([arange(2), arange(2)])  # array(array) can create a two-or-more-diminsion array
print str(m)+"'s shape is "+str(m.shape)

three_dimin = array([m,m])
print str(three_dimin)+"'s shape is "+str(three_dimin.shape)

# array '的选取元素的方法和普通列表一样，注意，多维数组下，从左到右的数字表示维度从外到内'

a = array([[1,2],[3,4]])
print a[0][1]

#'数据类型转换函数'

print float64(42)
print int8(42.1)
bool(32)

uint16 = arange(7,dtype=float)
print uint16.dtype     # 数据类型

print uint16.dtype.itemsize   # 占用字节数
 
costum = arange(7,dtype = 'f4')   # f代表float  4代表占用4个字节
print costum.dtype

# 自定义数据类型
t = dtype([('name',str_, 40),('numitems',int32),('price',float32)])
print t
# 使用该数据类型
itemz = array([('Meaning of life DVD', 42, 3.14), ('Butter', 13, 2.72)], dtype=t) 
print itemz[1]

# array的切片方法和列表一样
# 以下是多维数组的切片
b = arange(24).reshape(2,3,4)  # 将一维数组转为三维
print str(b.shape)+str(b)

print b[0,1:3,:]

# 多个冒号可以用省略号代替，更具体的切片方法详见P47

print b.ravel()   #reshape和resize 将一维数组变为多维，ravel和flatten将多维数组变成一维

b.shape = (6,4)  # shape设定数组维度
print b

# transpose转置矩阵

b.resize((2,12))
print b



# ndarray对象的属性
'''
1.shape  维度
2.dtype  数据类型
3.ndim  数组的维度
4.size 数组总个数
5.itemsize 元素所占字节数
6.nbytes  整个数组所占空间  = itemsize * size
7.T 得到转置矩阵 ，与shape
8.flat 返回一个numpy.flatiter对象，这是一个迭代器对象,它具备赋值属性，请慎用

'''

f = arange(40).reshape(4,10).flat

for item in f:
    print item
    
# ndarray.tolist() 转换为列表

# astype 将ndarray转为ndarray 可以指定转化后的数据类型
    
















