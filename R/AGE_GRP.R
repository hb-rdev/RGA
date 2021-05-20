#' Method of AGE_GRP function
#'
#' AGE_GRP 함수는 Rawdata의 AGE 값을 이용하여 군단연령 컬럼을 추가하는 함수임
#'
#' @param dat AGE(나이) 변수가 존재하는 data파일
#' @return 데이터에 AGE_GRP 군단연령 컬럼이 추가됨
#' @examples
#' @export
AGE_GRP <- function(dat){
  dat$AGE_GRP<- ifelse(dat$AGE == 0,   0,
                ifelse(dat$AGE <  5, 2.5,
                ifelse(dat$AGE < 10,   7,
                ifelse(dat$AGE < 15,  12,
                ifelse(dat$AGE < 20,  17,
                ifelse(dat$AGE < 25,  22,
                ifelse(dat$AGE < 30,  27,
                ifelse(dat$AGE < 35,  32,
                ifelse(dat$AGE < 40,  37,
                ifelse(dat$AGE < 45,  42,
                ifelse(dat$AGE < 50,  47,
                ifelse(dat$AGE < 55,  52,
                ifelse(dat$AGE < 60,  57,
                ifelse(dat$AGE < 65,  62,
                ifelse(dat$AGE < 70,  67,
                ifelse(dat$AGE < 75,  72,
                ifelse(dat$AGE < 80,  77,
                ifelse(dat$AGE < 85,  82,
                ifelse(dat$AGE < 90,  87,
                ifelse(dat$AGE < 95,  92,
                ifelse(dat$AGE < 100,  97, 100)))))))))))))))))))))
return(dat)
}
