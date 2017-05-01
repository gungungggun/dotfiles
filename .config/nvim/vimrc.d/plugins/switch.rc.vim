" Switchの定義追加
let g:switch_custom_definitions =
    \[
    \	['on', 'off'],
    \	['up', 'down'],
    \	['from', 'to'],
    \	['relative', 'absolute'],
    \	['margin', 'padding'],
    \	['top', 'right', 'bottom', 'left'],
    \	['east', 'west', 'north', 'south'],
    \	['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
    \	['月', '火', '水', '木', '金', '土', '日'],
    \	['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
    \	['start', 'stop'],
    \	['next', 'previous'],
    \	['yes', 'no'],
    \	['minimun', 'maxinum'],
    \	['min', 'max'],
    \	['jpg', 'png', 'gif'],
    \]

" true falseのスイッチ
nnoremap ^ :Switch<CR>
