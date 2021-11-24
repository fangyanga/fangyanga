setwd("/Users/wangyahan/Desktop/Data Management and Explor/DM")
library('ProjectTemplate')
load.project()
#Draw the age range distribution
age_range = cyber.security.enrolments %>% filter(age_range != "Unknown") 

ggplot(age_range,aes(x=age_range, fill=age_range))+geom_bar() 

highest_education_level = cyber.security.enrolments %>% filter(highest_education_level  != "Unknown") 

ggplot(highest_education_level,aes(x=highest_education_level, fill=highest_education_level))+geom_bar()  

employment_status = cyber.security.enrolments %>% filter(employment_status  != "Unknown") 

ggplot(employment_status,aes(x=employment_status, fill=employment_status))+geom_bar()  

employment_area = cyber.security.enrolments %>% filter(employment_area  != "Unknown")

ggplot(employment_area,aes(x=employment_area, fill=employment_area))+geom_bar()

