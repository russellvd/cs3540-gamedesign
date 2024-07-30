using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footsteps : MonoBehaviour
{
    public AudioClip footstepsClip;
    public AudioClip sprintClip;
    public float volume = 0.3f;
    public float footstepsPitch = 0.5f; // Slower pitch for footsteps
    public float sprintPitch = 0.8f;   // Slower pitch for sprinting

    private AudioSource footstepsAudioSource;
    private AudioSource sprintAudioSource;

    void Start()
    {
        // Create AudioSource for footsteps
        footstepsAudioSource = gameObject.AddComponent<AudioSource>();
        footstepsAudioSource.clip = footstepsClip;
        footstepsAudioSource.loop = true;
        footstepsAudioSource.volume = volume;
        footstepsAudioSource.pitch = footstepsPitch;

        // Create AudioSource for sprinting
        sprintAudioSource = gameObject.AddComponent<AudioSource>();
        sprintAudioSource.clip = sprintClip;
        sprintAudioSource.loop = true;
        sprintAudioSource.volume = volume;
        sprintAudioSource.pitch = sprintPitch;
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {
            if (Input.GetKey(KeyCode.LeftShift))
            {
                if (!sprintAudioSource.isPlaying)
                {
                    sprintAudioSource.Play();
                    footstepsAudioSource.Stop();
                }
            }
            else
            {
                if (!footstepsAudioSource.isPlaying)
                {
                    footstepsAudioSource.Play();
                    sprintAudioSource.Stop();
                }
            }
        }
        else
        {
            if (footstepsAudioSource.isPlaying)
                footstepsAudioSource.Stop();
            if (sprintAudioSource.isPlaying)
                sprintAudioSource.Stop();
        }
    }
}
