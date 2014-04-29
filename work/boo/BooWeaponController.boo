import UnityEngine
		
class BooWeaponController(MonoBehaviour):
	
	public shot as GameObject
	public shotSpawn as Transform
	public fireRate as single
	public delay as single
	
	def Start() as void:
		InvokeRepeating("Fire", delay, fireRate);
	
	def Fire() as void:
		Instantiate(shot, shotSpawn.position, shotSpawn.rotation)
		audio.Play()