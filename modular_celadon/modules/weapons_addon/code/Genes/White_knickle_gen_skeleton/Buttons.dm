/datum/action/cooldown/mutation/bone_spur/left
	name = "Bone Spur (Left Hand)"
	button_icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	button_icon_state = "Bone_butt"
	background_icon_state = "bg_tech_blue"
	cooldown_time = 2 SECONDS
	check_flags = NONE

/datum/action/cooldown/mutation/bone_spur/left/Activate()
	to_chat(owner, span_notice("DEBUG: Left button pressed!"))
	var/mob/living/carbon/human/user = owner
	if(!istype(user))
		return
	var/obj/item/bone_spur/spur = new /obj/item/bone_spur(user)
	user.put_in_hand(spur, 1)
	StartCooldown()

/datum/action/cooldown/mutation/bone_spur/right
	name = "Bone Spur (Right Hand)"
	button_icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	button_icon_state = "Bone_butt"
	background_icon_state = "bg_tech_blue"
	cooldown_time = 2 SECONDS
	check_flags = NONE

/datum/action/cooldown/mutation/bone_spur/right/Activate()
	to_chat(owner, span_notice("DEBUG: Right button pressed!"))
	var/mob/living/carbon/human/user = owner
	if(!istype(user))
		return
	var/obj/item/bone_spur/spur = new /obj/item/bone_spur(user)
	user.put_in_hand(spur, 0)
	StartCooldown()
