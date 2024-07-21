using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleporterScript : MonoBehaviour
{
    // The teleport position
    public Vector3 teleportPosition = new Vector3(0, 0.5f, 0);
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Debug.Log("Collision detected with player. Teleporting to: " + teleportPosition);
            CharacterController controller = other.GetComponent<CharacterController>();
            if (controller != null)
            {
                controller.enabled = false;
                other.transform.position = teleportPosition;
                controller.enabled = true;
            }
            // Teleport the object to the specified position
            other.gameObject.transform.position = teleportPosition;
        }
    }
}
