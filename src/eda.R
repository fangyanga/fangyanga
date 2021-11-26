setwd("/Users/wangyahan/Desktop/Data Management and Explor/DM")
library('ProjectTemplate')
load.project()
#Draw cyber.security.enrolments
age_range = cyber.security.enrolments %>% filter(age_range != "Unknown") 
highest_education_level = cyber.security.enrolments %>% filter(highest_education_level  != "Unknown") 
employment_status = cyber.security.enrolments %>% filter(employment_status  != "Unknown") 
employment_area = cyber.security.enrolments %>% filter(employment_area  != "Unknown")
country = cyber.security.enrolments %>% filter(country  != "Unknown")
table_cou=table(country$country)
country_1=sort(table_cou,decreasing=T)[1:10]
country_1
detected_country = cyber.security.enrolments %>% filter(detected_country  != "Unknown")
table_det=table(detected_country$detected_country)
detected_country_1=sort(table_det,decreasing=T)[1:10]
detected_country_1
#ggplot cyber.security.enrolments
ggplot(age_range,aes(x=age_range, fill=age_range))+geom_bar() 
ggplot(highest_education_level,aes(x=highest_education_level, fill=highest_education_level))+geom_bar()  
ggplot(employment_status,aes(x=employment_status, fill=employment_status))+geom_bar()  
ggplot(employment_area,aes(x=employment_area, fill=employment_area))+geom_bar()
country_1 = data.frame(country_1)
ggplot(country_1,aes(x=country_1[,1],y=country_1[,2],fill=country_1[,1])) +
  geom_bar(stat = "identity")
detected_country_1 = data.frame(detected_country_1)
ggplot(detected_country_1,aes(x=detected_country_1[,1],y=detected_country_1[,2],fill=detected_country_1[,1])) +
  geom_bar(stat = "identity")
