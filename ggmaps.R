library(ggplot2)
## Plot two Democratic candidates & two Republican candidates
ggplot(sanders_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))
ggplot(clinton_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))

ggplot(cruz_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))
ggplot(trump_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))

## Plot two Parties
Democrat_count <- rbind(sanders_count,clinton_count)
ggplot(Democrat_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))

Republican_count <- rbind(cruz_count,trump_count)
ggplot(Republican_count, aes(Topic, Count)) + 
  geom_bar(stat = "identity", aes(fill = Candidate))

#

ggplot(clinton_day, aes(group, count)) + 
  geom_bar(stat = "identity", fill = "#751A6D") +
  theme_minimal()+
  labs(x = "Topics", y = "Number of Tweets") +
  scale_x_discrete(breaks = c("feminism","intersectionality","men","professional_gap","reproductive_rights","violence_against_women"), 
                   labels = c("Feminism","Intersectionality","Men's Role","Professional Gap","Reproductive Rights","Violence Against Women"))
  
# pie chart with plotly
library(plotly)
plot_ly(ds, labels = cands, values = counts, type = "pie", 
        color = cands, 
        colors = c("#B7EF8E","#FF6F41","#751A6D","#26A7A3"),
        mode = "markers") 
%>%
  layout(title = "Total Number of Tweets per Candidate")

# pie chart with ggplot
ds <- data.frame(cands = c("Bernie Sanders", "Donald Trump","Hillary Clinton", "Ted Cruz"),
                 counts = c(3468407, 5566724, 3025211, 2853617))
library(scales)

ggplot(ds, aes(x = "", y = counts, fill = cands)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start=0) +
  theme_minimal()+
  theme(
    axis.title = element_text(size = 24, face = "bold"),
    axis.title.x = element_blank(), 
    axis.title.y = element_blank(),
    panel.border = element_blank(), 
    panel.grid=element_blank(),
    axis.ticks = element_blank(), 
    plot.title=element_text(size = 14, face = "bold"),
    axis.text.x=element_blank()
    ) +
  #geom_text(aes(label = counts), position=position_dodge(width=0.9), vjust=-0.25, hjust=1) +
  ggtitle("Total Tweets per Candidate") +
  scale_fill_manual("Presidential Candidates",
    values = c("#B7EF8E","#FF6F41","#751A6D","#26A7A3"),
    breaks=c("Bernie Sanders", "Donald Trump","Hillary Clinton", "Ted Cruz") )
