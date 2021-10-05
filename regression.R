## 수치적 데이터 예측 : 회귀 방법
# 회귀 : 한 개의 종속변수와 한 개 이상의 독립 변수 사이의 관계를 명시 (*수치형)
# 로지스틱회귀/ 포아송 회귀/ 다항로지스틱회귀

## OLS : ordinary least squares
# 잔차 : 실제값과 예측값의 차이
# 보통 최소 제곱법


n <- c(  0,66,50,1
        ,1,70,50,2
        ,0,69,50,3
        ,0,68,50,4
        ,0,67,50,5
        ,0,72,50,6
        ,0,73,100,7
        ,0,70,100,8
        ,1,57,200,9
        ,1,63,200,10
        ,1,70,200,11
        ,0,78,200,12
        ,0,67,200,13
        ,2,53,200,14
        ,0,67,200,15
        ,0,75,200,16
        ,0,70,200,17
        ,0,81,200,18
        ,0,76,200,19
        ,0,79,200,20
        ,2,75,200,21
        ,0,76,200,22
        ,1,58,200,23)

# create matrix
m <- matrix(nrow = 23, ncol=4, n)
m
# create dataframe
df <- data.frame(m)
df
# col names
names(df) <- c("distress_ct", "temperature", "field_check_pressure", "flight_num")
launch <- df

# x : temperature, y: distress_ct
# 회귀계수 구하기 (간단식)
b <- cov(launch$temperature, launch$distress_ct) / var(launch$temperature)
b

a <- mean(launch$distress_ct) - b*mean(launch$temperature)
a
