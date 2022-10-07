
SLASH_HMRX1 = "/hmrx"


local function HowMuchRestedXP(count)
        local playerName = UnitName("player")
		local XPExhaustion = GetXPExhaustion()
		local XPMax = UnitXPMax("player")
		DEFAULT_CHAT_FRAME:AddMessage("You have " .. XPExhaustion .. " rested XP " .. "(" ..  XPExhaustion * 100 / XPMax .. '%' .. ")")
end


SlashCmdList["HMRX"] = HowMuchRestedXP;