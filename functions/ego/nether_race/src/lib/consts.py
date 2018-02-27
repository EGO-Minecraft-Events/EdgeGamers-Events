class Sounds:
    """
    Shorthand constants for sounds
    """
    pling = "minecraft:block.note.pling"
    xp = "minecraft:entity.experience_orb.pickup"
    item = "minecraft:entity.item.pickup"
    tp = "minecraft:entity.endermen.teleport"
    wither = "minecraft:entity.wither.death"
    level = "minecraft:entity.player.levelup"
    explode = "minecraft:entity.generic.explode"
    hat = "minecraft:block.note.hat"
    primed = "minecraft:entity.tnt.primed"


class Effects:
    """
    Shorthand constants for effects
    """
    absorption = "minecraft:absorption"
    blind = "minecraft:blindness"
    fire_resist = "minecraft:fire_resistance"
    glow = "minecraft:glowing"
    haste = "minecraft:haste"
    hp_boost = "minecraft:health_boost"
    hunger = "minecraft:hunger"
    dmg = "minecraft:instant_damage"
    hp = "minecraft:instant_health"
    invis = "minecraft:invisibility"
    jump = "minecraft:jump_boost"
    levitation = "minecraft:levitation"
    luck = "minecraft:luck"
    mining_fatigue = "minecraft:mining_fatigue"
    nausea = "minecraft:nausea"
    night_vision = "minecraft:night_vision"
    poison = "minecraft:poison"
    regen = "minecraft:regeneration"
    resist = "minecraft:resistance"
    saturation = "minecraft:saturation"
    spd = "minecraft:speed"
    strength = "minecraft:strength"
    unluck = "minecraft:unluck"
    water_breath = "minecraft:water_breathing"
    weak = "minecraft:weakness"
    wither = "minecraft:wither"


class Colors:
    """
    List of all colors
    """
    DARK_RED = "dark_red"
    RED = "red"
    GOLD = "gold"
    YELLOW = "yellow"
    GREEN = "green"
    DARK_GREEN = "dark_green"
    DARK_BLUE = "dark_blue"
    BLUE = "blue"
    DARK_AQUA = "dark_aqua"
    AQUA = "aqua"
    LIGHT_PURPLE = "light_purple"
    DARK_PURPLE = "dark_purple"
    WHITE = "white"
    GRAY = "gray"
    DARK_GRAY = "dark_gray"
    BLACK = "black"
    RESET = "reset"

    ALL = (DARK_RED, RED, GOLD, YELLOW, GREEN, DARK_GREEN, DARK_BLUE, BLUE, DARK_AQUA,
           AQUA, LIGHT_PURPLE, DARK_PURPLE, WHITE, GRAY, DARK_GRAY, BLACK, RESET)

    CODE_DICT = {
        DARK_RED: "&4",
        RED: "&c",
        GOLD: "&6",
        YELLOW: "&e",
        GREEN: "&a",
        DARK_GREEN: "&2",
        DARK_BLUE: "&1",
        BLUE: "&9",
        DARK_AQUA: "&3",
        AQUA: "&b",
        LIGHT_PURPLE: "&d",
        DARK_PURPLE: "&5",
        WHITE: "&f",
        GRAY: "&7",
        DARK_GRAY: "&8",
        BLACK: "&0",
        RESET: "&r",
    }

class Enchants:
    AQUA_AFFINITY = "6"
    BANE_OF_ARTHRO = "18"
    BLAST_PROT = "3"
    BIND = "10"
    VANISH = "71"
    DEPTH_STRIDER = "8"
    EFFICIENCY = "32"
    FEATHER_FALLING = "2"
    FIRE_ASPECT = "20"
    FIRE_PROT = "1"
    FLAME = "50"
    FORTUNE = "35"
    FROST_WALKER = "9"
    INFINITY = "51"
    KNOCKBACK = "19"
    LOOTING = "21"
    SEA_LUCK = "61"
    LURE = "62"
    MENDING = "70"
    POWER = "48"
    PROJECTILE_PROT = "4"
    PROT = "0"
    PUNCH = "49"
    RESPIRATION = "5"
    SHARP = "16"
    SILK = "33"
    SMITE = "17"
    SWEEPING_EDGE = "22"
    THORNS = "7"
    UNBREAKING = "34"

MAX_INT = (1<<31)-1