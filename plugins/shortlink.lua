local function run(msg, matches)
  local yon = http.request('http://api.yon.ir/?url='..URL.escape(matches[1]))
  local jdat = json:decode(yon)
  local bitly = https.request('https://api-ssl.bitly.com/v3/shorten?access_token=f2d0b4eabb524aaaf22fbc51ca620ae0fa16753d&longUrl='..URL.escape(matches[1]))
  local data = json:decode(bitly)
  local yeo = http.request('http://yeo.ir/api.php?url='..URL.escape(matches[1])..'=')
  local opizo = http.request('http://api.gpmod.ir/shorten/?url='..URL.escape(matches[1])..'&username=mohamad.khoshnava@gmail.com')
  local u2s = http.request('http://u2s.ir/?api=1&return_text=1&url='..URL.escape(matches[1]))
  local llink = http.request('http://llink.ir/yourls-api.php?signature=a13360d6d8&action=shorturl&url='..URL.escape(matches[1])..'&format=simple')
 
    return 'Main link :\n'..data.data.long_url..'\n\nShort links by 6 Short maker link sites  : \nShorten by bitly :\n___________________________\n'..data.data.url..'\n___________________________\nShorten by yeo :\n'..yeo..'\n___________________________\nShorten by opizo :\n'..opizo..'\n___________________________\nShorten by u2s :\n'..u2s..'\n___________________________\nShorten by llink : \n'..llink..'\n___________________________\nShorten by yon : \nyon.ir/'..jdat.output..'\n___________________________\n@TelePlus'
end
return {
  usage = "Short links by 6 style\n/short your Link\nLink to start by http://",
  patterns = {
    "^[!#/][Ss][Hh][Oo][Rr][Tt] (.*)$"
  },
  run = run
}
