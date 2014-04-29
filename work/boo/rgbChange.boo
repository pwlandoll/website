import UnityEngine
import System.Collections

// Script for Unity
// Attach to game object, and on keypress the object turns colors

public class rgbChange(MonoBehaviour):

    private def Update():
        if Input.GetKeyDown(KeyCode.R):
            gameObject.renderer.material.color = Color.red
        if Input.GetKeyDown(KeyCode.G):
            gameObject.renderer.material.color = Color.green
        if Input.GetKeyDown(KeyCode.B):
            gameObject.renderer.material.color = Color.blue
