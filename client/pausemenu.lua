-- PAUSE MENU

function SetData()
  local name = GetPlayerName(PlayerId())
  local id = GetPlayerServerId(PlayerId())
  Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '' ..Config.servername.. '~w~ | ' ..Config.discord.. '~w~ | ' .._U('id')..'~w~: ' .. id ..  '~w~ | ' .._U('name').. '~w~: '.. name)
end

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(100)
      SetData()
  end
end)