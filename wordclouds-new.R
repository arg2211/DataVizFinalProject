
# -------------- for hillary
# reproductive
dat2cloud.hc.reproductive <- subset(clinton_sen, topics=="reproductive_rights")
text2cloud.hc.reproductive <- dat2cloud.hc.reproductive$tweet
corp.hc.reproductive <- Corpus(VectorSource(text2cloud.hc.reproductive))
wordcloud(corp.hc.reproductive, max.words=175, random.color=F, random.order=F, colors=col)

# violence
dat2cloud.hc.violence <- subset(clinton_sen, topics=="violence_against_women")
text2cloud.hc.violence <- dat2cloud.hc.violence$tweet
corp.hc.violence <- Corpus(VectorSource(text2cloud.hc.violence))
wordcloud(corp.hc.violence, max.words=175, random.color=F, random.order=F, colors=col)

# professional
dat2cloud.hc.professional <- subset(clinton_sen, topics=="professional_gap")
text2cloud.hc.professional <- dat2cloud.hc.professional$tweet
corp.hc.professional <- Corpus(VectorSource(text2cloud.hc.professional))
wordcloud(corp.hc.professional, max.words=175, random.color=F, random.order=F, colors=col)

# intersectionality
dat2cloud.hc.intersectionality <- subset(clinton_sen, topics=="intersectionality")
text2cloud.hc.intersectionality <- dat2cloud.hc.intersectionality$tweet
corp.hc.intersectionality <- Corpus(VectorSource(text2cloud.hc.intersectionality))
wordcloud(corp.hc.intersectionality, max.words=175, random.color=F, random.order=F, colors=col)

# feminism
dat2cloud.hc.feminism <- subset(clinton_sen, topics=="feminism")
text2cloud.hc.feminism <- dat2cloud.hc.feminism$tweet
corp.hc.feminism <- Corpus(VectorSource(text2cloud.hc.feminism))
wordcloud(corp.hc.feminism, max.words=175, random.color=F, random.order=F, colors=col)

# men
dat2cloud.hc.men <- subset(clinton_sen, topics=="men")
text2cloud.hc.men <- dat2cloud.hc.men$tweet
corp.hc.men <- Corpus(VectorSource(text2cloud.hc.men))
wordcloud(corp.hc.men, max.words=175, random.color=F, random.order=F, colors=col)

# -------------- for ted
# reproductive
dat2cloud.tc.reproductive <- subset(cruz_sen, topics=="reproductive_rights")
text2cloud.tc.reproductive <- dat2cloud.tc.reproductive$tweet
corp.tc.reproductive <- Corpus(VectorSource(text2cloud.tc.reproductive))
wordcloud(corp.tc.reproductive, max.words=175, random.color=F, random.order=F, colors=col)

# violence
dat2cloud.tc.violence <- subset(cruz_sen, topics=="violence_against_women")
text2cloud.tc.violence <- dat2cloud.tc.violence$tweet
corp.tc.violence <- Corpus(VectorSource(text2cloud.tc.violence))
wordcloud(corp.tc.violence, max.words=175, random.color=F, random.order=F, colors=col)

# professional
dat2cloud.tc.professional <- subset(cruz_sen, topics=="professional_gap")
text2cloud.tc.professional <- dat2cloud.tc.professional$tweet
corp.tc.professional <- Corpus(VectorSource(text2cloud.tc.professional))
wordcloud(corp.tc.professional, max.words=175, random.color=F, random.order=F, colors=col)

# intersectionality
dat2cloud.tc.intersectionality <- subset(cruz_sen, topics=="intersectionality")
text2cloud.tc.intersectionality <- dat2cloud.tc.intersectionality$tweet
corp.tc.intersectionality <- Corpus(VectorSource(text2cloud.tc.intersectionality))
wordcloud(corp.tc.intersectionality, max.words=175, random.color=F, random.order=F, colors=col)

# feminism
dat2cloud.tc.feminism <- subset(cruz_sen, topics=="feminism")
text2cloud.tc.feminism <- dat2cloud.tc.feminism$tweet
corp.tc.feminism <- Corpus(VectorSource(text2cloud.tc.feminism))
wordcloud(corp.tc.feminism, max.words=175, random.color=F, random.order=F, colors=col)

# men
dat2cloud.tc.men <- subset(cruz_sen, topics=="men")
text2cloud.tc.men <- dat2cloud.tc.men$tweet
corp.tc.men <- Corpus(VectorSource(text2cloud.tc.men))
wordcloud(corp.tc.men, max.words=175, random.color=F, random.order=F, colors=col)

# -------------- for bernie
# reproductive
dat2cloud.bs.reproductive <- subset(sanders_sen, topics=="reproductive_rights")
text2cloud.bs.reproductive <- dat2cloud.bs.reproductive$tweet
corp.bs.reproductive <- Corpus(VectorSource(text2cloud.bs.reproductive))
wordcloud(corp.bs.reproductive, max.words=175, random.color=F, random.order=F, colors=col)

# violence
dat2cloud.bs.violence <- subset(sanders_sen, topics=="violence_against_women")
text2cloud.bs.violence <- dat2cloud.bs.violence$tweet
corp.bs.violence <- Corpus(VectorSource(text2cloud.bs.violence))
wordcloud(corp.bs.violence, max.words=175, random.color=F, random.order=F, colors=col)

# professional
dat2cloud.bs.professional <- subset(sanders_sen, topics=="professional_gap")
text2cloud.bs.professional <- dat2cloud.bs.professional$tweet
corp.bs.professional <- Corpus(VectorSource(text2cloud.bs.professional))
wordcloud(corp.bs.professional, max.words=175, random.color=F, random.order=F, colors=col)

# intersectionality
dat2cloud.bs.intersectionality <- subset(sanders_sen, topics=="intersectionality")
text2cloud.bs.intersectionality <- dat2cloud.bs.intersectionality$tweet
corp.bs.intersectionality <- Corpus(VectorSource(text2cloud.bs.intersectionality))
wordcloud(corp.bs.intersectionality, max.words=175, random.color=F, random.order=F, colors=col)

# feminism
dat2cloud.bs.feminism <- subset(sanders_sen, topics=="feminism")
text2cloud.bs.feminism <- dat2cloud.bs.feminism$tweet
corp.bs.feminism <- Corpus(VectorSource(text2cloud.bs.feminism))
wordcloud(corp.bs.feminism, max.words=175, random.color=F, random.order=F, colors=col)

# men
dat2cloud.bs.men <- subset(sanders_sen, topics=="men")
text2cloud.bs.men <- dat2cloud.bs.men$tweet
corp.bs.men <- Corpus(VectorSource(text2cloud.bs.men))
wordcloud(corp.bs.men, max.words=175, random.color=F, random.order=F, colors=col)


# -------------- for donald
# reproductive
dat2cloud.dt.reproductive <- subset(trump_sen, topics=="reproductive_rights")
text2cloud.dt.reproductive <- dat2cloud.dt.reproductive$tweet
corp.dt.reproductive <- Corpus(VectorSource(text2cloud.dt.reproductive))
wordcloud(corp.dt.reproductive, max.words=175, random.color=F, random.order=F, colors=col)

# violence
dat2cloud.dt.violence <- subset(trump_sen, topics=="violence_against_women")
text2cloud.dt.violence <- dat2cloud.dt.violence$tweet
corp.dt.violence <- Corpus(VectorSource(text2cloud.dt.violence))
wordcloud(corp.dt.violence, max.words=175, random.color=F, random.order=F, colors=col)

# professional
dat2cloud.dt.professional <- subset(trump_sen, topics=="professional_gap")
text2cloud.dt.professional <- dat2cloud.dt.professional$tweet
corp.dt.professional <- Corpus(VectorSource(text2cloud.dt.professional))
wordcloud(corp.dt.professional, max.words=175, random.color=F, random.order=F, colors=col)

# intersectionality
dat2cloud.dt.intersectionality <- subset(trump_sen, topics=="intersectionality")
text2cloud.dt.intersectionality <- dat2cloud.dt.intersectionality$tweet
corp.dt.intersectionality <- Corpus(VectorSource(text2cloud.dt.intersectionality))
wordcloud(corp.dt.intersectionality, max.words=175, random.color=F, random.order=F, colors=col)

# feminism
dat2cloud.dt.feminism <- subset(trump_sen, topics=="feminism")
text2cloud.dt.feminism <- dat2cloud.dt.feminism$tweet
corp.dt.feminism <- Corpus(VectorSource(text2cloud.dt.feminism))
wordcloud(corp.dt.feminism, max.words=175, random.color=F, random.order=F, colors=col)

# men
dat2cloud.dt.men <- subset(trump_sen, topics=="men")
text2cloud.dt.men <- dat2cloud.dt.men$tweet
corp.dt.men <- Corpus(VectorSource(text2cloud.dt.men))
wordcloud(corp.dt.men, max.words=175, random.color=F, random.order=F, colors=col)
