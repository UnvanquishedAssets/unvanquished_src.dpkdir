--[[
===========================================================================

Unvanquished BSD Source Code
Copyright (c) 2013-2016, Unvanquished Developers
All rights reserved.

This file is part of the Unvanquished BSD Source Code (Unvanquished Source Code).

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Unvanquished developers nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL DAEMON DEVELOPERS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

===========================================================================
]]--

function detectEscape(event, document)
	if event.parameters["key_identifier"] == rocket.key_identifier.ESCAPE then
		if document.context.documents["menu_ingame"].style["visibility"] == "hidden" then
			document:Hide()
		else
			for k,v in pairs(document.context.documents) do
				v:Hide()
			end
		end
	end
end

function AvailabilityIcon(availability)
	if availability == "active" then
		-- Check mark icon. UTF-8 encoding of \uf00c
		return "<icon>\xEF\x80\x8C</icon>"
	elseif availability == "locked" then
		-- Padlock icon. UTF-8 encoding of \uf023
		return "<icon>\xEF\x80\xA3</icon>"
	elseif availability == "expensive" then
		-- $1 bill icon. UTF-8 encoding of \uf0d6
		return "<icon>\xEF\x83\x96</icon>";
	elseif availability == "overmindfar" then
		-- Padlock icon. UTF-8 encoding of \uf023
		-- TODO: find a better icon?
		return "<icon>\xEF\x80\xA3</icon>"
	else
		return ""
	end
end

CirclemenuKeyCount = {}
CirclemenuKeys = {}
function CirclemenuSetKeys(document)
  if not document or not document:GetElementById("circlemenu-binds")then
    return
  end

  local binds = document:GetElementById("circlemenu-binds").inner_rml
  CirclemenuKeyCount = {}
  CirclemenuKeys = {}

  for match in (binds.." or "):gmatch("(.-)".." or ") do
      local key = string.upper(match)
      if rocket.key_identifier[key] then
        CirclemenuKeys[rocket.key_identifier[key]] = key
      end
  end
end

function CirclemenuSkeleton(num_items)
	local rml = '<button class="cancelButton" onClick="document:Hide()">Cancel</button>'
	local radius_em = 10
	for i = 0, num_items-1 do
		local angle = 2 * math.pi / num_items * i
		local x = radius_em * math.sin(angle)
		local y = radius_em * -math.cos(angle)
		rml = rml .. string.format('<div style="position: absolute; left: %.1fem; top: %.1fem;"></div>', x, y)
	end
	return rml
end

function CirclemenuKeyboardHints(num_items)
	local rml = ""
	local radius_em = 6.3
	for i=1,num_items do
		local angle = 2 * math.pi / num_items * (i - 1)
		local x = radius_em * math.sin(angle)
		local y = radius_em * -math.cos(angle)
		rml = rml .. string.format('<div style="position: absolute; left: %.1fem; top: %.1fem;"><p class="key">%d</p></div>', x, y, i % 10)
	end
	return rml
end

-- The num_handler callback will be given two arguments: an integer in
-- [1, 10] indicating which item the user selects, and the key event
function CirclemenuHandleKey(event, document, num_handler)
	local key = event.parameters["key_identifier"]
	local index

	if CirclemenuKeyCount[key] ~= nil then
		CirclemenuKeyCount[key]["count"] = CirclemenuKeyCount[key]["count"]+1
	else
		CirclemenuKeyCount[key] = {count=1,clicks=1}
	end

	if key == rocket.key_identifier["0"] then
		index = 10
	elseif key >= rocket.key_identifier["1"] and key <= rocket.key_identifier["9"] then
		index = key - rocket.key_identifier["1"] + 1
	else
		detectEscape(event, document)
		return
	end
	num_handler(index, event)
end

function CirclemenuHandleKeyUp(event, document)
  local settings = tonumber(Cvar.get("cg_closeCircleMenu"))
  local key = event.parameters["key_identifier"]
  local keycount = CirclemenuKeyCount[key]

  if CirclemenuKeyCount[key] == nil then
    CirclemenuKeyCount[key] = {count=0,clicks=1}
  end

  local isCirclemenuKey = CirclemenuKeys[key] ~= nil
  local clicks = CirclemenuKeyCount[key]["clicks"]

  if settings == 1 and isCirclemenuKey and clicks > 1 then
    document:Hide()
  end

  if settings == 2 and isCirclemenuKey then
    document:Hide()
  end
  CirclemenuKeyCount[key]["count"] = 0
  CirclemenuKeyCount[key]["clicks"] = CirclemenuKeyCount[key]["clicks"]+1
end

function welcome(event, document)
  if Cvar.get("cg_welcome") ~= "1" and Cvar.get("name") == "UnnamedPlayer" then
    Cvar.set("name", "Player#" .. math.ceil(math.random()*10000000))
    Events.pushevent("show options_welcome", event)
    Cvar.set("cg_welcome", "1")
    Cvar.archive("cg_welcome")
  end
end
