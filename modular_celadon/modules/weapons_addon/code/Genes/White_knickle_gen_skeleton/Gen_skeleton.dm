/datum/mutation/human/bone_spurs
	name = "Autotomous Skeleton"
	desc = "A mutation that allows the user to protrude sharpened high-density bones from their hands."
	quality = POSITIVE
	difficulty = 16
	text_gain_indication = span_notice("You feel a strange prickling sensation in your hands.")
	text_lose_indication = span_notice("The prickling sensation in your hands fades.")
	locked = TRUE
	instability = POSITIVE_INSTABILITY_MODERATE
	energy_coeff = 1

/datum/mutation/human/bone_spurs/on_acquiring(mob/living/carbon/human/human)
	. = ..()
	var/datum/action/cooldown/mutation/bone_spur/left/left_action = new /datum/action/cooldown/mutation/bone_spur/left
	left_action.Grant(human)
	var/datum/action/cooldown/mutation/bone_spur/right/right_action = new /datum/action/cooldown/mutation/bone_spur/right
	right_action.Grant(human)

/datum/mutation/human/bone_spurs/on_losing(mob/living/carbon/human/human)
	. = ..()
	for(var/datum/action/cooldown/mutation/bone_spur/spur_action in human.actions)
		spur_action.Remove(human)
