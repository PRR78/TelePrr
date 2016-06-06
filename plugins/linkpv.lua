do

function run(msg, matches)
       if not is_momod(msg) then
        return "Only owner and moderators"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "First, create a newlink Or set your link by /setlink "
       end
         local text = "Group link:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "Send link in privite"
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = run
}

end
