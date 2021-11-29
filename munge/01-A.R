# Example preprocessing script.
gender <- cyber.security.1_enrolments %>%
  select(learner_id, gender)



#Combine the enrolments and remove the same student ids to find the total number of students
library(dplyr)
cyber.security.enrolments_1=bind_rows(cyber.security.1_enrolments,cyber.security.2_enrolments,cyber.security.3_enrolments,cyber.security.4_enrolments,cyber.security.5_enrolments,cyber.security.6_enrolments,cyber.security.7_enrolments)
cyber.security.enrolments=cyber.security.enrolments_1[!duplicated(cyber.security.enrolments_1$learner_id), ]
dim(cyber.security.enrolments)
