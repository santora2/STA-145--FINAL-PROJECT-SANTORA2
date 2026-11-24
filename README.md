# STA-145--FINAL-PROJECT-SANTORA2
My replication package for my STA-145 final project. I looked into whether a song with a feature artist(s) would present a larger amount of streams than those without a feature artist. I analyzed amount of monthly streams on Spotify and compared those numbers to artist features on each individual song.  

## **Instructions** 
To access and utilize the script, open the "santora2-final_project.(1)R" file, which contains the code for my findings. To access the entire datasset open "1.3 Activity_Music - Data Table Tabular.csv" file.  

## **Data**
The data collected for this project consists of songs from the Spotify charts. Many popular songs include featured artists, so the main goal of this analysis was to find out whether songs with a featured artist receive more Spotify streams than songs without one. I recorded each song's number of Spotify streams and whether it includes a featured artist. Songs with one or more featured artists were coded as [Yes / 1], and songs with no featured artist were coded as [No / 0]. I then compared the average number of streams between these two groups.

## **Operationalization** 
To operationalize number of listens, I went to Spotify and recorded the number of streams each song had received over its history. This variable, spotify_streams, is quantitative, and higher values mean the song has been listened to more.

The concept of a featured artist was operationalized by checking each song's credits on Spotify. A song was coded as having a featured artist if Spotify listed one or more artists in addition to the main artist, usually shown with "feat." or "with" in the song title or as an extra name in the artist credits. Songs with a featured artist were coded as [Yes / 1], and songs with only the main artist were coded as [No / 0]. This variable, featured, is qualitative and was used as a grouping variable to compare the number of streams between songs with and without featured artists.
