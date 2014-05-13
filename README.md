Url:
http://www.quora.com/What-are-the-best-ways-to-increase-productivity-as-a-web-developer-programmer

Summary:
This is an example to demostrate an approach in managing/coding your own snippets within your keystroking-fingertip without having to memorizing any new codes, and to access your saved snippets thus making it readily generating a file with your picked snippet(s) from command line.

GIT:
https://github.com/faroncoder/snippet-runtime-example

Discussion:
What are the best ways to increase productivity as a web developer/programmer?

Posted Response:
Interesting!  I'm glad to see this discussion ... and this is what I do and it spared me so many headaches.  This applies to any programming language of your choice.

My perspective on "productivity" is to be smart with your time, and to intelligently harness the power of your CPU to your advantage.  Granted - it sounds complicated, but with my example below, you will see that it is very simple, and very time-efficient, and...quite logic to have it under your sleeves.

Here's a basic example:

    <html>
    <head>
    <title>Hello World!</title>
    </head>
    <body>
    </body>
    </html>
    
This is something I often sighed of frustration followed by a raspberrying mouth when I am tired of writing such these same line every time, especially `<body>` and `</body>` --- all over again and again, practically all day.

So, instead, I created my own bash shell script and I could fire any snippet right off by command line!  With this approach, I save a snippet as an individualized external file and use this file as stand-alone snippet (the filename makes it possible for me to index the rest of snippets in my library).

Example: Creating a formatted starter html/php/js file with my preferred structure of codes. 

    #!/bin/bash
    binpull="dat"
    ### $binpull is where you keep your individualized snippets as external files
    echo -n "which file type ([h]tml|[p]hp|[j]query)? "
    read typetemp
    if [ $typetemp == "h" ]
        then
    filenode="index.html"
        cp $binpull/html5.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
     fi
     if [ $typetemp == "p" ]
        then
        filenode="index.php"
        cp $binpull/php.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
     fi
      if [ $typetemp == "j" ]
        then
        filenode="index.js"
        cp $binpull/jquery.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
      fi
      exit 0


This bash shell would be saved in name of `index-new.sh`, and been granted permission as executable `$ chmod +x index-new.sh`.  I protect my library from any possible disaster such as overwriting or deleting  by symlinking my originals to my environment path where system commands are in.  (i.e.  `/home/username/bin` as an example).

Voila!  At command line, I just type `index-new` and I can specific my system to generate a file on the fly with my picked snippet(s) or even combining several sets of snippets into a single file -- all at your keystroking fingertip....without having to rewrite the same line all over of times nor even having to remember how it should be properly coded (especially typos in .JSON).

Sample package found at https://github.com/faroncoder/snippet-runtime-example

(Friendly note:: this is lazily-quick written script for this article purpose - so you'd easily follow it as much as possible.  It also is a "building block" to start off with if you want to adopt this approach)

This approach has enabled me to develop 3-weeks project to be 1-week as deliverable (1 week = remember, you need to debug, verify urls and such).  As of today, I am surprised I still opted to this, than Webstorm or other IDE platform even though, I do use them as resources for me to extract a snippet into my library.  It hasn't ceased to fail me, at which I found this extremely beneficial toward to my productivity in development.

So, there you go - the "Jack-of-All-Trade" card under your coder's sleeve.  :)

