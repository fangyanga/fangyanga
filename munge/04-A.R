

United=merge(cyber.security.question.response_1,cyber.security.enrolments,by.cyber.security.question.response_1 = 'learner_id', by.cyber.security.enrolments = 'learner_id')
United
gc()
courses_selected=table(United$learner_id)
courses_selected = as.data.frame(courses_selected)
courses_selected
colnames(courses_selected) = c("learner_id", "Number_of_courses")
United_1=merge(cyber.security.enrolments,courses_selected,by.cyber.security.enrolments = 'learner_id', by.courses_selected = 'learner_id')
United_1
United_1 = United_1 %>% filter(age_range != "Unknown") 
United_1= United_1 %>% filter(highest_education_level  != "Unknown") 
United_1 =United_1 %>% filter(employment_status  != "Unknown") 
United_1 = United_1 %>% filter(employment_area  != "Unknown")
United_1= United_1 %>% filter(country  != "Unknown")
United_1= United_1 %>% filter(gender  != "Unknown")
United_1
gc()


United_1$Number_of_courses <- as.factor(United_1$Number_of_courses)
fit.full=glm(Number_of_courses~gender+age_range+highest_education_level+employment_status+employment_area+country,data=United_1,family=binomial())
summary(fit.full) 
