
## read file ##
# line by line
var=open('PATH','r')
var.readline()

# whole
with open('PATH','r') as var:
    text=var.read().split('\n')


## write file ##
with open('PATH','w') as var:
	var.write(something+'\n')


## list
var=[] #empty list
var=list(sth)
var.append(newthings)
#tuple () immutable list
var=[sth for sth in sths]

## dictionary
var={} #empty dict
var={'key1':value1,'key2':value2}
var=dict(sth)
# loop it
for key in dict: #get keys
    dict[key] #get values
#put things into
var=dict(zip(keys,values))

## print
print('%s %d %f %.2f%' %(string,integer,float,float))

## inverse list, string
var[::-1]

## float with 2 digits
round(float,2)

## function
def func(var):
    return a,b

a,b=func(var)

## for
for i in range(end)): # 0:end-1
    do_something
for i in range(start,end)): # start:end-1
    do_something

## read line and write line
var=open('PATH','r')
with open('PATH','w') as out:
    line=var.readline()
    while(line):
        out.write(line)
        line=var.readline()

## asserts
assert func(var) is correct_result, 'say something' #1

## somethings
max()


## REGEX ##
import re
#reuse pattern
var=re.compile('REGEX')
var.sub('new',target)

#search
var=re.search('REGEX',target)
var.group() #pattern found
var.start() 
var.end()

for x in re.finditer('REGEX',target):
    x.group() # 0-all 1-first_group etc




## numpy ##
import numpy as np
# array with continuous numbers
np.linspace(start, end, steps)
# array with repeat zeros
np.zeros(number)

# find the idx of closest value in an array
(np.abs(array - value)).argmin()
# find idx of intersections between arrays
np.argwhere(np.diff(np.sign(value- value))).flatten()

## matplotlib ##
import matplotlib.pyplot as plt

plt.plot(x,y,'symbo') # symbos: rgbcyk :-o
plt.plot(x,y,'symbo',label='label')
plt.plot(x1,y1,'symbo',
         x2,y2,'symbo')
plt.xlabel('x_axis')
plt.ylabel('y_axis')

#settings
plt.figure(figsize=(10, 10))
plt.ylim((0,1))
plt.legend()
plt.show()

# stack plots
fig, axs = plt.subplots(plot_number, sharex=True, sharey=True)
#fig.suptitle('title')
axs[0].plot(x,y, 'r')
axs[1].plot(x,y, 'k:')
axs[0].set_ylabel('y1')
axs[1].set_ylabel('y2')
axs[1].set_xlabel('x')




## math ##
import math
math.log() # nature log ln



## pandas ## for data analyses, dataframe
import pandas as pd

df=pd.read_csv("PATH")
print("the data has %d columns, %d rows, and %d dimensions" 
      %(df.shape[0],df.shape[1],df.ndim))
df.columns #colnames
df.columns.name='new' #edit colnames
df.index #rownames
df.head(number)
df.tail(number)

# select specific rows
df2=df[(df['colname1'] != "sth") & #column has no sth
   (df['colname2'].isin(["content"])) & #column has sth
   (df['colname3'] > df['colname3'].mean())] #column cutoff

# select specific columns
df2=df[["colname1","colname2","colname3"]]

# specific column 
df.loc[:,'colname']

# specific col,row
df['colname'].iloc[row_number]




'''
OOP OOP OOP OOP
oop:
class(blueprint w/var,func)-object(instance)

Encapsulation: Package the variables/ functions into a single unit.
Abstraction: Show only the essentials to the outside use.
Inheritance: Inherit common variables and functions.
Polymorphism: Function the object depending on the data.
'''
#settings for the class
def __init__(self):

#Inheritance
#want to use parent's things in child class
class Child(Parent):
super() 


#Encapsulation
#private things
_variable
__variable


#polymorphism
# when both classes have fly
# common interface in (local program)
def flying_test(bird):
    bird.fly()

#Polymorphism
#Overriding = 
#Overloading = same name
Method overloading: same function with different processes
Operator overloading: special operators with underscore __


#parent class
class Bird:
    # instance attributes
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self._face = 'ugly'
        print('this is a bird')
    
    # instance method
    def sing(self, song):
        return "{} sings {}".format(self.name, song)

    def look(self):
        return "{} is {}".format(self.name, self._face)
    
    def makeup(self,new_adj):
        self._face = new_adj
    
    def fly(self):
        print('%s fly is fly' %(self.name))


# child class
class Penguin(Bird):

    def __init__(self, name, age):
        # call super() function
        super().__init__(name, age)
        print("Penguin %s is ready" %(name))

    def swim(self):
        print("%s Penguin swims" %(self.name))
    
    def fly(self):
        print('%s fly is swim' %(self.name))


# instantiate the object
blu = Bird("bbb", 10)
pg=Penguin("Fuck", 200)

# call our instance methods
print(pg.sing("'Sad'"))
print(pg.look())

# common interface
def flying_test(bird):
    bird.fly()

flying_test(pg)
flying_test(blu)