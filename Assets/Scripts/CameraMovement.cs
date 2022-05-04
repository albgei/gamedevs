/*



    // Update is called once per frame
    void LateUpdate()
    {
        if(transform.position != target.position)
        {
            Vector3 targetPosition = new Vector3(target.position.x, target.position.y, transform.position.z);

            targetPosition.x = Mathf.Clamp(targetPosition.x, minPosition.x, maxPosition.x);
            targetPosition.y = Mathf.Clamp(targetPosition.y, minPosition.y, maxPosition.y);

            transform.position = Vector3.Lerp(transform.position, targetPosition, smoothing);


        }
    }
}*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovement : MonoBehaviour
{
    public Transform target;
    public float smoothing;
    public Vector2 maxPosition;
    public Vector2 minPosition;
    public RectTransform bounds;
    public RectTransform boundsHouse;
    public Camera cam;
    public Vector2 offset;
    private float xmin, xmax, ymin, ymax;
    public bool room;
    public bool first;


    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void LateUpdate()
    {
        if (transform.position != target.position && !room)
        {
            Vector3 targetPosition = new Vector3(target.position.x, target.position.y, transform.position.z);


            xmax = bounds.position.x + (bounds.lossyScale.x / 2) - (cam.orthographicSize * cam.aspect) + offset.x;
            xmin = bounds.position.x - (bounds.lossyScale.x / 2) + (cam.orthographicSize * cam.aspect) + offset.x;
            ymax = bounds.position.y + (bounds.lossyScale.y / 2) - (cam.orthographicSize) + offset.y;
            ymin = bounds.position.y - (bounds.lossyScale.y / 2) + (cam.orthographicSize) + offset.y;

            targetPosition.x = Mathf.Clamp(targetPosition.x, xmin, xmax);
            targetPosition.y = Mathf.Clamp(targetPosition.y, ymin, ymax);

            transform.position = Vector3.Lerp(transform.position, targetPosition, smoothing);


        }else if(room && transform.position != target.position)
        {
            Vector3 targetPosition = new Vector3(target.position.x, target.position.y, transform.position.z);
            Debug.Log("IM HERE");

            xmax = (boundsHouse.position.x + (boundsHouse.lossyScale.x / 2) - (cam.orthographicSize * cam.aspect) + offset.x);
            xmin = (boundsHouse.position.x - (boundsHouse.lossyScale.x / 2) + (cam.orthographicSize * cam.aspect) + offset.x);
            ymax = (boundsHouse.position.y + (boundsHouse.lossyScale.y / 2) - (cam.orthographicSize) + offset.y);
            ymin = (boundsHouse.position.y - (boundsHouse.lossyScale.y / 2) + (cam.orthographicSize) + offset.y);

            targetPosition.x = Mathf.Clamp(targetPosition.x, xmin, xmax);
            targetPosition.y = Mathf.Clamp(targetPosition.y, ymin, ymax);

            if(first)
            {
                transform.position = Vector3.Lerp(transform.position, targetPosition, smoothing);
                first = false;
            }
            else
            {
                transform.position = Vector3.Lerp(transform.position, targetPosition, 100);
            }
        }
    }
}

