/obj/item/radio/headset/headset_cargo/bitrunning
	name = "bitrunning radio headset"
	desc = "A headset used by the Cargo's screen-smashers."
	keyslot = /obj/item/encryptionkey/headset_bitrunning

/obj/item/encryptionkey/headset_bitrunning
	channels = list(RADIO_CHANNEL_SUPPLY = 1, RADIO_CHANNEL_SCIENCE = 1, RADIO_CHANNEL_BITRUN = 1)
	special_channels = RADIO_SPECIAL_CENTCOM	//weird thing for allowing bitrunners to speak in bit domain channel

/obj/machinery/telecomms/server/presets/supply/Initialize(mapload)
	. = ..()
	freq_listening -= FREQ_FACTION
	freq_listening += FREQ_BITRUN
	freq_listening += FREQ_BITDEFEND

/obj/machinery/telecomms/receiver/preset_left/Initialize(mapload)
	. = ..()
	freq_listening -= FREQ_FACTION
	freq_listening += FREQ_BITRUN
	freq_listening += FREQ_BITDEFEND

/obj/machinery/telecomms/bus/preset_two/Initialize(mapload)
	. = ..()
	freq_listening -= FREQ_FACTION
	freq_listening += FREQ_BITRUN
	freq_listening += FREQ_BITDEFEND
