/obj/item/bone_spur
	name = "bone spur"
	desc = "A sharp bone shard. Shatters on impact."
	icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	icon_state = "Bone_spur"
	force = 30
	throwforce = 30
	throw_speed = 4
	throw_range = 60
	w_class = WEIGHT_CLASS_SMALL
	sharpness = SHARP_POINTY
	armour_penetration = 40

/datum/embedding/bone_shard
	pain_mult = 4
	embed_chance = 100
	fall_chance = 10
	jostle_chance = 20
	ignore_throwspeed_threshold = TRUE

/obj/item/bone_shard
	name = "bone shard"
	desc = "A shattered bone fragment."
	icon = 'modular_celadon/modules/weapons_addon/icons/Skeleton.dmi'
	icon_state = "Bone_shard"
	throwforce = 5
	w_class = WEIGHT_CLASS_TINY
	sharpness = SHARP_POINTY

/obj/item/bone_spur/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	. = ..()
	var/obj/item/bone_shard/shard = new /obj/item/bone_shard(get_turf(hit_atom))
	if(isliving(hit_atom))
		var/mob/living/target = hit_atom
		shard.set_embed(/datum/embedding/bone_shard)
		shard.throw_impact(target, throwingdatum)
		target.visible_message(span_danger("The bone spur shatters, leaving a fragment in [target]!"),
							   span_userdanger("The bone spur shatters, leaving a fragment in you!"))
	else
		hit_atom.visible_message(span_danger("The bone spur shatters against [hit_atom]!"))
	qdel(src)
