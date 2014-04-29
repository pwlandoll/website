import UnityEngine

public class BooMover (MonoBehaviour): 

	public speed as single
		
	def Start ():
		rigidbody.velocity = transform.forward * speed