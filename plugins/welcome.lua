do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = 'Hello.Welcome :)'..'\n'..'\n'
     ..'Your profile'..'\n'
    ..'> Name :  '..msg.action.user.print_name..'\n'
    ..'> Username  : @'..(msg.action.user.username or "---")..'\n'
    ..'> Id : '..msg.action.user.id..'\n'
    ..'-------------'..'\n'
    ..'* Group name : '..msg.to.title..'\n'
    ..'* Group id : '..msg.to.id..'\n'
    ..'-------------'..'\n'
    ..'> Reagent you : '..msg.from.print_name..'\n'
    ..'> Username of Reagent you : @'..(msg.from.username or "---")..'\n'
    ..'> Id of Reagent you : '..msg.from.id..'\n'
    ..'-------------'..'\n'
    ..'{Channel} : @TelePlus'..'\n'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
        local text = 'Hello.Welcome :)'..'\n'..'\n'
     ..'Your profile'..'\n'
    ..'> Name  :  '..msg.from.print_name..'\n'
    ..'> Username : @'..(msg.from.username or "Do not have one!")..'\n'
    ..'> Id : '..msg.from.id..'\n'
    ..'-------------'..'\n'
    ..'* Group name : '..msg.to.title..'\n'
    ..'* Group id : '..msg.to.id..'\n'
     ..'-------------'..'\n'
    ..'{Channel} : @TelePlus'..'\n'..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
    },
 run = run
}
end

-- @alireza_PT -- @CliApi
--our channel: @create_antispam_bot