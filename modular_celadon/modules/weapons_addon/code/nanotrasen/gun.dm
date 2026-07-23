
//rifles
/obj/item/gun/ballistic/automatic/battle_rifle
    shots_before_degradation = 10
    max_shots_before_degradation = 10
    degradation_probability = 10

/obj/item/gun/ballistic/automatic/battle_rifle/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/automatic/ar
	burst_delay = 3

/obj/item/gun/ballistic/automatic/ar/modular
	burst_delay = 2

/obj/item/gun/ballistic/automatic/ar/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/automatic/wt550/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)


//list of rifles
/*
/obj/item/gun/ballistic/automatic/wt550
/obj/item/gun/ballistic/automatic/battle_rifle
all of(/obj/item/gun/ballistic/automatic/ar)
/obj/item/gun/ballistic/automatic/laser
*/
//shotguns
/obj/item/gun/ballistic/shotgun/katyusha
	fire_delay = 0.55 SECONDS

//list of shotguns
/*
/obj/item/gun/ballistic/shotgun/riot
/obj/item/gun/ballistic/shotgun/automatic/dual_tube
/obj/item/gun/ballistic/shotgun/automatic/combat
/obj/item/gun/ballistic/shotgun/automatic/combat/compact
/obj/item/gun/ballistic/shotgun/katyusha
*/

//smgs

/obj/item/gun/ballistic/automatic/nt20
	fire_delay = 1.6
	burst_size = 3

/obj/item/gun/ballistic/automatic/proto/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

//list of smgs
/*
/obj/item/gun/ballistic/automatic/nt20
/obj/item/gun/ballistic/automatic/cmg
/obj/item/gun/ballistic/automatic/proto
*/


//machineguns

//list of mgs
/*
/obj/item/gun/ballistic/automatic/smart_machine_gun
*/

//pistols

/obj/item/gun/ballistic/automatic/gyropistol/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

//list of pistols
/*
/obj/item/gun/ballistic/automatic/gyropistol
/obj/item/gun/ballistic/automatic/pistol/em1911
/obj/item/gun/ballistic/rifle/c96
/obj/item/gun/ballistic/revolver/c38/detective
/obj/item/gun/ballistic/revolver/c38/super
*/
