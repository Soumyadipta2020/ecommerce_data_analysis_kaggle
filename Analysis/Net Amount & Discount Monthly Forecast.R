# Set Working Directory ####
setwd(paste0(getwd()[1], "/Analysis"))

# Library ####
library(dplyr, warn.conflicts = FALSE)
library(stringr)
library(tidyr)
library(plotly)

# Read Data ####
df <- read.csv("data/ecommerce_data.csv", header = TRUE)
head(df)

# Data Structure ####
str(df)

# Column Names Modifications ####
colnames(df) <- str_squish(gsub("\\.", " ", colnames(df)))

# Process Data (Outliers replaced with median) ####
df <- df |>
  mutate(
    `Gross Amount` = as.numeric(`Gross Amount`),
    `Net Amount` = as.numeric(`Net Amount`),
    `Discount Amount INR` = as.numeric(`Discount Amount INR`)
  ) |>
  mutate(
    `Gross Amount` = if_else(
      `Gross Amount` %in% boxplot.stats(`Gross Amount`)$out,
      median(`Gross Amount`, na.rm = TRUE),
      `Gross Amount`
    ),
    `Net Amount` = if_else(
      `Net Amount` %in% boxplot.stats(`Net Amount`)$out,
      median(`Net Amount`, na.rm = TRUE),
      `Net Amount`
    ),
    `Discount Amount INR` = if_else(
      `Discount Amount INR` %in% boxplot.stats(`Discount Amount INR`)$out,
      median(`Discount Amount INR`, na.rm = TRUE),
      `Discount Amount INR`
    )
  ) |>
  mutate(`Purchase Date` = lubridate::floor_date(
    as.Date(`Purchase Date`, format = "%d/%m/%Y"),
    unit = "month"
  )) |>
  group_by(`Purchase Date`) |>
  summarise(
    `Gross Amount` = sum(`Gross Amount`, na.rm = TRUE),
    `Net Amount` = sum(`Net Amount`, na.rm = TRUE),
    `Discount Amount INR` = sum(`Discount Amount INR`, na.rm = TRUE)
  ) |>
  ungroup() |>
  pivot_longer(
    cols = !c("Purchase Date"),
    names_to = "Amount Type",
    values_to = "Amount"
  ) |>
  filter(`Amount Type` != "Gross Amount")

# Plot ####
plot_ly(df,
  x = ~`Purchase Date`, y = ~`Amount`,
  color = ~`Amount Type`,
  type = "bar"
) |>
  layout(
    title = "Monthly Financial Metrics",
    barmode = "stack",
    showlegend = TRUE
  )

# A seasonal pattern is observed in the Net Amount
# Discount Amount is relatively stable over time.

# Style Active File ####
# styler:::style_active_file()
