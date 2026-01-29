## 호스트 설정 - 실행한 플레이어를 호스트(관전자)로 지정
## 사용법: /function hostsetup

## 기존 호스트 태그 제거
tag @a remove host

## 실행자를 호스트로 지정
tag @s add host
tag @s add bypass

## 호스트 크리에이티브 모드 설정
gamemode c @s

## 안내 메시지
tellraw @s {"rawtext":[{"text":"§6[호스트] §a당신은 호스트(관전자)로 지정되었습니다."}]}
tellraw @s {"rawtext":[{"text":"§7- §f/function hoststart §7: 레이스 시작"}]}
tellraw @s {"rawtext":[{"text":"§7- §f/function reset §7: 게임 리셋"}]}
tellraw @s {"rawtext":[{"text":"§7- §f/function spectatornext §7: 다음 플레이어 관전"}]}

## 다른 플레이어들에게 알림
tellraw @a[tag=!host] {"rawtext":[{"selector":"@s"},{"text":"§6님이 호스트(관전자)로 지정되었습니다."}]}
tellraw @a[tag=!host] {"rawtext":[{"text":"§e호스트가 레이스를 시작할 때까지 대기하세요."}]}
