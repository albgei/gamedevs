using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DoorType
{
    key,
    enemy,
    button
}

public class Door : Interactable
{

    [Header("Door variables")]
    public DoorType thisDoorType;
    public bool open = false;
    public Inventory playerInventory;
    public SpriteRenderer doorSprite;
    public BoxCollider2D physicsCollider;


    private void Update()
    {
        if(Input.GetButtonDown("attack"))
        {
            if(playerInRange && thisDoorType == DoorType.key)
            {
                //Does the player have a key?
                if(playerInventory.numberOfKeys > 0)
                {
                    //Remove a player Key
                    playerInventory.numberOfKeys--;
                    //If so, then call the open method
                    Open();
                }
            }
        }
    }

    public void Open()
    {
        //Turn off the doors sprite renderer
        doorSprite.enabled = false;
        //set open to true
        open = true;
        //turn off the doors box collider
        physicsCollider.enabled = false;
    }

    public void Close()
    {
        //Turn on the doors sprite renderer
        doorSprite.enabled = true;
        //set open to false
        open = false;
        //turn on the doors box collider
        physicsCollider.enabled = true;
    }

}
