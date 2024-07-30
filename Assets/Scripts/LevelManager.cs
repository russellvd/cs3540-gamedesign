using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.SocialPlatforms.Impl;
using System.ComponentModel.Design;

public class LevelManager : MonoBehaviour
{
    public static volatile bool gameOver;

    public Text gameText;

    public AudioClip gameOverSFX;
    public AudioClip gameWonSFX;

    public string nextLevel;


    // Start is called before the first frame update
    void Start()
    {
        gameOver = false;
    }

    // Update is called once per frame
    void Update()
    {
        /*
        if (!gameOver)
        {
            if (countDown > 0)
            {
                countDown -= Time.deltaTime;
            }
            else
            {
                countDown = 0.0f;


                LevelBeat();
            }

            SetTimerText();
            SetScoreText();

        }
        */

    }

    public void LevelLost()
    {
        gameOver = true;
        gameText.text = "YOU LOST! GAME OVER!";
        gameText.gameObject.SetActive(true);
        Camera.main.GetComponent<AudioSource>().pitch = 1;
        AudioSource.PlayClipAtPoint(gameOverSFX, Camera.main.transform.position);

        Invoke("LoadCurrentLevel", 2);
    }

    public void LevelBeat()
    {
        gameOver = true;
        Debug.Log("enemies put down");
        gameText.text = "YOU WIN!";
        gameText.gameObject.SetActive(true);
        Camera.main.GetComponent<AudioSource>().pitch = 2;
        AudioSource.PlayClipAtPoint(gameWonSFX, Camera.main.transform.position);

        if (!string.IsNullOrEmpty(nextLevel))
        {
            Invoke("LoadNextLevel", 2);


        }

    }


    void LoadNextLevel()
    {
        SceneManager.LoadScene(nextLevel);
    }

    void LoadCurrentLevel()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }


}
