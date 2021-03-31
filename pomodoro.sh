#!/bin/bash

pomodoro(){
# Play song 1500 seconds
    sleep 1500 && speaker-test -t sine -f 150 -p 20 -l 1


# pop up box
    zenity --warning --icon-name='face-angel' --window-icon='./pomodoro.png' --width=300 --text="Your pomodoro session just ended. \nHave a well deserved 5 minutes break" --title="POMODORO" 2> /dev/null

# play song after 300 seconds
    sleep 300 && speaker-test -t sine -f 160 -p 20 -l 1
##  sleep 300 && mpg321 /home/warturtle/Music/alerts/ding.mp3 2> /dev/null

# pop up box
    zenity --warning --icon-name='face-angel' --window-icon='./pomodoro.png' --width=300 --text="Back to work" --title="POMODORO" 2> /dev/null
    }


pomodoro4(){
    # Begin the pomodoros
    numberOfPomodoros=`zenity --entry --icon-name=face-angel --window-icon=/home/warturtle/scripts/images/pomodoro.png --title="POMODORO" --text="How many pomodoros today, sir?" 2> \dev\null`

    # loop over the pomodoros
    for i in $(seq 1 ${numberOfPomodoros})
    do pomodoro
    done

    # end the pomodoros
    espeak "EXTERMINATE"
}


pomodoro4
