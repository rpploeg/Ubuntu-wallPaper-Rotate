Simple bash script that does a few things:
- Download a random image from unsplash.com
- Sets the image as wallpaper using gsettings (gnome)
- copies the image and appends a date stamp to make sure the image doesn't get lost the next time the script runs

You can change the variables in the script to adjust the "random" search a little bit:
- categories=nature,wallpaper (find more categories at https://unsplash.com)
- resolution=desired x resolution
- imagelocation=<insert directory that you want to use for the image>
- wallpaper=<insert file name of the wallpaper>

Personally I created a cron job that runs every hour so my wallpaper get's rotated every once in a while.

Only tested with Ubuntu (GNOME) 18.04 and 20.04 since I expect to be the only user :)
