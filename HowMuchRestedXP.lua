
SLASH_HMRX1 = "/hmrx"


local function HowMuchRestedXP(count)
        local playerName = UnitName("player")
		local XPExhaustion = GetXPExhaustion()
		local XPMax = UnitXPMax("player")
		if XPExhaustion == nul then XPExhaustion = 0 end
		if count == "" then
			DEFAULT_CHAT_FRAME:AddMessage("You have " .. XPExhaustion .. " rested XP " .. "(" ..  math.ceil(XPExhaustion * 100 / XPMax) .. '%' .. ")")
		else
			DEFAULT_CHAT_FRAME:AddMessage("You will get 150% rested xp in about " .. ((XPMax * 1.5) - XPExhaustion) / (76 * count) .. " seconds")
		end
end


SlashCmdList["HMRX"] = HowMuchRestedXP;