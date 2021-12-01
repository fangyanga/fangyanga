

United=merge(cyber.security.question.response_1,cyber.security.enrolments,by.cyber.security.question.response_1 = 'learner_id', by.cyber.security.enrolments = 'learner_id')
United
gc()
courses_selected=table(United$learner_id)
courses_selected = as.data.frame(courses_selected)
courses_selected
colnames(courses_selected) = c("learner_id", "Number_of_courses")
United_1=merge(cyber.security.enrolments,courses_selected,by.cyber.security.enrolments = 'learner_id', by.courses_selected = 'learner_id')
view(United_1)
United_1 = United_1 %>% filter(age_range != "Unknown") 
United_1= United_1 %>% filter(highest_education_level  != "Unknown") 
United_1 =United_1 %>% filter(employment_status  != "Unknown") 
United_1 = United_1 %>% filter(employment_area  != "Unknown")
United_1= United_1 %>% filter(country  != "Unknown")
United_1= United_1 %>% filter(gender  != "nonbinary")
United_1= United_1 %>% filter(gender  != "other")
United_1
United_1$gender[which(United_1$gender=="male")]=0
United_1$gender[which(United_1$gender=="female")]=1
United_1$age_range[which(United_1$age_range=="<18")]=0
United_1$age_range[which(United_1$age_range=="18-25")]=1
United_1$age_range[which(United_1$age_range=="26-35")]=2
United_1$age_range[which(United_1$age_range=="36-45")]=3
United_1$age_range[which(United_1$age_range=="46-55")]=4
United_1$age_range[which(United_1$age_range=="56-65")]=5
United_1$age_range[which(United_1$age_range==">65")]=6
United_1$highest_education_level[which(United_1$highest_education_level=="university_masters")]=1
United_1$highest_education_level[which(United_1$highest_education_level=="university_degree")]=2
United_1$highest_education_level[which(United_1$highest_education_level=="university_doctorate")]=3
United_1$highest_education_level[which(United_1$highest_education_level=="secondary")]=4
United_1$highest_education_level[which(United_1$highest_education_level=="less_than_secondary")]=5
United_1$highest_education_level[which(United_1$highest_education_level=="professional")]=6
United_1$highest_education_level[which(United_1$highest_education_level=="tertiary")]=7
United_1$highest_education_level[which(United_1$highest_education_level=="apprenticeship")]=8
United_1
view(United_1)
gc()

data1 = data.frame(gender=as.numeric(United_1$gender),age_range=as.numeric(United_1$age_range),
                   highest_education_level=as.numeric(United_1$highest_education_level),
                   Number_of_courses=as.numeric(United_1$Number_of_courses))
data1
data1=na.omit(data1)
fit.full=lm(Number_of_courses~gender+age_range+highest_education_level,data=data1)
data1
summary(fit.full) 
plot(fit.full)
plot(data1$Number_of_courses,predict(fit.full,data1))


