# we set the working directory to the folder that contains the app.r file
# (by clicking on the settings gear next to more in the files panel)
# motivation for doing this, it would simplify the hosting of the app 
# on hugging face which we'll do in our assignment 03

df = readxl::read_excel(path = 'all_data_M_2024.xlsx', sheet=1,
                        na = c("", "**", "~", "*", "#") # for illustration
                        )

querychat::querychat_app(
  df,
  "our_data",
  greeting = "Welcome to Cam's Data Explorer App",
  client = "gpt-5-mini-2025-08-07"
)


