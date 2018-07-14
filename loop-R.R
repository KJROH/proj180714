##repeat loop 
#Executes a sequence of statements multiple times and #abbreviates the code that manages the loop variable.

#while loop 
#Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.

#for loop 
#Like a while statement, except that it tests the condition at the end of the loop body.


print(paste("this is year is",2010))
print(paste("this is year is",2012))
print(paste("this is year is",2014))
print(paste("this is year is",2016))
print(paste("this is year is",2018))

for(year in c(2010:2018)){
  print(paste("this is year is",year))
}

# c생략

for(x in 2010:2018){
  print(paste("this is year is",x))
}

# 1~10까지 출력 
for(x in 1:10){
  print(x)
}

# 1~10까지 합
x <- 0 # x 초기값 
for(y in 1:10){
  x = x + y
}
x # 결과가값
y
x

#짝수의 합
x <- 0 # x 초기값 
for(y in 1:10){
  if(y %% 2 == 0) x = x + y
}
x

