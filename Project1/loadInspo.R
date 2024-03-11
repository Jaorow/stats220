#meme generation script
install.packages("magick")

library(magick)

i <- image_read('https://i.redd.it/756tv1x5byn41.jpg')
print(i)

image_write(i, path = "Project1/inspo_meme.jpg", format = "jpg")

