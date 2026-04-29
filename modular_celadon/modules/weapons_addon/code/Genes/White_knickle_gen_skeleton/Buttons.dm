/datum/action/cooldown/mutation/bone_spur/left
	name = "Bone Spur (Left Hand)"
	button_icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	button_icon_state = "Bone_butt"
	background_icon_state = "bg_tech_blue"
	cooldown_time = 25 SECONDS
	check_flags = NONE

/datum/action/cooldown/mutation/bone_spur/left/Activate()
	to_chat(owner, span_notice("You concentrate to extend a bone spur from your left hand..."))
	if(!do_after(owner, 1 SECONDS, target = owner))
		to_chat(owner, span_warning("You fail to extend a bone spur!"))
		return

	var/mob/living/carbon/human/user = owner
	if(!istype(user))
		return

	var/obj/item/bone_spur/spur = new /obj/item/bone_spur(user)
	if(user.put_in_hand(spur, 1))
		StartCooldown()
	else
		to_chat(user, span_warning("Your left hand is busy!"))
		qdel(spur)

/datum/action/cooldown/mutation/bone_spur/right
	name = "Bone Spur (Right Hand)"
	button_icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	button_icon_state = "Bone_butt"
	background_icon_state = "bg_tech_blue"
	cooldown_time = 25 SECONDS
	check_flags = NONE

/datum/action/cooldown/mutation/bone_spur/right/Activate()
	to_chat(owner, span_notice("You concentrate to extend a bone spur from your right hand..."))
	if(!do_after(owner, 1 SECONDS, target = owner))
		to_chat(owner, span_warning("You fail to extend a bone spur!"))
		return

	var/mob/living/carbon/human/user = owner
	if(!istype(user))
		return

	var/obj/item/bone_spur/spur = new /obj/item/bone_spur(user)
	if(user.put_in_hand(spur, 2))
		StartCooldown()
	else
		to_chat(user, span_warning("Your right hand is busy!"))
		qdel(spur)
