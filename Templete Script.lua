local Closed = 0
local headers = {["User-Agent"] = "Mozilla/5.0"}
local response = gg.makeRequest("https://api.ipify.org", {["headers"] = headers})
local user_ip, is_allowed, MenuGrass
if response["content"] then
	user_ip = response["content"]
	is_allowed = true
else
	gg.alert("This script need internet access!")
	do return os.exit()
end
return
end
function getARMArchitecture()
    local info = gg.getTargetInfo()
    if info ~= nil then
        return info.x64 and "ARM 64" or "ARM 32"
    else
        return "Unknown ARM"
    end
end
local armArchitecture = getARMArchitecture()


---Check Root
---Check Root
function isRooted()
    local rootTest = io.open("/system/xbin/su", "r") or io.open("/system/bin/su", "r")
    if rootTest then
        rootTest:close()
        return true
    else
        return false
    end
end

if isRooted() then
    _ENV["gg"]["alert"]('The (System has Root !!!','')
    return os.exit()
else
    _ENV["gg"]["alert"]('Good Systeam','')
end



function HIROO()
    local choice = gg.multiChoice({
        'Function 1', --1
        'Function 2', --2
        'Function 3', --3
        'Function 4', --4
        "Function 5", --5
        'Exit' --6
    }, nil, os.date("ঔৣ͜͡➳ SCRIPT SIMPEL🇮🇩\n╔═══════════════════════╗\nঔৣ͜͡➳ 𝗗𝗔𝗧𝗘 : %A %d %B %Y\nঔৣ͜͡➳ 𝗧𝗜𝗠𝗘 : %H:%M:%S %p\nঔৣ͜͡➳ DATA/OBB GAME : "..gg.getTargetInfo()["packageName"].."\nঔৣ͜͡➳ GAME : "..gg.getTargetInfo()["label"] .. "\nঔৣ͜͡➳ GAME : VERSION ".. gg.getTargetInfo()["versionName"] .."\nঔৣ͜͡➳ ARM/BIT : "..armArchitecture .. "\nঔৣ͜͡➳ INTERNET : "..user_ip.."\n╚═══════════════════════╝"))
    if choice == nil then
     else
     gg.toast("@Script By Xyroo!")
    if choice[1] == true then
       function1()
       end
    if choice[2] == true then
       function2()
       end
     if choice[3] == true then
       function3()
       end
     if choice[4] == true then
       function4()
        end
     if choice[5] == true then
       function5()
        end
     if choice[6] == true then
        EXIT()
       end
      end
    Closed = -1
  end
       
       
       
function function1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1:2:3", gg.TYPE_DWORD)
gg.searchNumber("1:2", gg.TYPE_DWORD) gg.getResults(100)
  gg.editAll(9999999, gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Function 1!")
end

function function2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2:3:1", gg.TYPE_DWORD)
gg.searchNumber(":1:3", gg.TYPE_DWORD) gg.getResults(100)
  gg.editAll(9999999, gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Function 2!")
end

function function3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3:4:2", gg.TYPE_DWORD)
gg.searchNumber("1:4", gg.TYPE_DWORD) gg.getResults(100)
  gg.editAll(9999999, gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Function 3!")
end

function function4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1:5:3:2", gg.TYPE_DWORD)
gg.searchNumber("2:5", gg.TYPE_DWORD) gg.getResults(100)
  gg.editAll(9999999, gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Function 4!")
end

function function5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5:2:8", gg.TYPE_DWORD)
gg.searchNumber("8:5", gg.TYPE_DWORD) gg.getResults(100)
  gg.editAll(9999999, gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Function 5!")
end

function EXIT()
    gg.setVisible(true)
    return os.exit(100000000)
end

while true do
    if gg.isVisible(true) then
        Closed = 1
        gg.setVisible(false)
    end
    if Closed == 1 then
        HIROO()
        Closed = 0
    end
end
