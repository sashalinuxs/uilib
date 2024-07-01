local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ziheim51000/test/main/azurev4lib"))() -- you can go in the loadstring and modify anything for yourself

-- MAKE SURE TO CHECK OUT THE LINIORA LIB DOCS INCASE YOU DONT UNDERSTAND HOW TO USE

-- https://github.com/violin-suzutsuki/LinoriaLib/blob/main/Example.lua





local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ziheim51000/test/main/ThemeManager"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ziheim51000/test/main/Save%20Manager"))()


local Window = Library:CreateWindow({

    Title = 'Monkey.vio.cc', -- cheat name
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2 -- animation length when the ui is closed.
})




local Tabs = { -- these are your tabs
   
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}






-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Section 1') -- these are your groupboxes better known as "sections"
local RightGroupBox = Tabs.Main:AddRightGroupbox('Section 2') 






















-- you can remove things you dont want

ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder('YourCheatName')
ThemeManager:ApplyToTab(Tabs['UI Settings']) -- if you gonna change UI Settings in the tabs you need to replace this as well for themes

SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
SaveManager:SetFolder('YourCheat/games/'..game.PlaceId)
SaveManager:BuildConfigSection(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()