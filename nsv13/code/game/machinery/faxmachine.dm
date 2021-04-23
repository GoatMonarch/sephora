
#define FAX_COOLDOWN 300 // 5 minute cooldown between faxes

/obj/machinery/faxmachine
    name = "Faxmachine"
    desc = "A machine made to transmit scanned paper data to centcom officials."
    anchored = TRUE
    density = TRUE
    req_access = list("ACCESS_LAWYER")
    resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF //Manifactured by Nokia
    icon = "" //Get sprite
    circuit = /obj/item/circuitboard/machine/faxlawyer
    idle_power_usage = 50




/obj/machinery/faxmachine/heads
    req_access = list("ACCESS_HEADS")
    icon = "" //headvariant - less fancy
    circuit = /obj/item/circuitboard/machine/faxheads


/obj/machinery/faxmachine/security
    req_access = list("ACCESS_SECURITY")
    icon = "" //same as head, but read
    circuit = /obj/item/circuitboard/machine/faxsec

/obj/machinery/faxmachine/Initialize()
    . = ..()
    prob(1)
        name = "Paper pusher 9000"

/obj/machinery/faxmachine/attack_hand(mob/living/user)
    . = ..()
    

//Todo: remove paper when this is done
/obj/machinery/faxmachine/AltClick(mob/user)
    . = ..()
    


