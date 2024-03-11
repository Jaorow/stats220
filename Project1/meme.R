#meme generation script

#suit: Running R on posit Cloud to avoid local setup - https://i.kym-cdn.com/photos/images/newsfeed/001/474/943/b12.jpg
#Looking at notes: running into git issues 10 minutes in https://i.imgflip.com/1ttxqm.jpg

library(magick)

s <- 50 #keep sizing consistent 

w1 <- image_read('https://i.kym-cdn.com/photos/images/newsfeed/001/474/943/b12.jpg') %>%
  image_annotate(text="Running R on Posit Cloud\nto avoid local setup.",size = s, color = "white" ,gravity = "south", boxcolor = "black")


w2 <- image_read('https://i.imgflip.com/1ttxqm.jpg') %>% 
  image_annotate(text="Running into Github \nissues 10 minutes in.",size = s+10, color = "white", gravity = "south",boxcolor = "black")


combined <- image_scale(image_append(c(image_scale(w1,"300"), image_scale(w2,"300")), stack=TRUE),"300")
print(combined)

combined %>% image_write("Project1/my_meme.png")


