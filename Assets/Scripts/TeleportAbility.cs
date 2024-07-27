using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class TeleportAbility : MonoBehaviour
{
    public GameObject projectilePrefab;
    public float projectileSpeed = 100;

    public AudioClip teleportSFX;

    public Image reticleImage;
    public Color reticleDementorColor;

    public float cooldownTime = 3f;
    private float nextFireTime = 0f;


    Color originalReticleColor;

    // Start is called before the first frame update
    void Start()
    {
        originalReticleColor = reticleImage.color;
    }

    // Update is called once per frame
    void Update()
    {
        GameObject[] existingProjectiles = GameObject.FindGameObjectsWithTag("TeleportSphere");

        if (Time.time > nextFireTime)
        {
            if (Input.GetButtonDown("Fire1"))
            {
                Vector3 screenCenter = new Vector3(Screen.width / 2, Screen.height / 2, 0);
                Ray ray = Camera.main.ScreenPointToRay(screenCenter);
                RaycastHit hit;

                Vector3 spawnPosition;
                spawnPosition = ray.GetPoint(2);

                foreach (GameObject proj in existingProjectiles)
                {
                    Destroy(proj);
                }

                // Instantiate the new projectile
                GameObject projectile = Instantiate(projectilePrefab, spawnPosition, transform.rotation) as GameObject;
                Rigidbody rb = projectile.GetComponent<Rigidbody>();
                rb.AddForce(ray.direction * projectileSpeed, ForceMode.VelocityChange);

                // Set the cooldown timer
                nextFireTime = Time.time + cooldownTime;
                StartCoroutine(FreezeProjectileAfterTime(projectile, 1f));

            }

        }

        if (Input.GetKeyDown(KeyCode.R))
        {
            CharacterController controller = this.GetComponent<CharacterController>();
            if (existingProjectiles.Length > 0)
            {
                Vector3 teleportPosition = GameObject.FindGameObjectWithTag("TeleportSphere").transform.position;

                if (controller != null)
                {
                    controller.enabled = false;
                    this.transform.position = teleportPosition;
                    controller.enabled = true;
                }
            }
        }

    }

    private IEnumerator FreezeProjectileAfterTime(GameObject projectile, float delay)
    {
        yield return new WaitForSeconds(delay);

        if (projectile != null)
        {
            Rigidbody rb = projectile.GetComponent<Rigidbody>();
            rb.constraints = RigidbodyConstraints.FreezePosition;
        }
    }



    private void FixedUpdate()
    {
        RectileEffect();
    }

    void RectileEffect()
    {
        // RaycastHit hit;

        /*
        if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity))
        {
            if (hit.collider.CompareTag("Dementor"))
            {
                reticleImage.color = Color.Lerp(reticleImage.color,
                    reticleDementorColor, Time.deltaTime * 2);

                reticleImage.transform.localScale = Vector3.Lerp(
                    reticleImage.transform.localScale, new Vector3(0.7f, 0.7f, 1),
                    Time.deltaTime * 2);

            }
            else
            {
                reticleImage.color = Color.Lerp(reticleImage.color,
                    originalReticleColor, Time.deltaTime * 2);

                reticleImage.transform.localScale = Vector3.Lerp(
                    reticleImage.transform.localScale, Vector3.one,
                    Time.deltaTime * 2);
            }

        }
        */
    }
}
