do
function run(msg, matches)
  return [[
  👥 قیمت گروه های ضد اسپم و ضد تبلیغ :
  
  💵  سوپرگروه 5000 تومان واریز
  💴  سوپرگروه 7000 تومان شارژ
  
  --------------------------------------
  
برای سفارش ضد اسپم
به آی دی @PHAE2099 و در صورت ریپورت بودن به آیدی @pooryapv_bot در بخش تماس با ما یا  @pteleplus_bot  پیام بدهید.
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
