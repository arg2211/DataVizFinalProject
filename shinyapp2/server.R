#install.packages("shiny")
#install.packages("ggplot2")

#setwd("C:/Users/Amanda/Desktop/fromFriday/shinyapp2")
library(ggplot2)

# load necessary files
clinton_day <- read.csv("clinton_day.csv", header = TRUE)
cruz_day <- read.csv("cruz_day.csv", header = TRUE)
sanders_day <- read.csv("sanders_day.csv", header = TRUE)
trump_day <- read.csv("trump_day.csv", header = TRUE)

ds <- data.frame(cands = c("Bernie Sanders", "Donald Trump","Hillary Clinton", "Ted Cruz"), counts = c(3468407, 5566724, 3025211, 2853617))

# shiny server begins here
shinyServer(function(input, output) {

# pie chart for total tweets split by candidate
  output$pie <- renderPlot({
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
  })
    
# word clouds
  output$cloud <- renderImage({
    # When input$n is 3, filename is ./images/image3.jpeg
    filename <- normalizePath(file.path('./images', paste(input$cloudvar1, '.', input$cloudvar2, '.png', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Candidate: ", input$cloudvar1,
                     "Topic:", input$cloudvar2))
  }, deleteFile = FALSE)
  
# tweet volume, x = topics
  
  # Hillary
  output$barHC <- renderPlot({
    ggplot(clinton_day, aes(group, count)) + 
      geom_bar(stat = "identity", fill = "#751A6D") +
      theme_minimal()+
      labs(x = "Topics", y = "Number of Tweets") +
      scale_x_discrete(breaks = c("feminism","intersectionality","men","professional_gap","reproductive_rights","violence_against_women"), 
                       labels = c("Feminism","Intersectionality","Men's Role","Professional Gap","Reproductive Rights","Violence Against Women"))
    
  })

  # Ted
  output$barTC <- renderPlot({
    ggplot(cruz_day, aes(group, count)) + 
      geom_bar(stat = "identity", fill = "#26A7A3") +
      theme_minimal()+
      labs(x = "Topics", y = "Number of Tweets") +
      scale_x_discrete(breaks = c("feminism","intersectionality","men","professional_gap","reproductive_rights","violence_against_women"), 
                       labels = c("Feminism","Intersectionality","Men's Role","Professional Gap","Reproductive Rights","Violence Against Women"))
    
  })  
  
  # Bernie
  output$barBS <- renderPlot({
    ggplot(sanders_day, aes(group, count)) + 
      geom_bar(stat = "identity", fill = "#B7EF8E") +
      theme_minimal()+
      labs(x = "Topics", y = "Number of Tweets") +
      scale_x_discrete(breaks = c("feminism","intersectionality","men","professional_gap","reproductive_rights","violence_against_women"), 
                       labels = c("Feminism","Intersectionality","Men's Role","Professional Gap","Reproductive Rights","Violence Against Women"))
    
  })  
  
  # Donald
  output$barDT <- renderPlot({
    ggplot(trump_day, aes(group, count)) + 
      geom_bar(stat = "identity", fill = "#FF6F41") +
      theme_minimal()+
      labs(x = "Topics", y = "Number of Tweets") +
      scale_x_discrete(breaks = c("feminism","intersectionality","men","professional_gap","reproductive_rights","violence_against_women"), 
                       labels = c("Feminism","Intersectionality","Men's Role","Professional Gap","Reproductive Rights","Violence Against Women"))
    
  })  

# sentiment analysis bar charts, one per candidate
  output$sentaplot <- renderImage({
    # When input$n is 3, filename is ./images/image3.jpeg
    filename <- normalizePath(file.path('./sentiment-analysis', paste(input$sentavar, '.day.png', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Candidate: ", input$sentavar))
  }, deleteFile = FALSE)

  output$sentaplotDAY <- renderImage({
    # When input$n is 3, filename is ./images/image3.jpeg
    filename <- normalizePath(file.path('./sentiment-analysis', paste(input$sentavar1, '.bars.png', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Candidate: ", input$sentavar))
  }, deleteFile = FALSE)

  output$sentaMAP <- renderImage({
    # When input$n is 3, filename is ./images/image3.jpeg
    filename <- normalizePath(file.path('./sentiment-analysis', paste(input$mapvar1, '.', input$mapvar2, '.png', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Candidate: ", input$mapvar1,
                     "Topic:", input$mapvar2))
  }, deleteFile = FALSE)
  

  
})