//intern
/datum/job/centcom/intern
	title = JOB_CENTCOM_INTERN
	description = "Watch over the CentCom documents, write paper, and spend your days bringing coffee for higher-ups."
	outfit = /datum/outfit/job/centcom/intern
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_intern
	config_tag = "CENTCOM_INTERN"
	total_positions = 5
	spawn_positions = 5
	exp_requirements = 100
	faction = FACTION_STATION
	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

/datum/id_trim/job/centcom/intern
	assignment = JOB_CENTCOM_INTERN

	minimal_access = list(
		ACCESS_CENT_GENERAL,
		ACCESS_CENT_LIVING,
		ACCESS_WEAPONS,
	)
	minimal_wildcard_access = list(
		ACCESS_CENT_GENERAL,
	)
	template_access = list(
		ACCESS_CENT_CAPTAIN,
	)
	job = /datum/job/centcom/intern
	honorifics = list("Intern")
	honorific_positions = HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_NONE

/datum/outfit/job/centcom/intern
	name = JOB_CENTCOM_INTERN
	jobtype = /datum/job/centcom/intern
	id_trim = /datum/id_trim/job/centcom/intern
	chameleon_extras = list(
		/obj/item/gun/ballistic/rifle/boltaction
	)

	ears = /obj/item/radio/headset/headset_cent
	glasses = /obj/item/clothing/glasses/sunglasses
	gloves = /obj/item/clothing/gloves/color/black
	belt = /obj/item/melee/baton
	uniform =  /obj/item/clothing/under/rank/centcom/intern
	shoes = /obj/item/clothing/shoes/sneakers/black

/obj/effect/landmark/start/centcom/centcom_intern
	name = JOB_CENTCOM_INTERN
	//icon_state = "intern"

//head intern
/datum/job/centcom/head_intern
	title = JOB_CENTCOM_HEAD_INTERN
	description = "Watch over the CentCom Interns, read their paper, and give paper to officials."
	outfit = /datum/outfit/job/centcom/head_intern
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_intern
	config_tag = "CENTCOM_HEAD_INTERN"
	total_positions = 2
	spawn_positions = 2
	exp_requirements = 200
	faction = FACTION_STATION
	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

/datum/id_trim/job/centcom/head_intern
	assignment = JOB_CENTCOM_HEAD_INTERN

	minimal_access = list(
		ACCESS_CENT_GENERAL,
		ACCESS_CENT_LIVING,
		ACCESS_WEAPONS,
	)
	minimal_wildcard_access = list(
		ACCESS_CENT_GENERAL,
	)
	template_access = list(
		ACCESS_CENT_CAPTAIN,
	)
	job = /datum/job/centcom/head_intern
	big_pointer = TRUE
	honorifics = list("Head Intern")
	honorific_positions = HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_NONE

/datum/outfit/job/centcom/head_intern
	name = JOB_CENTCOM_HEAD_INTERN
	jobtype = /datum/job/centcom/head_intern
	id_trim = /datum/id_trim/job/centcom/head_intern
	chameleon_extras = list(
		/obj/item/gun/ballistic/rifle/boltaction
	)

	ears = /obj/item/radio/headset/headset_cent
	glasses = /obj/item/clothing/glasses/sunglasses
	head = /obj/item/clothing/head/hats/intern
	gloves = /obj/item/clothing/gloves/color/black
	l_hand = /obj/item/megaphone
	belt = /obj/item/melee/baton/security/loaded
	uniform =  /obj/item/clothing/under/rank/centcom/intern
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/sneakers/black

/obj/effect/landmark/start/centcom/centcom_head_intern
	name = JOB_CENTCOM_HEAD_INTERN
	//icon_state = "head_intern"
