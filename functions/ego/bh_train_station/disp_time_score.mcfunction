scoreboard players operation Seconds BHTSti = @s BHTSti
scoreboard players operation Seconds BHTSti /= 20 constants
scoreboard players operation Seconds BHTSti %= 60 constants
scoreboard players add Seconds BHTSti 1
scoreboard players operation Seconds BHTS = Seconds BHTSti
scoreboard players operation Minutes BHTSti = @s BHTSti
scoreboard players operation Minutes BHTSti /= 1200 constants
scoreboard players operation Minutes BHTS = Minutes BHTSti
