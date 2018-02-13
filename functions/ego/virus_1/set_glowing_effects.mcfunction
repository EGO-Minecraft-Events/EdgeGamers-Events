execute @s[score_VR1gl_min=2] ~ ~ ~ effect @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,team=VR1h] minecraft:glowing 3 0 true
scoreboard players remove @s[score_VR1gl_min=2] VR1gl 2
execute @s[score_VR1gl_min=1] ~ ~ ~ effect @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,team=VR1v] minecraft:glowing 3 0 true
scoreboard players remove @s[score_VR1gl_min=2] VR1gl 1
