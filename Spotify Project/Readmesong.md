# Spotify Song Reccomendor

**Model 1: Search if a song is hot on the billboard list and recommend another one from the same hot list. The robustness of the model allows you to find the song through the artist or the song and in case you write the title badly it will search for the closest value to what you've writen:** 

![Captura de pantalla 2022-03-06 a las 10 35 50](https://user-images.githubusercontent.com/96949872/156917988-3725b770-bf0a-4547-b6fb-642408fd1efd.png)

**Model 2: If the song is not hot in the billboard list, check in your dataframe and recommend one of the same cluster. The model first check for the song in the billboard hotlist. If the song is not among the hot ones, it searchs in the dataframe(formed by 5 different playlists). The whole dataframe is clustered in 8 groups. If the song is found on the dataframe, it makes a recommendation of a song of the same cluster, that is, with similar characteristics:**

![Captura de pantalla 2022-03-06 a las 10 38 34](https://user-images.githubusercontent.com/96949872/156917985-2bfb8c0e-e277-4cbc-bf28-292536c91851.png)

**Model 3: If the song is not on your playlists, there is a last step that is checking in spotify (through the id number) to check it's features and reccomend one of your playlist with similar features, that is, a song that would be in the same cluster than the one introduced:**

![Captura de pantalla 2022-03-06 a las 10 40 11](https://user-images.githubusercontent.com/96949872/156917982-b2df507c-3a67-4b3b-a51c-9802e9b5edc1.png)




