-- =============================================
--        𝙺𝙰𝙿𝚃𝚅𝙸𝙿 𝚂𝙲𝚁𝙸𝙿𝚃 𝙷𝚄𝙱 - 𝙼𝚄𝙻𝚃𝙸-𝙼𝙾𝙳
-- =============================================

--[ LOADING BAR SYSTEM ]--
function StartupLoading()
    local bar = {"□", "□", "□", "□", "□", "□", "□", "□", "□", "□"}
    for i = 1, 10 do
        bar[i] = "■"
        local percent = i * 10
        local visual = table.concat(bar)
        gg.toast("⚡ ʟᴏᴀᴅɪɴɢ ꜱʏꜱᴛᴇᴍꜱ ⚡\n" .. visual .. " " .. percent .. "%")
        gg.sleep(100)
    end
end

--[ EXIT SYSTEM ]--
function ExitScript()
    gg.alert("ꜱᴄʀɪᴘᴛ ᴛᴇʀᴍɪɴᴀᴛᴇᴅ.\nᴛʜᴀɴᴋ ʏᴏᴜ ꜰ𝚘𝚛 ᴜꜱɪɴɢ!")
    os.exit()
end

-- >>> PACKAGE VERIFICATION <<<
local function verify()
    local pkg = "com.mobile.legends"
    local pkg2 = "com.mobilelegends.hwag"
    if gg.getTargetPackage() ~= pkg and gg.getTargetPackage() ~= pkg2 then
        gg.alert("𝙾𝙿𝚂𝚂 𝚆𝚁𝙾𝙽𝙶 𝙶𝙰𝙼𝙴 𝙱𝙸𝚃𝙲𝙷🖕")
        ExitScript()
    end
end

verify()

local function CHECK_LICENSE()
    local OWNER_KEY = "BEGIE" 
    local USER_KEY = "KAPT-VIP-2772"     
    
    local user_input = gg.prompt({"🔑 𝙴𝙽𝚃𝙴𝚁 𝙻𝙸𝙲𝙴𝙽𝚂𝙴 𝙺𝙴𝚈:"}, {""}, {"text"})
    
    if user_input == nil then ExitScript() end
    
    if user_input[1] == OWNER_KEY then
        gg.toast("👑 𝙾𝚆𝙽𝙴𝚁 𝙰𝙲𝙲𝙴𝚂𝚂 𝙶𝚁𝙰𝙽𝚃𝙴𝙳")
    elseif user_input[1] == USER_KEY then
        gg.toast("✅ 𝚄𝚂𝙴𝚁 𝙰𝙲𝙲𝙴𝚂𝚂 𝙶𝚁𝙰𝙽𝚃𝙴𝙳")
    else
        gg.alert("❌ 𝙸𝙽𝚅𝙰𝙻𝙸𝙳 𝙺𝙴𝚈! 𝙲𝙾𝙽𝚃𝙰𝙲𝚃 𝙰𝙳𝙼𝙸𝙽")
        ExitScript()
    end
end

CHECK_LICENSE()

-- >>> EXPIRATION SYSTEM <<<
local EXPIRE_DATE = {year = 2026, month = 5, day = 5} 
local expire_ts = os.time(EXPIRE_DATE)
local current_ts = os.time()

if current_ts > expire_ts then
    gg.alert("❌ 𝚂𝙲𝚁𝙸𝙿𝚃 𝙳𝙸𝚂𝙰𝙱𝙻𝙴𝙳")
    ExitScript()
end

-- >>> BYPASS ACTIVATION <<<
function SECURITY_CHECK()
    gg.setVisible(false)
    gg.toast("🔧 𝙰𝚙𝚙𝚕𝚢𝚒𝚗𝚐 𝚂𝚝𝚊𝚋𝚕𝚎 𝙱𝚢𝚙𝚊𝚜𝚜...")
    gg.sleep(800)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_BSS)
    gg.sleep(500)
    gg.toast("🛡️ 𝚂𝚝𝚊𝚋𝚕𝚎 𝙱𝚢𝚙𝚊𝚜𝚜 𝙰𝚌𝚝𝚒𝚟𝚊𝚝𝚎𝚍")
end

SECURITY_CHECK()
StartupLoading() -- Trigger loading bar after security check

function MAIN()
    local menu = gg.multiChoice({
        "👤 𝙴𝙽𝙴𝙼𝚈 𝙿𝙻𝙰𝚈𝙴𝚁",
        "🤖 𝙴𝙽𝙴𝙼𝚈 𝙱𝙾𝚃",
        "❌ 𝙴𝚇𝙸𝚃"
    }, nil, "🚀 𝙼𝙰𝙸𝙽 𝙼𝙴𝙽𝚄 (𝚂𝚎𝚕𝚎𝚌𝚝 𝚊𝚗𝚍 𝚙𝚛𝚎𝚜𝚜 𝙾𝙺)")

    if menu == nil then return end

    if menu[1] then ENEMY_PLAYER() end
    if menu[2] then ENEMY_BOT() end
    if menu[3] then ExitScript() end
end

-- ================= CATEGORY MENUS =================

function ENEMY_PLAYER()
    local menu = gg.multiChoice({
        "🔭 𝙳𝚛𝚘𝚗𝚎 𝚅𝚒𝚎𝚠",
        "📍 𝙼𝚊𝚙𝙷𝚊𝚌𝚔 (𝙽𝚘 𝙸𝚌𝚘𝚗)",
        "🎯 𝙴𝚗𝚎𝚖𝚢 𝙻𝚘𝚌𝚔",
        "🔙 𝙱𝚊𝚌𝚔"
    }, nil, "👤 𝙴𝙽𝙴𝙼𝚈 𝙿𝙻𝙰𝚈𝙴𝚁 𝙼𝙴𝙽𝚄")

    if menu == nil then return end
    if menu[1] then HOME() end
    if menu[2] then map() end
    if menu[3] then enemy() end 
end

function ENEMY_BOT()
    local menu = gg.multiChoice({
        "💰 𝚄𝚗𝚕𝚒𝚖𝚒𝚝𝚎𝚍 𝙶𝚘𝚕𝚍",
        "⏳ 𝚂𝚔𝚒𝚙 𝙼𝚊𝚝𝚌𝚑",
        "🔙 𝙱𝚊𝚌𝚔"
    }, nil, "🤖 𝙴𝙽𝙴𝙼𝚈 𝙱𝙾𝚃 𝙼𝙴𝙽𝚄")

    if menu == nil then return end
    if menu[1] then GOLD() end
    if menu[2] then skipperClassic() end
end

-- ====================== PLAYER FUNCTIONS ======================

function enemy()
    StartupLoading()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("8.0E;1.5e-323E;2.47e-321E;5.93e-322E;6.0e-322E", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    gg.refineNumber("8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("15", gg.TYPE_DOUBLE)
    gg.clearResults()
    gg.toast("𝙴𝚗𝚎𝚖𝚢 𝙳𝚎𝚝𝚎𝚌𝚝𝚘𝚛 𝙾𝚗")
end

-- ====================== CAMERA VIEW FUNCTIONS ======================

function HOME()
    local prompt = gg.prompt(
        {"𝙳𝚛𝚘𝚗𝚎 𝚅𝚒𝚎𝚠: [1;4]"}, 
        {"1"}, 
        {"number"}
    )

    if prompt == nil then return end

    local choice = tonumber(prompt[1])

    if choice == 1 then
        DRONE_4X()
    elseif choice == 2 then
        DRONE_6X()
    elseif choice == 3 then
        DRONE_8X()
    elseif choice == 4 then
        DRONE_10X()
    else
        gg.toast("❌ 𝙿𝚕𝚎𝚊𝚜𝚎 𝚒𝚗𝚙𝚞𝚝 𝚗𝚞𝚖𝚋𝚎𝚛 1 - 4 𝚘𝚗𝚕𝚢!")
    end
end

function DRONE_4X()
    StartupLoading()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1089806008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089806008", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1094506008", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("-1053839852", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1048839852", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1048839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089722122", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1094522122", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1053577640", gg.TYPE_DWORD)
    gg.searchNumber("-1053577640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057761526", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1054071526", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("ᴅʀᴏɴᴇ ᴠɪᴇᴡ 𝟺x ᴀᴄᴛɪᴠᴇ☑️")
end

function DRONE_6X()
    StartupLoading()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1089806008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089806008", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1095506008", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("-1053839852", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1047839852", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1048839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089722122", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1095522122", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1052577640", gg.TYPE_DWORD)
    gg.searchNumber("-1053577640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057761526", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1053071526", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("ᴅʀᴏɴᴇ ᴠɪᴇᴡ 𝟼x ᴀᴄᴛɪᴠᴇ☑️")
end

function DRONE_8X()
    StartupLoading()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1089806008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089806008", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1097506008", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("-1053839852", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1045839852", gg.TYPE_DWORD)
    gg.searchNumber("1094506008;-1048839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089722122", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1097522122", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1050577640", gg.TYPE_DWORD)
    gg.searchNumber("-1053577640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057761526", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1051071526", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("ᴅʀᴏɴᴇ ᴠɪᴇᴡ 𝟾x ᴀᴄᴛɪᴠᴇ☑️")
end

function DRONE_10X()
    StartupLoading()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_BSS)
    gg.searchNumber("1089806008;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089806008", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1097649357", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("1097649357;-1053839852;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("-1053839852", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1045902131", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("1097649357;-1045902131;1089722122", gg.TYPE_DWORD)
    gg.searchNumber("1089722122", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("1097607414", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("-1057677640;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057677640", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1049834291", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("-1049834291;-1057761526;1110143140", gg.TYPE_DWORD)
    gg.searchNumber("-1057761526", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("-1049876234", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("ᴅʀᴏɴᴇ ᴠɪᴇᴡ 𝟷𝟶x ᴀᴄᴛɪᴠᴇ☑️")
end

-- ================= GOLD LOGIC =================
function GOLD()
    StartupLoading()
    gg.clearResults()
    gg.setVisible(false)
    gg.toast("🚀 𝚄𝚗𝚕𝚒𝚖𝚒𝚝𝚎𝚍 𝙶𝚘𝚕𝚍 𝚂𝚌𝚛𝚒𝚙𝚝 𝚂𝚝𝚊𝚛𝚝𝚎𝚍")
    gg.sleep(1000)
    gg.toast("🔍 𝚂𝚝𝚎𝚙 1: 𝚂𝚎𝚊𝚛𝚌𝚑𝚒𝚗𝚐 𝚏𝚘𝚛 𝚌𝚞𝚛𝚛𝚎𝚗𝚝 𝙶𝚘𝚕𝚍...")
    gg.searchNumber("300", gg.TYPE_DWORD)
    gg.sleep(2000)
    gg.toast("💰 𝙽𝚘𝚠 𝚋𝚞𝚢 𝚊𝚗𝚢 𝚒𝚝𝚎𝚖 𝚝𝚘 𝚛𝚎𝚍𝚞𝚌𝚎 𝚐𝚘𝚕𝚍...")
    gg.sleep(3000)
    gg.toast("🔍 𝚂𝚝𝚎𝚙 2: 𝚁𝚎𝚏𝚒𝚗𝚒𝚗𝚐...")
    gg.searchNumber("50", gg.TYPE_DWORD)
    local count = gg.getResultCount()
    if count > 0 then
        gg.getResults(100)
        gg.editAll("999999999", gg.TYPE_DWORD)
        gg.toast("✅ 𝚂𝚄𝙲𝙲𝙴𝚂𝚂!")
    else
        gg.toast("❌ 𝙵𝚊𝚒𝚕𝚎𝚍. 𝙽𝚘 𝚟𝚊𝚕𝚞𝚎𝚜 𝚏𝚘𝚞𝚗𝚍.")
    end
    gg.clearResults()
end

-- ================= SKIP TIME LOGIC =================
function skipperClassic()
    StartupLoading()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local waktuList = {"⏳ 04:00", "⏳ 08:00", "⏳ 10:00", "⏳ 12:00"}
    local waktuMap = {["⏳ 04:00"] = 240000, ["⏳ 08:00"] = 480000, ["⏳ 10:00"] = 600000, ["⏳ 12:00"] = 720000}
    local pilihan = gg.choice(waktuList, nil, "🎮 𝚂𝚎𝚕𝚎𝚌𝚝 𝚝𝚊𝚛𝚐𝚎𝚝 𝚝𝚒𝚖𝚎 𝚝𝚘 𝚂𝚔𝚒𝚙/𝚁𝚎𝚜𝚎𝚝:")
    if pilihan == nil then return end
    gg.searchNumber("30000;45000;1", gg.TYPE_DWORD)
    gg.refineNumber("30000", gg.TYPE_DWORD)
    local hasil = gg.getResults(10)
    if #hasil == 0 then gg.toast("𝙽𝚘 𝚛𝚎𝚜𝚞𝚕𝚝𝚜 𝚏𝚘𝚞𝚗𝚍.") return end
    local save = {}
    for i, v in ipairs(hasil) do table.insert(save, {address = v.address - 0x8, flags = gg.TYPE_DWORD}) end
    local sebelum = gg.getValues(save)
    gg.sleep(500)
    local sesudah = gg.getValues(save)
    local target = nil
    for i = 1, #sebelum do
        if sebelum[i].value ~= sesudah[i].value then target = save[i] break end
    end
    if target == nil then gg.toast("𝙵𝚊𝚒𝚕𝚎𝚍 𝚝𝚘 𝚍𝚎𝚝𝚎𝚌𝚝 𝚊𝚍𝚍𝚛𝚎𝚜𝚜.") return end
    target.value = waktuMap[waktuList[pilihan]]
    gg.setValues({target})
    gg.toast("✅ 𝙼𝚊𝚝𝚌𝚑 𝚝𝚒𝚖𝚎 𝚜𝚎𝚝 𝚝𝚘 " .. waktuList[pilihan])
    gg.clearResults()
end

-- ================= MAPHACK FUNCTION =================
function map()
    StartupLoading()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("98,784,247,822;47,244,640,279;4,510,805,388,492,275,723;:9", gg.TYPE_QWORD)
    gg.refineNumber("98,784,247,822", gg.TYPE_QWORD)
    local results = gg.getResults(9999)
    if #results > 0 then
        gg.editAll("98,784,247,823", gg.TYPE_QWORD)
    end
    gg.clearResults()
    gg.toast("𝙼𝚊𝚙𝙷𝚊𝚌𝚔 𝙽𝚘 𝙸𝚌𝚘𝚗 𝙾𝚗")
end

-- ================= MAIN LOOP =================
gg.alert("🛡️𝙺𝙰𝙿𝚃 𝚅𝙸𝙿 𝚃𝙴𝚂𝚃 𝚅𝙴𝚁𝚂𝙸𝙾𝙽 🛡️\n📊 𝚅𝙴𝚁𝚂𝙸𝙾𝙽 : 1","𝚁𝚄𝙽")
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        MAIN()
    end
    gg.sleep(100)
end
