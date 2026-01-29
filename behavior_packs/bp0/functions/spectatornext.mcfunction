## 호스트 관전 - 1위 플레이어에게 텔레포트
## 사용법: /function spectatornext

## 호스트만 사용 가능
execute @s[tag=!host] ~~~ tellraw @s {"rawtext":[{"text":"§c[오류] 호스트만 사용할 수 있습니다!"}]}

## 레이싱 중인 플레이어 중 가장 앞선 플레이어에게 텔레포트
## checkpoint가 가장 높은 플레이어 찾기
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=13}]
execute @s[tag=host] ~~~ execute @a[tag=racing,scores={checkpoint=13},c=1] ~~~ tellraw @a[tag=host] {"rawtext":[{"text":"§7[관전] "},{"selector":"@a[tag=racing,scores={checkpoint=13},c=1]"},{"text":" (CP13)"}]}

execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=12}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=11}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=10}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=9}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=8}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=7}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=6}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=5}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=4}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=3}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=2}]
execute @s[tag=host] ~~~ tp @s @a[tag=racing,c=1,scores={checkpoint=1}]

## 현재 관전 중인 플레이어 표시
execute @s[tag=host] ~~~ tellraw @s {"rawtext":[{"text":"§a[관전] 선두 플레이어에게 이동했습니다."}]}
