-- Welcome to configuration file! Be careful when you are editing something there!

-- Quick Documentation:
--   `detectionMode` -> What sanction does that player receive if he is detected
--   `active` -> Enable/Disable the current module
--   `detectTime` -> If a player execute too many times same event within the detectTime range you set he will be detected. EX: A player is spawning 10 effects in 2 seconds and the max effects are 2
-- If you need more help, open a ticket in our Official Discord Server

-- Thank you for understanding us!

ultimateAC = { -- Global Anti-Cheat Configuration
    updateHash = "1b1011552f6281c4382c1c943bed8c0cb58981e6f72c5e3184949c2600ea8f72", -- Don't touch this!   

    webhooks = { -- Discord Webhooks for alerts, logs, etc.
        general = "", -- Start logs
        bans = "", -- Bans logs
        kicks = "", -- Kicks logs
        warns = "", -- Warns logs
        possibleBanEvadeTries = "", -- There the anti-cheat will send an allert with all the information you need about a player which is banned and it was detected for trying to SPOOF his ban.
        imagesCache = "", -- There will be SPAM!
        wipeArea = "", -- Wipe area logs
        connections = "", -- Connections logs | Leave it blank if you don't want to use it!
        disconnections = ""-- Disconnections logs | Leave it blank if you don't want to use it!
    },

    hammerSystem = { -- There you will can configure ban message, kick message, reject people who are banned with a specific message, etc.
        kickMessage = "You have been kicked for doing something forbidden on this server!\n[⚠️] This is not a kick from an admin.", -- \n (new line)
        banMessage = "You have been banned for doing something forbidden on this server!\n[⚠️] This is not a ban from an admin.", -- \n (new line)
        rejectConnectionForBannedPlayers = "\nWe found that you are trying to join the server while your account is BANNED." -- \n (new line)
    },

    eventsProtection = { -- This is a very good system made by us about protect your evens for being abused!
        blacklistedEvents = { -- Detects when a player execute events from the list below
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- Be careful to add `,` after every element you add! The last element is not required to have `,`.
                "mellotrainer:adminKick",
                "AntiLynxR4:kick",
                "esx_spectate:kick",
                "AntiLynxR4:log",
                "chat:server:ServerPSA",
                "d0pamine_xyz:getFuckedNigger",
                "esx_mafiajob:confiscatePlayerItem",
                "esx_jailer:sendToJail",
                "NB:recruterplayer",
                "f0ba1292-b68d-4d95-8823-6230cdf282b6",
                "gambling:spend",
                "OG_cuffs:cuffCheckNearest",
                "display",
                "advancedFuel:setEssence",
                "esx:jackingcar",
                "redst0nia:checking",
                "hentailover:xdlol",
                "antilynx8:anticheat",
                "antilynxr6:detection",
                "antilynx8r4a:anticheat",
                "antilynxr4:detect",
                "ynx8:anticheat",
                "lynx8:anticheat",
                "adminmenu:allowall",
                "h:xd",
                "HCheat:TempDisableDetection",
                "FAC:EzExec"
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        possibleNukeEvents = { -- Detects when a player execute events from the list below with the nukeValue parameter
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- {eventName = "EVENT NAME", nukeValue = THE EVENT VULNERABILITY (mostly there is -1)}. Be careful to add `,` after every element you add! The last element is not required to have `,`.
                {eventName = "CarryPeople:sync", nukeValue = -1}
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        moneySecuredEvents = { -- Detects when a player execute events from the list below with another parameter instead of the securedValue.
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- {eventName = "EVENT NAME", securedValue = THE MONEY OF THE PAYMEMT USING THIS EVENT}. Be careful to add `,` after every element you add! The last element is not required to have `,`.
                {eventName = "GiveMoney:Policeman", securedValue = 3200}
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        rateLimitEvents = { -- Detects when a player execute events from the list below too many times (maxExecutions) in globalRestTime.
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            globalRestTime = 10, -- There you will need to set a value of time in seconds. Default: 10 seconds
            list = { -- {eventName = "EVENT NAME", maxExecutions = MAX EXECUTIONS IN globalRestTime}. Be careful to add `,` after every element you add! The last element is not required to have `,`.
                {eventName = "GiftBox:WinPrize", maxExecutions = 4}
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        clientEvents = { -- Detects when a player execute a client event with a suspicious resource.
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- Be careful to add `,` after every element you add! The last element is not required to have `,`.
                "HandCuff:request"
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    connectionProtection = { -- Protect your server against unwanted persons
        vpnProtection = { -- Blocks players to connect into your server while they are using VPN Softwares
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            blockMessage = "You're not able to connect since you are using a VPN software."
        },

        namesProtection = { -- Blocks players to connect into your server while they are using one of the names below
            active = true, -- Switch if you want [`true` or `false` ONLY!!] | MASTERSWITCH!
            blacklistedNames = {
                active = true, -- Switch if you want [`true` or `false` ONLY!!]
                list = { -- Be careful to add `,` after every element you add! The last element is not required to have `,`.
                    "admin",
                    "eulencheats",
                    "owner",
                    "administrator",
                    "moderator",
                    "Unknown",
                    "<script",
                    "aimbot",
                    "one shot"
                },
                blockMessage = "You're not able to connect since your name is on blacklist."
            },

            forceAlphaNumeric = { -- Force players to have in their name only characters between A-Z, a-z and 0-9.
                active = true, -- Switch if you want [`true` or `false` ONLY!!] | MASTERSWITCH!
                blockMessage = "You're not able to connect since your name contains characters outside of allowed ones. Make sure your name contains only characters from A-Z and 0-9."
            }
        },

        forceIdentifierLinked = { -- If a player don't have an identifier below and it is on `true` then the `blockMessage` will appear!
            active = false, -- Switch if you want [`true` or `false` ONLY!!]
            steam = false,
            xbl = false,
            discord = false,
            live = false,
            blockMessage = "It seems you don't have %s identifier linked to your FiveM account."
        }
    },

    effectsProtection = { -- Protect your players from being attacked with particles
        active = true, -- Switch if you want [`true` or `false` ONLY!!] | MASTERSWITCH!
        blockAllEffects = false, -- Block all particles that will be spawned. Don't activate if you are using FX Particles!
        blockMassEffects = { -- A powerful system that detects if a user spawn too much effects. Check Quick Documentation for more information about `detectTime`
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectTime = 3, -- There you will need to set a value of time in seconds. Default: 3 seconds
            effectsLimit = 5 -- Max particles that can be spawned in `detectTime` you setted above
        },

        blockBlacklistedEffects = { -- Detects if a player spawned an effect from the list below
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- [GetHashKey("effect_name")] = {detect = true/false, name = "effect_name"}. Check out https://bit.ly/3cvMyCR for all effects hashes. Be careful to add `,` after every element you add! The last element is not required to have `,`.
                [GetHashKey("scr_indep_firework_starburst")] = {detect = true, name = "scr_indep_firework_starburst"},
                [GetHashKey("scr_indep_firework_shotburst")] = {detect = true, name = "scr_indep_firework_shotburst"},
                [GetHashKey("scr_indep_firework_fountain")] = {detect = true, name = "scr_indep_firework_fountain"},
                [GetHashKey("scr_indep_firework_trailburst")] = {detect = true, name = "scr_indep_firework_trailburst"},
                [GetHashKey("exp_air_molotov")] = {detect = true, name = "exp_air_molotov"},
                [GetHashKey("cs_finale1_car_explosion_surge_spawn")] = {detect = true, name = "cs_finale1_car_explosion_surge_spawn"}
            }
        },
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    weaponsProtection = { -- Protect your server from players who use weapon mods
        ammoCheats = {
            infiniteAmmo = { -- Detects if a player use Infinite Ammo
                active = true, -- Switch if you want [`true` or `false` ONLY!!]
                detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
            },

            noReload = { -- Detects if a player use No Reload
                active = true, -- Switch if you want [`true` or `false` ONLY!!]
                detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
            },

            maxAmmo = { -- Detects if a player gives to his gun more than setted max ammo (USE ONLY IF YOU HAVE LIMIT IN GUNSHOPS)
                active = true, -- Switch if you want [`true` or `false` ONLY!!]
                maxGunAmmo = 250, -- Max ammo that can have a weapon
                detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
            },

            explosiveAmmo = { -- Detects if a player use explosive ammo for current weapon
                active = false, -- Switch if you want [`true` or `false` ONLY!!]
                detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
            }
        },

        damageModifier = {
            active = true,
            method1 = true, -- A very common method for catching cheaters
            method2 = true, -- This is a private method and it's recommended to enable it!
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        blacklistedWeapons = { -- Detects if a player spawn in his inventory one of the weapons below.
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            list = { -- Be careful to add `,` after every element you add! The last element is not required to have `,`.
                "WEAPON_RPG",
                "WEAPON_MINIGUN",
                "WEAPON_RAILGUN",
                "WEAPON_FIREWORK",
                "WEAPON_PIPEBOMB",
                "WEAPON_GARBAGEBAG",
                "WEAPON_HOMINGLAUNCHER",
                "WEAPON_GRENADE",
                "WEAPON_GRENADELAUNCHER"
            },
            removeAllWeaponsAfterDetection = true, -- This feature will remove all his weapons from loadout
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },
        
        playerProtection = { -- Protect players from reciving malicious weapons from cheaters or taking their weapons from inventory/loadout
            antiGiveWeaponsToOtherPlayers = true, -- Detects if a player give weapon(s) to other players
            antiRemoveWeaponsFromOtherPlayers = true, -- Detects if a player remove weapon(s) from other players
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    antiMenus = { -- Detect 85% of players who has a menu injected
        enchantedMenuDetection = { -- This is a method that can detect dopamine, hydro, fallout, etc. (Not all menus)
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        onScreenMenuDetection = {
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectableWords = { -- Detectable Words for OCR. If one of the words below is detected on player screen, he will be detected. You can also ADD/REMOVE new words.
                "Convert Vehicle Into Ramps","injected at","Explode Players","Ram Players","Force Third Person","fallout","godmode","ANTI-CHEAT","god mode","modmenu","esx money","give armor","aimbot","trigger",
                "triggerbot","rage bot","ragebot","rapidfire","freecam","execute","noclip","ckgangisontop","lumia1","ISMMENU","TAJNEMENUMenu","rootMenu","Outcasts666","WaveCheat","NacroxMenu","MarketMenu","topMenu",
                "FlexSkazaMenu","SidMenu","Lynx8","LynxEvo","Maestro Menu","redEngine","HamMafia","HamHaxia","Dopameme","redMENU","Desudo","explode","gamesense","Anticheat","Tapatio","Malossi","RedStonia","Chocohax",
                "Inyection","Inyected","Dumper","LUA Executor","Executor","Lux Menu","Event Blocker","Spectate","Wallhack","triggers","crosshair","Alokas66","Hacking System!","Destroy Menu","Server IP","Teleport To",
                "Give Single Weapon","Airstrike Player","Taze Player","Razer Menu","Swagamine","Visual Options","d0pamine","Infinite Stamina","Blackout","Delete Vehicles Within Radius","Engine Power Boost",
                "Flip Vehicle","Rainbow Paintjob","Combat Assiters","Damage Multiplier","Give All Weapons","Teleport To Impact","Explosive Impact","Server Nuke Options","No Ragdoll","Super Powers",
                "Force Player Blips","Force Radar","Force Gamertags","ESX Money Options","press AV PAG","TP to Waypoint","Self Options","Vehicle options","Weapon Options","spam Vehicles","taze All",
                "invisible all vehicles","Spam Message","Destroy Map","Give RPG","max Speed Vehicles","Rainbow All Vehicles","Delete Props","Cobra Menu","Bind Menu Key","Clone Outfit","Give Health",
                "Teleport Into Player's Vehicle","fivesense","menu keybind","nospread","transparent props","bullet tracers","model chams","reload images","fade out in speed","cursor size","custom weapons texture",
                "skin changer","torque multiple","override player speed","colision proof","explosion proof","copy outfit","play single particle","infinite ammo","rip server","remove ammo","remove all weapons",
                "explosive ammo","super damage","rapid fire","Super Jump","Infinite Roll","No Criticals","Move On Water","Disable Ragdoll","CutzuSD","Vertisso","M3ny00","Pl4y_3r","W34p_On","W34p_0n","V3h1_cl3",
                "V1s_u4l","D3str_0y","D3str_Oy","S3tt1ngs","P4rt1cl_3s","Pl4y3rz","D3l3t3","Sp4m","V3h1cl3s","T4ze","1nv1s1bll3","R41nb_0w","Sp33d","R41nb_Ow","F_ly","3xpl_0d3","Pr0pz","D3str_0y","M4p","G1v3",
                "Rp_GG","V3h1cl3","Sl4p","D4nce","K!_ll","M3ss4ge","3mote","D4nc3","no-clip","invizibilitate","injected","Money Options","Nuke Options","Razer","Aimbot","TriggerBot","RageBot","RapidFire",
                "fuck server","lynx","Lumia","Gamesense","Fivesense","SkidMenu","Dopamine","Explode","Teleport Options","infnite combat roll","Hydro Menu","Enter Menu Open Key"
            },
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    antiSpectate = { -- Blocks people to spectate other players
        active = false, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiDevTools = { -- Blocks people to open Nui Dev Tools (be careful about EXPLOITING in HTML!)
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    detectEntities = { -- Detects objects, peds, vehicles which are not spawned from the server resources.
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiExplosions = { -- Detects if a player spawn an explosion without any reason
        active = true, -- Switch if you want [`true` or `false` ONLY!!] | MASTERSWITCH!
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiSuperJump = { -- Detects if a player use Super Jump
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiClearPedTasks = { -- Detects if a player clear another player tasks (used for kick from vehicle, freeze, etc.)
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiVisions = {
        thermalVision = { -- Detects if a player enable Thermal Vision
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },
      
        nightVision = { -- Detects if a player enable Night Vision
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    antiTinySkin = { -- Detects if a player changes his skin size
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiFreeCam = { -- Detects if a player is using freecam | Make sure you do not use any Freecam script on your server! | BETA
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 1 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    antiSkinChanger = { -- Detects if a player changes his skin
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        list = { -- [GetHashKey("skin_id")] = "skinName" | Check out https://bit.ly/3PO1NFJ for all skin_ids. Be careful to add `,` after every element you add! The last element is not required to have `,`.
            [GetHashKey("a_m_y_mexthug_01")] = "Mexthug",
            [GetHashKey("a_c_husky")] = "Husky", 
            [GetHashKey("a_c_boar")] = "Boar", 
            [GetHashKey("a_c_sharkhammer")] = "Sharkhammer", 
            [GetHashKey("a_c_chimp")] = "Chimp", 
            [GetHashKey("a_c_chop")] = "Chop", 
            [GetHashKey("a_c_hen")] = "Hen", 
            [GetHashKey("a_c_humpback")] = "Humpback", 
            [GetHashKey("a_c_killerwhale")] = "Killerwhale",
            [GetHashKey("a_c_rhesus")] = "Rhesus", 
            [GetHashKey("a_c_rottweiler")] = "Rottweiler", 
            [GetHashKey("a_c_sharktiger")] = "SharkTiger", 
            [GetHashKey("a_c_shepherd")] = "Shepherd", 
            [GetHashKey("u_m_y_zombie_01")] = "Zombie",
            [GetHashKey("a_m_m_acult_01")] = "Acult01",
            [GetHashKey("u_m_y_juggernaut_01")] = "Juggernaut"
        },
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    },

    vehiclesProtection = { -- This will protect your server from vehicle modders
        active = true, -- Switch if you want [`true` or `false` ONLY!!] | MASTERSWITCH!

        blockEasyHandling = { -- Detects if he changes vehicle handling into easy-controlled one (very popular function for cheaters to controll very easy the vehicle)
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        blockChangeSpeed = { -- Detects if he changes vehicle speed to be more faster
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 1 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },
        
        blockDeleteMassVehicles = { -- Detects in many cases if he deletes all server vehicles. Be careful to add all players who have acces to your server command (cleanup vehicles) to prevent false bans!
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectTime = 2, -- There you will need to set a value of time in seconds. Default: 2 seconds
            vehiclesLimit = 5, -- Max vehicles that can be deleted in `detectTime` you setted above
            detectionMode = 1 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    executorsProtection = { -- Detects *functions* from executors (especially based on E*LEN)
        antiTaze = { -- Detects if a player taze someone with an exector
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        antiKillAK = { -- Detects if a player kills someone with "Kill with AK" E*LEN
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        antiResourceStateManipulation = { -- Detects if a player stop/freeze a client-sided resource (ADVANCED)
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        checkIfKillerHasSpecificGun = { -- Detects if a player kills another player, but it doesn't have the gun with which he killed him.
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        },

        checkIfKillerIsNearTarget = { -- Detects if a player kills another player, but it isn't near him. | BETA
            active = true, -- Switch if you want [`true` or `false` ONLY!!]
            detectionMode = 1 --> 0 = Warning ; 1 = Kick ; 2 = Ban
        }
    },

    blockSounds = true, -- Block malicious sounds.

    wipeArea = { -- Area Clean-up commands.
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        cmdList = { -- Instructions:
            -- Add for every table, wipe-peds, wipe-vehicles or wipe-objects your commands. You can delete, or add as many as you want, in case if want to be faster by using aliases. If you have any questions, contact us on Discord by opening a support ticket.
            ["wipe-peds"] = {"wipe-peds", "clear-peds"},
            ["wipe-vehicles"] = {"wipe-vehicles", "clear-vehicles", "wipe-vehs", "clear-vehs"},
            ["wipe-objects"] = {"wipe-objects", "clear-objects", "wipe-obj", "clear-obj"}
        }
    },

    requireFullscreen = { -- Make sure the image from OCR is not going to be black, because OCR is not going to work anymore, and the proof for the detection will be lost.
        active = true, -- Switch if you want [`true` or `false` ONLY!!] | This works only if you have `onScreenMenuDetection` enabled!
        message = "You need to be in fullscreen to play on this server!\n[⚠️] This is not a kick from an admin.", -- \n (new line)
    },

    antiFreezeBypass = { -- Detects if a player is trying to bypass the Admin Freeze from the UAC Menu.
        active = true, -- Switch if you want [`true` or `false` ONLY!!]
        detectionMode = 2 --> 0 = Warning ; 1 = Kick ; 2 = Ban
    }
}
