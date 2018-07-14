# list is recursive vectors
# vectors is atomic vectors

# 점(스칼라) a return(......)
# 선 - 면 - 큐브 
## p81
x <- c(1,2,3)
x
x <- c("홍길동",175,6,5000,T)
lst <- list("홍길동",175,6,5000,T)
x
lst
lst[[1]]
lst <- list(name="홍길동",height=175,6,sal=5000,
            employee=T) # metadata=attribute=column
lst
lst$name  # $=list 안의 속성만 골라...
length(lst)








