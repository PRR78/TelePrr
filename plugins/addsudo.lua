--by @alireza_PT
--Our channel: @create_antispam_bot

do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 226123856 -- اینجا شناسه عددی خودتان را قرار بدید

if matches[1] == "addsudo" then
user = 'user#id'..user
end
if is_owner(msg) then
    if msg.from.username ~= nil then
      if string.find(msg.from.username , 'PHAE2099') then --اینجا دقیقا یوزرنیم خود را بدون @ قرار بدید(به حروف بزرگ و کوچک یوزرنیم خود دقت کنید)
          return "Producer within the group is now"
          end
if msg.to.type == 'channel' or 'chat' then
local channel = 'channel#id'..msg.to.id
chat_add_user(chat, user, ok_cb, false)
channel_invite(channel, user, ok_cb, false)
return "We invite producer.Please wait"
end
elseif not is_owner(msg) then
return 'Only owner'
end
end
end
return {
description = "insudo",
usage = {
"!invite name [user_name]",
"!invite id [user_id]" },
patterns = {
"^[!/](addsudo)$",
"^([Aa]ddsudo)$"

},
run = run
}
end
--by @alireza_PT
--Our channel: @create_antispam_bot

