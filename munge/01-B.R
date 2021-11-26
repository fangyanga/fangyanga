#Draw cyber.security.enrolments
age_range = cyber.security.enrolments %>% filter(age_range != "Unknown") 
highest_education_level = cyber.security.enrolments %>% filter(highest_education_level  != "Unknown") 
employment_status = cyber.security.enrolments %>% filter(employment_status  != "Unknown") 
employment_area = cyber.security.enrolments %>% filter(employment_area  != "Unknown")
country = cyber.security.enrolments %>% filter(country  != "Unknown")
table_cou=table(country$country)
country_1=sort(table_cou,decreasing=T)[1:10]
detected_country = cyber.security.enrolments %>% filter(detected_country  != "Unknown")
table_det=table(detected_country$detected_country)
detected_country_1=sort(table_det,decreasing=T)[1:10]
#ggplot cyber.security.enrolments
