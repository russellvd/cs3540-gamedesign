using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public float mouseSensitivity = 100f;
    public Transform playerBody;

    private float xRotation = 0f;

    void Start()
    {

        playerBody = transform.parent;
        // Lock the cursor to the center of the screen and hide it
        Cursor.lockState = CursorLockMode.Locked;
    }

    void Update()
    {
        float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
        float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

        // Rotate the player body left and right
        playerBody.Rotate(Vector3.up * mouseX);

        // PREVENT CAMERA FLIPPING
        xRotation -= mouseY;
        xRotation = Mathf.Clamp(xRotation, -90f, 90f);

        // Apply the vertical rotation to the camera
        transform.localRotation = Quaternion.Euler(xRotation, 0f, 0f);
    }
}
