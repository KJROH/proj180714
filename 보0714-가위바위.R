# sample(1:3,1,replace = TRUE) 하면 1부터 3까지 중에서 랜덤숫자 
# 하나를 반환합니다. 1:3 이 범위고, 1이 갯수, replace = TRUE 는 한번 뽑은
# 숫자를 다시 출력할지 여부인데 True를 주면 다시 뽑힐 수 있습니다. 즉 2
# 가 랜덤으로 나왔어도 다음 회차에서 다시 2가 나올 수 있습니다.
# 이를 이용해서 가위바위보 를 함수로 생성하세요.
# 예제는 아래와 같습니다.
# comVal <- sample(1:3,1,replace = TRUE) 
# myVal <- 2
# rps <- function(comVal, myVal)
# 이김 

## 가위(1) 바위(2) 보(3) 로직
## a-b=0 비김
## a-b=1, -2 A가 이김
## a-b=-1, 2 B가 이김
##

comVal <- sample(1:3,1,replace = TRUE) 
myVal <- 2
rps <- function(X){
  return(switch(substr(1:3,1,replace = TRUE),
                'a-b=0'= '비김',
                'a-b=1' & '-2'='A가 이김',
                'a-b=-1' & '2'= 'B가 이김'
                ))
}

 rps(1) 
 
rps <- function(x){ #setter
  return('이김')
}
rps(3) #getter


rps <- function(x){ 
  com <-sample(1:3,1,replace = TRUE)
  switch(tostring(com - x)
    ,'0'='Tie'
    ,'1'='Win'
    ,'-2'='Win'
    ,'-1'='Lose'
    ,'2'='Lose'
         )
  return('이김')
}
rps(3)

rps <- function(x){ 
  return(switch(tostring(sample(1:3,1,replace = TRUE) - x)
         ,'0'='Tie'
         ,'1'='Win'
         ,'-2'='Win'
         ,'-1'='Lose'
         ,'2'='Lose'
  ))
}
rps(3)














