using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CamTeleport : MonoBehaviour
{
    public Vector2 cameraChange;
    public Vector3 playerChange;
    public CameraMovement cam;
    public GameObject camer;
    public bool needText;
    public string placeName;
    public GameObject text;
    public GameObject player;
    public Text placeText;


    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            cam.room = true;
            
        }
    }
}
