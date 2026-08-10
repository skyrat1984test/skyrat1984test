//commander
/datum/job/centcom/commander
	title = JOB_CENTCOM_COMMANDER
	description = "Watch over the CentCom."
	outfit = /datum/outfit/job/centcom/commander
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_commander
	config_tag = "CENTCOM_COMMANDER"
	total_positions = 4
	spawn_positions = 4
	faction = FACTION_STATION
	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

/datum/id_trim/job/centcom/commander
	assignment = JOB_CENTCOM_COMMANDER

	minimal_wildcard_access = list(
		ACCESS_CENT_GENERAL,
	)
	template_access = list(
		ACCESS_CENT_CAPTAIN,
	)
	honorifics = list("Commander", "CMDR.")
	honorific_positions = HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_NONE
	job = /datum/job/centcom/commander
	big_pointer = TRUE

/datum/id_trim/job/centcom/commander/New()
	minimal_access |= (SSid_access.get_region_access_list(list(REGION_CENTCOM, REGION_CENTCOM_SPECOPS, REGION_ALL_STATION)) + ACCESS_CENT_OFFICER)
	return ..()

/datum/outfit/job/centcom/commander
	name = JOB_CENTCOM_COMMANDER
	jobtype = /datum/job/centcom/commander
	id_trim = /datum/id_trim/job/centcom/commander
	box = /obj/item/storage/box/survival/security
	backpack = /obj/item/storage/backpack/satchel/leather
	back = /obj/item/storage/backpack/satchel/leather
	chameleon_extras = list(
		/obj/item/gun/ballistic/rifle/boltaction
	)

	head = /obj/item/clothing/head/hats/centcom_cap
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/black
	neck = /obj/item/clothing/neck/pauldron/commander
	gloves = /obj/item/clothing/gloves/combat/naval
	l_pocket = /obj/item/melee/baton/telescopic/gold
	r_pocket = /obj/item/stamp/centcom
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/naval
	uniform =  /obj/item/clothing/under/rank/centcom/nova/naval/commander
	shoes = /obj/item/clothing/shoes/combat/swat


/obj/effect/landmark/start/centcom/centcom_commander
	name = JOB_CENTCOM_COMMANDER
	//icon_state = "commander"
