# dara.frame demo
stu <- c("지운","유진","동현","민지")
stu
eng <- c(90,80,70,60)
math <- c(50,60,70,80)
df_stu <- data.frame(stu,eng,math)
df_stu

# '=' 속성값 할당
# '<-' 

df_stumi <- data.frame(Stu = c("지운","유진","동현","민지"),
                 Eng = c(90,80,70,60),
                 Math = c(50,60,70,80),
                 Class = c(1,1,2,2))
df_stumi
rm(df_stumi)
