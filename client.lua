--Functions
function DrawTxt(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(6)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/0.873, y - height/11 + 0.31)
end

--Draw text
activity = false
activity2 = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if activity == false then
        DrawTxt(1.160, 0.500, 1.0,1.0,0.50,"~w~LEO: ~r~Inactive", 255,255,255,255)
        elseif activity == true then
        DrawTxt(1.160, 0.500, 1.0,1.0,0.50,"~w~LEO: ~g~Active", 255,255,255,255)
        end
        if activity2 == false then
            DrawTxt(1.160, 0.525, 1.0,1.0,0.50,"~w~FD: ~r~Inactive", 255,255,255,255)
        elseif activity2 == true then
            DrawTxt(1.160, 0.525, 1.0,1.0,0.50,"~w~FD: ~g~Active", 255,255,255,255)
        end
    end
end)

--Commands
RegisterCommand("leo", function(Source, args, rawCommand)
        if args[1] == "on" then
            activity = true
        elseif args[1] == "off" then
            activity = false
        end
end)
RegisterCommand("fd", function(Source, args, rawCommand)
    if args[1] == "on" then
        activity2 = true
    elseif args[1] == "off" then
        activity2 = false
    end
end)
