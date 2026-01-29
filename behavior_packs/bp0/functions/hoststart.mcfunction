## 호스트 전용 - 레이스 시작 명령어
## 사용법: /function hoststart

## 호스트만 실행 가능
execute @s[tag=!host] ~~~ tellraw @s {"rawtext":[{"text":"§c[오류] 호스트만 레이스를 시작할 수 있습니다!"}]}
execute @s[tag=!host] ~~~ tellraw @s {"rawtext":[{"text":"§7먼저 /function hostsetup 으로 호스트를 지정하세요."}]}

## 호스트가 실행한 경우에만 레이스 시작
execute @s[tag=host] ~~~ function startrace_host
