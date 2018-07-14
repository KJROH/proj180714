getwd()

# R 언어에는 객체타입 대표 6로
# Vector, List, Matrix, Array, Factor, Data Frame
# 이 있고... 이들은 Vector 가 확장합니다.
# Vector 는 다시 6개 기본타입에 따라 
# Logical(T,F), Numeric(실수), Integer(정수), 
# Complex (허수), Character (문자열), Raw (주소값)
# 로 종류가 나뉘는데 보통은 
# Logical, Numeric, Character 세가지가 쓰입니다

## 월요일 문제
# 체질량 지수(體質量指數, Body Mass Index, BMI)는 인간의 비만도를 나타내는 지수로, 
# 체중과 키의 관계로 계산된다.
# 키가 t 미터, 체중이 w 킬로그램일 때, BMI는 다음과 같다.
# (키의 단위가 센티미터가 아닌 미터임에 유의해야 한다.)
# 공식은 https://ko.wikipedia.org/wiki/%EC%B2%B4%EC%A7%88%EB%9F%89_%EC%A7%80%EC%88%98
# 가면 구할 수 있습니다.
# 이 BMI 지수를 구하는 Function 객체를 구하시오
# 이 문제는 스위치버전은 구할수 없고 if-else 버전만 가능합니다.

# 일반 나누기 - R에서는 double로 소수점을 포함한 결과가 나온다.
#  9/2
#[1] 4.5 : 전부다 (실수)
# 나눗셈의 몫 (quotient)
# 9%/%2
#[1] 4  : 소수점이하는버림(정수)
# 나눗셈의 나머지(remainder) - 2로 나누면 홀짝 구분이 된다.
#  9%%2
#[1] 1 : 나머지 

x <- 180 # 키
y <- 70 # 몸무게
bmi <- function(x,y){return ()}

res <- bmi(180, 70)
res
# '정상' 으로 나오도록 코드를 완성하시오

bmi <- function(x,y){
  sum <- sum(y/(x*x))
  sum1 <- sum*10000
  bmi1 <- if(sum1<=18)"저체중" else
    if(sum1<=22)"정상" else
    if(sum1<=24)"과체중" else 
      if(sum1<=29)"비만" else
        "고도비만"
  return(cat("bmi", ":", bmi1))
}

bmi(180,50)

## 풀이1
bmi <- function(t,w){
  x <- w %/% ((t*t)%/%10000)   
  res <- if(x >=18 x < 21)"저체중" else
    if(x >=22 & x < 23)"정상" else
    if(x >=24 & x < 28)"과체중" else 
    if(x >=29 & x <35)"비만" else
    "고도비만"
     
  return(res)
     }
bmi(180,80)

## 풀이2
bmi <- function(t,w){
  x <- w %/% ((t*t)%/%10000)   
  return(if(x >=35)"고도비만" else
    if(x >=30 & x < 35)"경도비만" else
    if(x >=25 & x < 30)"비만" else 
    if(x >=18 & x < 25)"정상" else
      "저체중")
}
bmi(180,70)

##  문자열에서 필요한 값 추출하기
# substr("문자열", 시작인덱스, 끝인덱스) 인덱스 시작은 1
# 아래 - 부분도 한자리로 인식함
stu <- "800101-1"
sub <- substr(stu, 8,8)
sub
# 실행하면 1이 찍힘
# 이것을 통해서 주민번호를 통한 성별 추출이 가능함
# 1, 3 남자  2, 4 여자 5, 6 은 외국인...그외는 잘못된 값
# 문제
# 위 문법을 이용해서 주민번호를 입력하면
# 남, 여, 외 이렇게 출력되는 객체(함수)를 완성하시오

## stu <- "800101-1"
## sub <- substr(stu,8,8)
## sub

gender <- function(x){
  b <- substr(x,8,8)
  return(
  if(b == '1' |'3')'남자' else
  if(b == '2' |'4')'여자' else
  if(b == '5' |'6')'외국인' 
  else'외'
  )
}
gender('800101-2')


gender <- function(x){
  return(switch (substr(x,8,8),
                 '1'= '남',
                 '3'= '남',
                 '2'= '여',
                 '4'= '여',
                 '5'= '외국인',
                 '6'= '외국인',
                 '잘못'
  ))}
gender('800101-7')

getwd()



