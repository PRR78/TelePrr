do
function run(msg, matches)
  return [[
  👥 قیمت گروه های ضد اسپم و ضد تبلیغ :
  
  💵  سوپرگروه 10000 تومان واریز به شماره حساب
  
  6037691588546218
  پدرام رجایی بانک صادرات
  
  💴  سوپر گروه 14000 تومان شارژ
  
  --------------------------------------
  
برای سفارش ضد اسپم
به آی دی @PHAE2099 و در صورت ریپورت بودن به آیدی @pooryapv_bot در بخش تماس با ما یا  @pteleplus_bot  پیام بدهید.

Channel : @TelePlus
  ]]
  end
return {
  description = "!buy", 
  usage = " !buy",
  patterns = {
    "^[#/!][Bb]uy$",
    "^[Bb]uy$"
  },
  run = run
}
end
