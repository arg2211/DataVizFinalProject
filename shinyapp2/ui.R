library(shiny)

shinyUI(
  
  navbarPage("Our App",
    
    # Big Tab 1 - About           
    tabPanel("About",
             
             tags$div(
               tags$h1("Tweeting about Women's Rights and the 2016 Election"),
               tags$h5("Created by Ling Bai and Amanda Gates"),
               tags$hr(),
               tags$h5("Welcome to our Shiny App!"),
               tags$h5("Here, we visualize numerous aspects of tweets about the final four presidential candidates: Hillary Clinton, Ted Cruz, Bernie Sanders, and Donald Trump. We focused on how Twitter users discuss the candidates and women's rights issues."),
               tags$h5("The tweets used here were collected from February 7, 2016 to April 30, 2016, totaling 84 days. That's 120,960 minutes worth of tweets!"),
               tags$h5("Click on the panel tabs to view different plots about these tweets.")
             )
    ),
    
    # Big Tab 2 - Bar Charts w/ Counts of Total Topics & Daily Topics
    navbarMenu("Tweet Volume",
               # Sub Tab 2.1
               tabPanel("Total Counts",
                        sidebarLayout(
                          sidebarPanel(
                            tags$h4("The number of tweets..."),
                            tags$h5("In the entire data set: 13,917,010"),
                            tags$h5("About Hillary Clinton: 3,025,211"),
                            tags$h5("About Ted Cruz: 2,853,617"),
                            tags$h5("About Bernie Sanders: 3,468,407"),
                            tags$h5("About Donald Trump: 5,566,724"),
                            helpText("Note: Many tweets mention more than one candidate, so the sum of the tweets about each candidate includes duplicates; it adds to 14,913,959 tweets.")
                          ),
                          mainPanel(
                            plotOutput("pie")
                          )
                        )
               ),
               
               # Sub Tab 2.1
               tabPanel("Total Counts by Topic",
                        sidebarLayout(
                          sidebarPanel(
                            helpText("See how Twitter users talk about various women's rights subjects when mentioning different candidates."),
                            radioButtons("barvar",
                                        label = "Select a Candidate:",
                                        choices = c("Hillary Clinton" = "clinton", "Ted Cruz" = "cruz", 
                                                    "Bernie Sanders" = "sanders", "Donald Trump" = "trump"),
                                        selected = "clinton")
                          ),
                          mainPanel(
                            conditionalPanel(
                              condition = "input.barvar == 'clinton'", plotOutput("barHC")
                            ),
                            conditionalPanel(
                              condition = "input.barvar == 'cruz'", plotOutput("barTC")
                            ),
                            conditionalPanel(
                              condition = "input.barvar == 'sanders'", plotOutput("barBS")
                            ),
                            conditionalPanel(
                              condition = "input.barvar == 'trump'", plotOutput("barDT")
                            )
                          )
                        )
               ),
               # Sub Tab 2.2
               tabPanel("Daily Counts by Topic",
                        tags$h5("Click the links below to view the number of tweets per day about each candidate. Hover over the different colored bars for each day to view the exact number of tweets per topic. Each link was created using D3.  To return to this app after clicking one of the links, simply click the 'back' button in your browser."),
                        tags$hr(),
                        tags$a(href="http://bl.ocks.org/LingBai/raw/087ed1939f58e300733735a6d47eac33/", "Hillary Clinton"),
                        tags$hr(),
                        tags$a(href="http://bl.ocks.org/LingBai/raw/afb82768327672f16baf74c4fbdc8307/", "Ted Cruz"),
                        tags$hr(),
                        tags$a(href="http://bl.ocks.org/LingBai/raw/843668391a4517e2f585e5c705758864/", "Bernie Sanders"),
                        tags$hr(),
                        tags$a(href="http://bl.ocks.org/LingBai/raw/a271925e87c53da95cbd5b6651a6347d/", "Donald Trump"),
                        tags$hr()
               )
    ),

    # Big Tab 3 - Word Clouds
    tabPanel("Word Clouds",
      sidebarLayout(
        sidebarPanel(
          helpText("See which words Twitter users include in their tweets about various women's rights subjects when mentioning different candidates. The larger the text size, the more the word appeared in tweets about the selected candidate and topic."),
          selectInput("cloudvar1",
                      label = "Select a Candidate:",
                      choices = c("Hillary Clinton" = "clinton", "Ted Cruz" = "cruz", 
                                  "Bernie Sanders" = "sanders", "Donald Trump" = "trump"),
                      selected = "clinton"
          ),
          selectInput("cloudvar2",
                      label = "Select a Topic:",
                      choices = c("Reproductive Rights" = "reproductive", "Violence Against Women" = "violence", 
                                  "Professional Gap" = "professional", "Intersectionality" = "intersectionality", 
                                  "Feminism" = "feminism", "Men's Roles" = "men"),
                      selected = "reproductive"
          )
        ),
        mainPanel(
          imageOutput("cloud")
        )
      )
    ),
    
    # Big Tab 4 - Sentiment Analysis
    navbarMenu("Tweet Sentiment",
               # Sub Tab 4.1
               tabPanel("Mean Scores by Tweet Count and Topic",
                        sidebarLayout(
                          sidebarPanel(
                            helpText("See how the volume of tweets' mean sentiment scores vary in different women's rights subjects and when mentioning different candidates."),
                            radioButtons("sentavar1",
                                         label = "Select a Candidate:",
                                         choices = c("Hillary Clinton" = "clinton", "Ted Cruz" = "cruz", 
                                                     "Bernie Sanders" = "sanders", "Donald Trump" = "trump"),
                                         selected = "clinton"
                            )
                          ),
                          mainPanel(
                            imageOutput("sentaplotDAY")
                          )
                        )
               ),
               # Sub Tab 4. 2
               tabPanel("Mean Scores by Day and Topic",
                        sidebarLayout(
                          sidebarPanel(
                            helpText("See how the daily mean sentiment scores of tweets vary in different women's rights subjects and when mentioning different candidates."),
                            radioButtons("sentavar",
                                         label = "Select a Candidate:",
                                         choices = c("Hillary Clinton" = "clinton", "Ted Cruz" = "cruz", 
                                                    "Bernie Sanders" = "sanders", "Donald Trump" = "trump"),
                                         selected = "clinton"
                            )
                          ),
                          mainPanel(
                            imageOutput("sentaplot")
                          )
                        )
               )
      
    ),
    
    # Big Tab 5 - Maps
    navbarMenu("Geolocated Tweets",
               # Sub Tab 4.1
               tabPanel("Google Maps",
                        tags$h5("Click the link below to view geolocated tweets in Google Maps. Each candidate has his/her own shape marker and each topic has its own color."),
                        tags$hr(),
                        tags$a(href="https://drive.google.com/open?id=1hWfXZ1OSb7SHFK4dorw_57Qvmto&usp=sharing", "View Tweets with Google Maps"),
                        tags$hr()
               ),
               # Sub Tab 4.2
               tabPanel("Mapped Sentiment Scores",
                        sidebarLayout(
                          sidebarPanel(
                            helpText("See how positive or negative tweets are about various women's rights subjects when mentioning different candidates. The higher the score, the more positive the tweet's sentiment is."),
                            selectInput("mapvar1",
                                        label = "Select a Candidate:",
                                        choices = c("Hillary Clinton" = "clinton", "Ted Cruz" = "cruz", 
                                                    "Bernie Sanders" = "sanders", "Donald Trump" = "trump"),
                                        selected = "clinton"
                            ),
                            selectInput("mapvar2",
                                        label = "Select a Topic:",
                                        choices = c("Reproductive Rights" = "reproductive", "Violence Against Women" = "violence", 
                                                    "Professional Gap" = "professional", "Intersectionality" = "intersectionality", 
                                                    "Feminism" = "feminism", "Men's Roles" = "men"),
                                        selected = "reproductive"
                            )
                          ),
                          mainPanel(
                            imageOutput("sentaMAP")
                          )
                        )
               )
    )
    

    
    
  )
)