/obj/item/bone_spur
	name = "bone spur"
	desc = "A sharp, high-density bone shard protruding from the user's hand. Can be thrown or used as a stabbing weapon."
	icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	icon_state = "Bone_spur"
	force = 30
	throwforce = 30
	throw_speed = 3
	throw_range = 12
	sharpness = SHARP_EDGED
	armour_penetration = 30
	w_class = WEIGHT_CLASS_SMALL

/obj/item/bone_spur/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/butchering, \
		speed = 4 SECONDS,\
		effectiveness = 80,\
	)

/obj/item/bone_spur/after_throw(datum/callback/callback)
	. = ..()
	// Кость ломается/исчезает после броска
	qdel(src)

/obj/item/bone_spur/attack(mob/living/target, mob/living/user)
	. = ..()
	if(. && iscarbon(user))
		var/mob/living/carbon/carbon_user = user
		if(carbon_user.get_active_hand() == src)
			// Если атаковали в ближнем бою, кость остаётся в руке
			return
		qdel(src)
