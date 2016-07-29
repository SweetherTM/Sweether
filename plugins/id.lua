do 
function run(msg, matches) 
local reply_id = msg['id'] 
local url = "http://8pic.ir/images/t84lc8c66illfknci8sz.png" 
local receiver = get_receiver(msg) 
local file = download_to_file(url) 
local info = '?? 🔰Name: ['..msg.from.first_name..']\n' 
..'?? 🔰User : ['..msg.from.id..']\n' 
..'?? 🔰Username: [Telegram.me/'..msg.from.username..']\n' 
..'?? 🔰User Group: ['..msg.to.id..']\n' 
..'?? 🔰Group Name: ['..msg.to.title..']\n' 
..'?? 🔰channel :  @SweetherTM' 
if matches[1] == 'id' then 
send_photo2(receiver, file, info, rmtmp_cb, cb_extra) 
end 
end 
return { 
patterns = { 
    "^id" 
}, 
run = run 
} 
 
end
