local function toggleNuiFrame(shouldShow)
  SetNuiFocus(shouldShow, shouldShow)
  SendReactMessage('setVisible', shouldShow)
end

RegisterNetEvent('brinley-report:openUI', function()
  toggleNuiFrame(true)
end)

RegisterNUICallback('hideFrame', function(_, cb)
  toggleNuiFrame(false)
  cb({})
end)

RegisterNUICallback('submitdata', function(data, cb)
  local pName = GetPlayerName(PlayerId())
  print("Title: " .. data.title)
  print("Description: " .. data.description)
  print("URL: " .. data.url)
  TriggerServerEvent('submit:bug:report', data)
  toggleNuiFrame(false)
end)
