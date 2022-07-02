using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicPlayer : MonoBehaviour
{
    public GameObject fieldSong;
    private bool fieldOn;

    public GameObject lakeSong;
    private bool lakeOn;

    public GameObject houseSong;
    private bool houseOn;

    private void Start()
    {
    }

    public void fieldSongPlay()
    {
        fieldOn = !fieldOn;

        if (fieldOn)
        {
            lakeSong.SetActive(false);
            houseSong.SetActive(false);
            fieldSong.SetActive(true);

        }

    }

    public void lakeSongPlay()
    {
        lakeOn = !lakeOn;

        if (lakeOn)
        {
            lakeSong.SetActive(true);
            houseSong.SetActive(false);
            fieldSong.SetActive(false);

        }

    }

}
