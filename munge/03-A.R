
cyber.security.step.activity_1=bind_rows(cyber.security.1_step.activity,cyber.security.2_step.activity,cyber.security.3_step.activity,cyber.security.4_step.activity ,cyber.security.5_step.activity,cyber.security.6_step.activity,cyber.security.7_step.activity)
#Count the number of answers to each step
(t_2=table(cyber.security.step.activity_1$step))
step_null=cyber.security.step.activity_1 %>% filter(last_completed_at == "")
t_3=table(step_null$step)
t_2=as.data.frame(t_2)
t_3=as.data.frame(t_3)
t_4=data.frame(1:58,1:2)

colnames(t_2) = c("step", "numbers")
colnames(t_3) = c("step", "numbers_null")
colnames(t_4) = c("step","Percentage")

t_4$step=t_3$step
t_4['Percentage'] = t_3$numbers_null/t_2$numbers
t_4$number=t_3$number

t_2
t_3
t_4


#drawings
ggplot(t_2, aes(x = step, y = numbers)) + geom_boxplot() 
ggplot (t_2, aes (x = step, y = numbers, size = numbers, colour =numbers)) +
  # 散点图函数：alpha设置散点透明度
  geom_point (position = "jitter") +
  # 使散点的面积正比与变量值
  scale_size_area () +scale_color_gradient2(low = "yellow", mid = "green", high = "brown")
ggplot(t_3, aes(x = step, y = numbers_null)) +  geom_boxplot()
ggplot (t_3, aes (x = step, y = numbers_null, size = numbers_null, colour =numbers_null)) +
  # 散点图函数：alpha设置散点透明度
  geom_point (position = "jitter") +
  # 使散点的面积正比与变量值
  scale_size_area () +scale_color_gradient2(low = "pink", mid = "red", high = "blue")
ggplot(t_4, aes(x = step, y = Percentage)) + geom_boxplot() 
ggplot (t_4, aes (x = step, y = Percentage, size = Percentage, colour =Percentage)) +
  # 散点图函数：alpha设置散点透明度
  geom_point (position = "jitter") +
  # 使散点的面积正比与变量值
  scale_size_area () +scale_color_gradient2(low = "blue", mid = "orange", high = "purple")

