/datum/mutation/human/bone_spurs
	name = "Skeleton"
	desc = "A mutation that allows the user to protrude sharpened high-density bones from their hands."
	quality = POSITIVE
	difficulty = 16
	text_gain_indication = span_notice("You feel a strange prickling sensation in your hands.")
	text_lose_indication = span_notice("The prickling sensation in your hands fades.")
	locked = TRUE
	instability = POSITIVE_INSTABILITY_MODERATE
	energy_coeff = 1
	power_path = /datum/action/cooldown/mutation/bone_spur

/datum/mutation/human/bone_spurs/on_acquiring(mob/living/carbon/human/human)
	. = ..()
	human.AddElement(/datum/action/cooldown/mutation/bone_spur/left)
	human.AddElement(/datum/action/cooldown/mutation/bone_spur/right)

/datum/mutation/human/bone_spurs/on_losing(mob/living/carbon/human/human)
	. = ..()
	human.RemoveElement(/datum/action/cooldown/mutation/bone_spur/left)
	human.RemoveElement(/datum/action/cooldown/mutation/bone_spur/right)
