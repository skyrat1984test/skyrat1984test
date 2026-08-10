/datum/job
	var/centcom_job = FALSE

/datum/job/centcom
	//basically they are whitelist/admin locked
	centcom_job = TRUE
	//basically doesnt need veteran, since already had centcom whitelist
	nova_stars_only = FALSE
	//basically centcom jobs cannot be affected by station events
	allow_bureaucratic_error = FALSE
	antagonist_restricted = TRUE
	job_flags = CENTCOM_JOB_FLAGS
	//age of account min
	minimal_player_age = 0
	//exp req
	exp_requirements = 600
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_CREW
	//departament
	bounty_types = CIV_JOB_SEC
	departments_list = list(
		/datum/job_department/central_command,
	)
	//misc general things
	supervisors = JOB_CENTCOM
	paycheck = PAYCHECK_LOWER
	paycheck_department = ACCOUNT_CCD
	req_admin_notify = TRUE
	display_order = JOB_DISPLAY_ORDER_DEFAULT
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_intern
	//title = JOB_CENTCOM_INTERN
	//description = "Watch over the CentCom, write paper, and spend your days bringing coffee for higher-ups."
	//outfit = /datum/outfit/job/centcom_officer
	//config_tag = "CENTCOM_INTERN"
	//total_positions = 5
	//spawn_positions = 5
	//faction = FACTION_STATION	//ONLY SET FOR REAL JOBS, DO NOT ADD TO PLACEHOLDERS
	//family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

	///command related things
	//banned_quirks = list(HEAD_RESTRICTED_QUIRKS)
	//banned_augments = list(HEAD_RESTRICTED_AUGMENTS)
	//mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	//liver_traits = list(TRAIT_ROYAL_METABOLISM)
	//voice_of_god_power = 1.4
	//desensitized_base = DESENSITIZED_THRESHOLD

/datum/id_trim/job/centcom
	assignment = "Central Command"
	trim_state = "trim_centcom"
	sechud_icon_state = SECHUD_CENTCOM
	hide_in_templates = TRIM_HIDE_STATION

	minimal_access = list(
		ACCESS_CENT_GENERAL,
	)
	minimal_wildcard_access = list(
		ACCESS_CENT_GENERAL,
	)
	//template_access = list(
	//	ACCESS_CENT_CAPTAIN,
	//)
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_CENTCOM_BLUE
	threat_modifier = -10
	pointer_color = COLOR_CENTCOM_BLUE
	extra_access = list()
	//job = /datum/job/centcom
	///command related
	//big_pointer = TRUE

//outfit
/datum/outfit/job/centcom
	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	messenger = /obj/item/storage/backpack/messenger
	implants = list(/obj/item/implant/mindshield)
	id = /obj/item/card/id/advanced/centcom
	belt = null
	pda_slot = null
	//id_trim = /datum/id_trim/job/centcom
	//chameleon_extras = list(/obj/item/stamp/centcom)
	//skillchips = list(/obj/item/skillchip/disk_verifier)
	//accessory = /obj/item/clothing/accessory/medal/gold
	//backpack_contents = list(
	//	/obj/item/melee/baton/telescopic/gold = 1,
	//	)

//landmark
/obj/effect/landmark/start/centcom
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE
	//icon_state = "intern"
	//icon = '/centcom/icons/landmarks.dmi'
