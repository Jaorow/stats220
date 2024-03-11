#meme generation script

#suit: Running R on posit Cloud to avoid local setup - https://i.kym-cdn.com/photos/images/newsfeed/001/474/943/b12.jpg
#Looking at notes: running into git issues 10 minutes in https://i.imgflip.com/1ttxqm.jpg

library(magick)

s <- 50 # keep sizing consistent 

w1 <- image_read('https://i.kym-cdn.com/photos/images/newsfeed/001/474/943/b12.jpg')
w1_words <-  image_annotate(w1,text="Running R on Posit Cloud\nto avoid local setup.",size = s, color = "white" ,gravity = "south", boxcolor = "black")
 


w2 <- image_read('https://i.imgflip.com/1ttxqm.jpg')
w2_words <- image_annotate(w2, text="Running into Github \nissues 10 minutes in.",size = s+10, color = "white", gravity = "south",boxcolor = "black")

image_animate(c(w1,w1_words,w2,w2_words),fps = 1) %>% image_write("Project1/my_animation.gif")






