Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(100)
	  -- List of pickup hashes (https://pastebin.com/8EuSv2r1)
	  RemoveAllPickupsOfType(0xDF711959) -- carbine rifle
	  RemoveAllPickupsOfType(0xF9AFB48F) -- pistol
	  RemoveAllPickupsOfType(0xA9355DCD) -- pumpshotgun
	end
  end)


  -- DISABLE DISPATCH


  Citizen.CreateThread(function()
	while true do
		Wait(50)
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		SetPlayerWantedLevel(PlayerId(), 0, false)
		SetPlayerWantedLevelNow(PlayerId(), false)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
	end
end)