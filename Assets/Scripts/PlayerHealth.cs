using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour
{
    public static int startingHealth = 3;
    int currentHealth;
    public Image heart1;
    public Image heart2;
    public Image heart3;
    public Vector3 teleportPosition = new Vector3(0, 2f, -120f);
    public AudioClip hit;

    void Start()
    {
        currentHealth = startingHealth;
    }

    // Update is called once per frame
    void Update()
    {

    }

    // if the player takes damage, teleport him to spawn with a blackened heart!
    public void TakeDamage(int damage)
    {
        if (currentHealth > 0)
        {
            currentHealth -= 1;
            // erase the heart
            if (currentHealth == 1)
            {
                Debug.Log("PLAYING THE FUCKING SOUND");
                AudioSource.PlayClipAtPoint(hit, teleportPosition);
                heart2.color = Color.black;
                TeleportPlayer();
            }
            else if (currentHealth == 2)
            {
                Debug.Log("PLAYING THE FUCKING SOUND");
                AudioSource.PlayClipAtPoint(hit, teleportPosition);

                heart3.color = Color.black;
                TeleportPlayer();
            }
        }

        if (currentHealth <= 0)
        {
            heart1.color = Color.black;
            PlayerDies();
        }


        Debug.Log("Current health: " + currentHealth);
    }

    void PlayerDies()
    {
        Debug.Log("dead");

        TeleportPlayer();
        transform.Rotate(-90, 0, 0, Space.Self);
        FindFirstObjectByType<LevelManager>().LevelLost();
        // reset hearts
        heart1.color = Color.white;
        heart2.color = Color.white;
        heart3.color = Color.white;
        currentHealth = startingHealth;

    }

    void TeleportPlayer()
    {
        CharacterController controller = GetComponent<CharacterController>();
        if (controller != null)
        {
            controller.enabled = false;
            transform.position = teleportPosition;
            controller.enabled = true;
        }
        // Teleport the object to the specified position
        gameObject.transform.position = teleportPosition;
    }

}
