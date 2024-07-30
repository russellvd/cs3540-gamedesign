using UnityEngine;
using System.Collections.Generic;
using System;
using System.Collections;

public class EnemyPatrol : MonoBehaviour
{
    public float speed = 3.0f;
    public float chaseSpeed = 5.0f;
    public float detectionRange = 10.0f;
    public float fieldOfViewAngle = 45.0f;
    public string checkpointTag = "Checkpoint";
    public string playerTag = "Player";
    public float rotationSpeed = 45.0f;
    public AudioClip screamSFX;

    private Transform player;
    private List<Transform> checkpoints = new List<Transform>();
    private int currentCheckpointIndex = 0;
    private bool goingForward = true;
    private bool chasingPlayer = false;
    private bool isRotating = false;
    private Animator animator;
    private bool stunned = false;

    private Rigidbody rb;
    private Vector3 originalVelocity;

    void Start()
    {
        rb = GetComponent<Rigidbody>();

        animator = GetComponent<Animator>();
        GameObject[] checkpointObjects = GameObject.FindGameObjectsWithTag(checkpointTag);

        

        foreach (GameObject checkpoint in checkpointObjects)
        {
            checkpoints.Add(checkpoint.transform);
        }

        checkpoints.Sort((a, b) => int.Parse(b.name.Substring(4)) - int.Parse(a.name.Substring(4)));


        if (checkpoints.Count == 0)
        {
            Debug.LogError("No checkpoints found. Please add checkpoints with the specified tag.");
        }

        player = GameObject.FindGameObjectWithTag(playerTag).transform;
    }

    void Update()
    {
        if (chasingPlayer)
        {
            ChasePlayer();
        }
        else
        {
            Patrol();
            LookForPlayer();
        }
    }

    void Patrol()
    {

        if (checkpoints.Count == 0) return;

        Transform targetCheckpoint = checkpoints[currentCheckpointIndex];
        MoveTowards(targetCheckpoint.position, speed);
        Debug.Log("Moving towards" + targetCheckpoint.ToString());
        // enemy is walking...
        animator.SetInteger("animState", 1);

        if (Vector3.Distance(transform.position, targetCheckpoint.position) < 0.1f)
        {
            RotateAround();

            if (goingForward)
            {
                currentCheckpointIndex++;
                if (currentCheckpointIndex >= checkpoints.Count)
                {
                    goingForward = false;
                    currentCheckpointIndex -= 2;
                }
            }
            else
            {
                currentCheckpointIndex--;
                if (currentCheckpointIndex < 0)
                {
                    goingForward = true;
                    currentCheckpointIndex += 2;
                }
            }
        }
    }

    IEnumerator RotateAround()
    {
        isRotating = true;
        float rotationAmount = 0;
        Quaternion initialRotation = transform.rotation;

        while (rotationAmount < 360)
        {
            float rotationStep = rotationSpeed * Time.deltaTime;
            transform.rotation = initialRotation * Quaternion.Euler(0, rotationAmount, 0);
            rotationAmount += rotationStep;
            LookForPlayer();
            yield return null;
        }

        isRotating = false;
    }

    void LookForPlayer()
    {
        if (Vector3.Distance(transform.position, player.position) <= detectionRange)
        {
            Vector3 directionToPlayer = (player.position - transform.position).normalized;
            float angle = Vector3.Angle(transform.forward, directionToPlayer);
            if (angle <= fieldOfViewAngle / 2)
            {
                RaycastHit hit;
                if (Physics.Raycast(transform.position, directionToPlayer, out hit, detectionRange))
                {
                    if (hit.collider.CompareTag(playerTag))
                    {
                        animator.SetInteger("animState", 4);
                        Debug.Log("Player detected!");
                        // scream!
                        AudioSource.PlayClipAtPoint(screamSFX, transform.position);
                        chasingPlayer = true;
                    }
                }
            }
        }
    }

    void ChasePlayer()
    {
        animator.SetInteger("animState", 1);
        MoveTowards(player.position, chaseSpeed);

        if (Vector3.Distance(transform.position, player.position) > detectionRange)
        {
            chasingPlayer = false;
            ReturnToNearestCheckpoint();
        }

        if (Vector3.Distance(transform.position, player.position) < 2)
        {
            animator.SetInteger("animState", 2);
            Debug.Log("enemy attacking");
            // damage player
            FindFirstObjectByType<PlayerHealth>().TakeDamage(1);

        }
    }

    void MoveTowards(Vector3 targetPosition, float speed)
    {
        Vector3 direction = (targetPosition - transform.position).normalized;
        transform.position += direction * speed * Time.deltaTime;
        transform.LookAt(targetPosition);
    }

    void ReturnToNearestCheckpoint()
    {
        float shortestDistance = Mathf.Infinity;
        int nearestCheckpointIndex = currentCheckpointIndex;

        for (int i = 0; i < checkpoints.Count; i++)
        {
            float distance = Vector3.Distance(transform.position, checkpoints[i].position);
            if (distance < shortestDistance)
            {
                shortestDistance = distance;
                nearestCheckpointIndex = i;
            }
        }

        currentCheckpointIndex = nearestCheckpointIndex;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Sword"))
        {
            stunned = true;
            animator.SetInteger("animState", 3);
            StartCoroutine(StunCoroutine(5f));
        }
    }

    private IEnumerator StunCoroutine(float duration)
    {
        // Save the original velocity and freeze the enemy
        originalVelocity = rb.velocity;
        rb.velocity = Vector3.zero;
        rb.isKinematic = true; 

        yield return new WaitForSeconds(duration);

        // Unfreeze the enemy and restore its original state
        rb.isKinematic = false;
        rb.velocity = originalVelocity;
        stunned = false;
    }

}
