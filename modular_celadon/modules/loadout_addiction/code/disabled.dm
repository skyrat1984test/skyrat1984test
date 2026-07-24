/datum/loadout_item
	var/is_disabled = FALSE

//disabled for reasons of other lore or because they are not should be available for everyone
/datum/loadout_item/inhand/plasteel_chef	//maybe
	is_disabled = TRUE

/datum/loadout_item/pocket_items/marsoc_coin
	is_disabled = TRUE

/datum/loadout_item/pocket_items/akarimod
	is_disabled = TRUE

/datum/loadout_item/inhand/sqn_box	//bugged items inside
	is_disabled = TRUE

/datum/loadout_item/pocket_items/darksabresheath	//bugged icon
	is_disabled = TRUE

/datum/loadout_item/toys/darksabre
	is_disabled = TRUE

// setting this things to erp flags so they wont appear without config
/datum/loadout_item/pocket_items/gay_pride_flag
	erp_item = TRUE

/datum/loadout_item/pocket_items/ace_pride_flag
	erp_item = TRUE

/datum/loadout_item/pocket_items/bi_pride_flag
	erp_item = TRUE

/datum/loadout_item/pocket_items/lesbian_pride_flag
	erp_item = TRUE

/datum/loadout_item/pocket_items/pan_pride_flag
	erp_item = TRUE

/datum/loadout_item/pocket_items/trans_pride_flag
	erp_item = TRUE
