local v15 = v14:CreateWindow({
    Title = "Banana Cat Hub-Blox Fruit [ Premium ]",
    SubTitle = "By Obii",
    TabWidth = 160,
    Theme = "Dark",
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End
});

local v16 = {
    Home = v15:AddTab({ Title = "Tab Thông Tin" }),
    Main = v15:AddTab({ Title = "Tab Farming" }),
    Sea = v15:AddTab({ Title = "Tab Volcano And Sea Event" }),
    ITM = v15:AddTab({ Title = "Tab Farming Other" }),
    Setting = v15:AddTab({ Title = "Setting Farm" }),
    Status = v15:AddTab({ Title = "Tab Status And Server" }),
    Stats = v15:AddTab({ Title = "Tab Stats" }),
    Player = v15:AddTab({ Title = "Tab Local Player" }),
    Teleport = v15:AddTab({ Title = "Tab Teleport" }),
    Visual = v15:AddTab({ Title = "Tab Visual" }),
    Fruit = v15:AddTab({ Title = "Tab Esp And Fruit" }),
    Raid = v15:AddTab({ Title = "Tab Raid" }),
    Race = v15:AddTab({ Title = "Tab Upgrade Race" }),
    Shop = v15:AddTab({ Title = "Tab Shop" }),
    Misc = v15:AddTab({ Title = "Tab Misc" })
};

local v17 = v14.Options;
local v18 = game.PlaceId;
local Sea1, Sea2, Sea3 = false, false, false;

if (v18 == 2753915549) then Sea1 = true;
elseif (v18 == 4442272183) then Sea2 = true;
elseif (v18 == 7449423635) then Sea3 = true;
else game:Shutdown(); end

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
    wait();
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);

function CheckLevel()
    local v197 = game:GetService("Players").LocalPlayer.Data.Level.Value;
    if Sea1 then
        if ((v197 == 1) or (v197 <= 9) or (SelectMonster == "Bandit")) then
            Ms, NameQuest, QuestLv, NameMon = "Bandit", "BanditQuest1", 1, "Bandit";
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875);
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953);
        elseif ((v197 == 10) or (v197 <= 14) or (SelectMonster == "Monkey")) then
            Ms, NameQuest, QuestLv, NameMon = "Monkey", "JungleQuest", 1, "Monkey";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1448.1446533203, 50.851993560791, 63.60718536377);
        elseif ((v197 == 15) or (v197 <= 29) or (SelectMonster == "Gorilla")) then
            Ms, NameQuest, QuestLv, NameMon = "Gorilla", "JungleQuest", 2, "Gorilla";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1142.6488037109, 40.462348937988, - 515.39227294922);
        elseif ((v197 == 30) or (v197 <= 39) or (SelectMonster == "Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Pirate", "BuggyQuest1", 1, "Pirate";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1201.0881347656, 40.628940582275, 3857.5966796875);
        elseif ((v197 == 40) or (v197 <= 59) or (SelectMonster == "Brute")) then
            Ms, NameQuest, QuestLv, NameMon = "Brute", "BuggyQuest1", 2, "Brute";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1387.5324707031, 24.592035293579, 4100.9575195313);
        elseif ((v197 == 60) or (v197 <= 74) or (SelectMonster == "Desert Bandit")) then
            Ms, NameQuest, QuestLv, NameMon = "Desert Bandit", "DesertQuest", 1, "Desert Bandit";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625);
        elseif ((v197 == 75) or (v197 <= 89) or (SelectMonster == "Desert Officer")) then
            Ms, NameQuest, QuestLv, NameMon = "Desert Officer", "DesertQuest", 2, "Desert Officer";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688);
        elseif ((v197 == 90) or (v197 <= 99) or (SelectMonster == "Snow Bandit")) then
            Ms, NameQuest, QuestLv, NameMon = "Snow Bandit", "SnowQuest", 1, "Snow Bandit";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, - 1328.2418212891);
        elseif ((v197 == 100) or (v197 <= 119) or (SelectMonster == "Snowman")) then
            Ms, NameQuest, QuestLv, NameMon = "Snowman", "SnowQuest", 2, "Snowman";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172);
        elseif ((v197 == 120) or (v197 <= 149) or (SelectMonster == "Chief Petty Officer")) then
            Ms, NameQuest, QuestLv, NameMon = "Chief Petty Officer", "MarineQuest2", 1, "Chief Petty Officer";
            CFrameQ = CFrame.new(- 5035.49609375, 28.677835464478, 4324.1840820313);
            CFrameMon = CFrame.new(- 4931.1552734375, 65.793113708496, 4121.8393554688);
        elseif ((v197 == 150) or (v197 <= 174) or (SelectMonster == "Sky Bandit")) then
            Ms, NameQuest, QuestLv, NameMon = "Sky Bandit", "SkyQuest", 1, "Sky Bandit";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 4955.6411132813, 365.46365356445, - 2908.1865234375);
        elseif ((v197 == 175) or (v197 <= 189) or (SelectMonster == "Dark Master")) then
            Ms, NameQuest, QuestLv, NameMon = "Dark Master", "SkyQuest", 2, "Dark Master";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 5148.1650390625, 439.04571533203, - 2332.9611816406);
        elseif ((v197 == 190) or (v197 <= 209) or (SelectMonster == "Prisoner")) then
            Ms, NameQuest, QuestLv, NameMon = "Prisoner", "PrisonerQuest", 1, "Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, - 0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816);
        elseif ((v197 == 210) or (v197 <= 249) or (SelectMonster == "Dangerous Prisoner")) then
            Ms, NameQuest, QuestLv, NameMon = "Dangerous Prisoner", "PrisonerQuest", 2, "Dangerous Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, - 0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827);
        elseif ((v197 == 250) or (v197 <= 274) or (SelectMonster == "Toga Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Toga Warrior", "ColosseumQuest", 1, "Toga Warrior";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1872.5166015625, 49.080215454102, - 2913.810546875);
        elseif ((v197 == 275) or (v197 <= 299) or (SelectMonster == "Gladiator")) then
            Ms, NameQuest, QuestLv, NameMon = "Gladiator", "ColosseumQuest", 2, "Gladiator";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1521.3740234375, 81.203170776367, - 3066.3139648438);
        elseif ((v197 == 300) or (v197 <= 324) or (SelectMonster == "Military Soldier")) then
            Ms, NameQuest, QuestLv, NameMon = "Military Soldier", "MagmaQuest", 1, "Military Soldier";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5369.0004882813, 61.24352645874, 8556.4921875);
        elseif ((v197 == 325) or (v197 <= 374) or (SelectMonster == "Military Spy")) then
            Ms, NameQuest, QuestLv, NameMon = "Military Spy", "MagmaQuest", 2, "Military Spy";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, - 0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562);
        elseif ((v197 == 375) or (v197 <= 399) or (SelectMonster == "Fishman Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Fishman Warrior", "FishmanQuest", 1, "Fishman Warrior";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 400) or (v197 <= 449) or (SelectMonster == "Fishman Commando")) then
            Ms, NameQuest, QuestLv, NameMon = "Fishman Commando", "FishmanQuest", 2, "Fishman Commando";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 450) or (v197 <= 474) or (SelectMonster == "God's Guard")) then
            Ms, NameQuest, QuestLv, NameMon = "God's Guard", "SkyExp1Quest", 1, "God's Guard";
            CFrameQ = CFrame.new(- 4721.8603515625, 845.30297851563, - 1953.8489990234);
            CFrameMon = CFrame.new(- 4628.0498046875, 866.92877197266, - 1931.2352294922);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
            end
        elseif ((v197 == 475) or (v197 <= 524) or (SelectMonster == "Shanda")) then
            Ms, NameQuest, QuestLv, NameMon = "Shanda", "SkyExp1Quest", 2, "Shanda";
            CFrameQ = CFrame.new(- 7863.1596679688, 5545.5190429688, - 378.42266845703);
            CFrameMon = CFrame.new(- 7685.1474609375, 5601.0751953125, - 441.38876342773);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
            end
        elseif ((v197 == 525) or (v197 <= 549) or (SelectMonster == "Royal Squad")) then
            Ms, NameQuest, QuestLv, NameMon = "Royal Squad", "SkyExp2Quest", 1, "Royal Squad";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7654.2514648438, 5637.1079101563, - 1407.7550048828);
        elseif ((v197 == 550) or (v197 <= 624) or (SelectMonster == "Royal Soldier")) then
            Ms, NameQuest, QuestLv, NameMon = "Royal Soldier", "SkyExp2Quest", 2, "Royal Soldier";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7760.4106445313, 5679.9077148438, - 1884.8112792969);
        elseif ((v197 == 625) or (v197 <= 649) or (SelectMonster == "Galley Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Galley Pirate", "FountainQuest", 1, "Galley Pirate";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063);
        elseif ((v197 >= 650) or (SelectMonster == "Galley Captain")) then
            Ms, NameQuest, QuestLv, NameMon = "Galley Captain", "FountainQuest", 2, "Galley Captain";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188);
        end
    end
    if Sea2 then
        if ((v197 == 700) or (v197 <= 724) or (SelectMonster == "Raider")) then
            Ms, NameQuest, QuestLv, NameMon = "Raider", "Area1Quest", 1, "Raider";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688);
        elseif ((v197 == 725) or (v197 <= 774) or (SelectMonster == "Mercenary")) then
            Ms, NameQuest, QuestLv, NameMon = "Mercenary", "Area1Quest", 2, "Mercenary";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(- 864.85009765625, 122.47104644775, 1453.1505126953);
        elseif ((v197 == 775) or (v197 <= 799) or (SelectMonster == "Swan Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Swan Pirate", "Area2Quest", 1, "Swan Pirate";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125);
        elseif ((v197 == 800) or (v197 <= 874) or (SelectMonster == "Factory Staff")) then
            Ms, NameQuest, QuestLv, NameMon = "Factory Staff", "Area2Quest", 2, "Factory Staff";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797);
        elseif ((v197 == 875) or (v197 <= 899) or (SelectMonster == "Marine Lieutenan")) then
            Ms, NameQuest, QuestLv, NameMon = "Marine Lieutenant", "MarineQuest3", 1, "Marine Lieutenant";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2489.2622070313, 84.613594055176, - 3151.8830566406);
        elseif ((v197 == 900) or (v197 <= 949) or (SelectMonster == "Marine Captain")) then
            Ms, NameQuest, QuestLv, NameMon = "Marine Captain", "MarineQuest3", 2, "Marine Captain";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2335.2026367188, 79.786659240723, - 3245.8674316406);
        elseif ((v197 == 950) or (v197 <= 974) or (SelectMonster == "Zombie")) then
            Ms, NameQuest, QuestLv, NameMon = "Zombie", "ZombieQuest", 1, "Zombie";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5536.4970703125, 101.08577728271, - 835.59075927734);
        elseif ((v197 == 975) or (v197 <= 999) or (SelectMonster == "Vampire")) then
            Ms = "Vampire";
            NameQuest = "ZombieQuest";
            QuestLv = 2;
            NameMon = "Vampire";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625);
        elseif ((v197 == 1000) or (v197 <= 1049) or (SelectMonster == "Snow Trooper")) then
            Ms, NameQuest, QuestLv, NameMon = "Snow Trooper", "SnowMountainQuest", 1, "Snow Trooper";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, - 5484.9165039063);
        elseif ((v197 == 1050) or (v197 <= 1099) or (SelectMonster == "Winter Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Winter Warrior", "SnowMountainQuest", 2, "Winter Warrior";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, - 5174.130859375);
        elseif ((v197 == 1100) or (v197 <= 1124) or (SelectMonster == "Lab Subordinate")) then
            Ms, NameQuest, QuestLv, NameMon = "Lab Subordinate", "IceSideQuest", 1, "Lab Subordinate";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 5720.5576171875, 63.309471130371, - 4784.6103515625);
        elseif ((v197 == 1125) or (v197 <= 1174) or (SelectMonster == "Horned Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Horned Warrior", "IceSideQuest", 2, "Horned Warrior";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 6292.751953125, 91.181983947754, - 5502.6499023438);
        elseif ((v197 == 1175) or (v197 <= 1199) or (SelectMonster == "Magma Ninja")) then
            Ms, NameQuest, QuestLv, NameMon = "Magma Ninja", "FireSideQuest", 1, "Magma Ninja";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5461.8388671875, 130.36347961426, - 5836.4702148438);
        elseif ((v197 == 1200) or (v197 <= 1249) or (SelectMonster == "Lava Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Lava Pirate", "FireSideQuest", 2, "Lava Pirate";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5251.1889648438, 55.164535522461, - 4774.4096679688);
        elseif ((v197 == 1250) or (v197 <= 1274) or (SelectMonster == "Ship Deckhand")) then
            Ms, NameQuest, QuestLv, NameMon = "Ship Deckhand", "ShipQuest1", 1, "Ship Deckhand";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1275) or (v197 <= 1299) or (SelectMonster == "Ship Engineer")) then
            Ms, NameQuest, QuestLv, NameMon = "Ship Engineer", "ShipQuest1", 2, "Ship Engineer";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1300) or (v197 <= 1324) or (SelectMonster == "Ship Steward")) then
            Ms, NameQuest, QuestLv, NameMon = "Ship Steward", "ShipQuest2", 1, "Ship Steward";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1325) or (v197 <= 1349) or (SelectMonster == "Ship Officer")) then
            Ms, NameQuest, QuestLv, NameMon = "Ship Officer", "ShipQuest2", 2, "Ship Officer";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1350) or (v197 <= 1374) or (SelectMonster == "Arctic Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Arctic Warrior", "FrostQuest", 1, "Arctic Warrior";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, - 6472.7568359375);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422));
            end
        elseif ((v197 == 1375) or (v197 <= 1424) or (SelectMonster == "Snow Lurker")) then
            Ms, NameQuest, QuestLv, NameMon = "Snow Lurker", "FrostQuest", 2, "Snow Lurker";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, - 6618.3481445313);
        elseif ((v197 == 1425) or (v197 <= 1449) or (SelectMonster == "Sea Soldier")) then
            Ms, NameQuest, QuestLv, NameMon = "Sea Soldier", "ForgottenQuest", 1, "Sea Soldier";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3185.0153808594, 58.789089202881, - 9663.6064453125);
        elseif ((v197 >= 1450) or (SelectMonster == "Water Fighter")) then
            Ms, NameQuest, QuestLv, NameMon = "Water Fighter", "ForgottenQuest", 2, "Water Fighter";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3262.9301757813, 298.69036865234, - 10552.529296875);
        end
    end
    if Sea3 then
        if ((v197 == 1500) or (v197 <= 1524) or (SelectMonster == "Pirate Millionaire")) then
            Ms, NameQuest, QuestLv, NameMon = "Pirate Millionaire", "PiratePortQuest", 1, "Pirate Millionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 193.99227905273438, 56.12502670288086, 5755.7880859375);
        elseif ((v197 == 1525) or (v197 <= 1574) or (SelectMonster == "Pistol Billionaire")) then
            Ms, NameQuest, QuestLv, NameMon = "Pistol Billionaire", "PiratePortQuest", 2, "Pistol Billionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 188.14462280273438, 84.49613189697266, 6337.0419921875);
        elseif ((v197 == 1575) or (v197 <= 1599) or (SelectMonster == "Dragon Crew Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Dragon Crew Warrior", "DragonCrewQuest", 1, "Dragon Crew Warrior";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, - 978.93408203125);
        elseif ((v197 == 1600) or (v197 <= 1624) or (SelectMonster == "Dragon Crew Archer")) then
            Ms, NameQuest, QuestLv, NameMon = "Dragon Crew Archer", "DragonCrewQuest", 2, "Dragon Crew Archer";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625);
        elseif ((v197 == 1625) or (v197 <= 1649) or (SelectMonster == "Hydra Enforcer")) then
            Ms, NameQuest, QuestLv, NameMon = "Hydra Enforcer", "VenomCrewQuest", 1, "Hydra Enforcer";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906);
        elseif ((v197 == 1650) or (v197 <= 1699) or (SelectMonster == "Venomous Assailant")) then
            Ms, NameQuest, QuestLv, NameMon = "Venomous Assailant", "VenomCrewQuest", 2, "Venomous Assailant";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938);
        elseif ((v197 == 1700) or (v197 <= 1724) or (SelectMonster == "Marine Commodore")) then
            Ms, NameQuest, QuestLv, NameMon = "Marine Commodore", "MarineTreeIsland", 1, "Marine Commodore";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, - 7109.5043945313);
        elseif ((v197 == 1725) or (v197 <= 1774) or (SelectMonster == "Marine Rear Admiral")) then
            Ms, NameQuest, QuestLv, NameMon = "Marine Rear Admiral", "MarineTreeIsland", 2, "Marine Rear Admiral";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, - 7048.6342773438);
        elseif ((v197 == 1775) or (v197 <= 1799) or (SelectMonster == "Fishman Raider")) then
            Ms, NameQuest, QuestLv, NameMon = "Fishman Raider", "DeepForestIsland3", 1, "Fishman Raider";
            CFrameQ = CFrame.new(- 10582.759765625, 331.78845214844, - 8757.666015625);
            CFrameMon = CFrame.new(- 10553.268554688, 521.38439941406, - 8176.9458007813);
        elseif ((v197 == 1800) or (v197 <= 1824) or (SelectMonster == "Fishman Captain")) then
            Ms, NameQuest, QuestLv, NameMon = "Fishman Captain", "DeepForestIsland3", 2, "Fishman Captain";
            CFrameQ = CFrame.new(- 10583.099609375, 331.78845214844, - 8759.4638671875);
            CFrameMon = CFrame.new(- 10789.401367188, 427.18637084961, - 9131.4423828125);
        elseif ((v197 == 1825) or (v197 <= 1849) or (SelectMonster == "Forest Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Forest Pirate", "DeepForestIsland", 1, "Forest Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13489.397460938, 400.30349731445, - 7770.251953125);
        elseif ((v197 == 1850) or (v197 <= 1899) or (SelectMonster == "Mythological Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Mythological Pirate", "DeepForestIsland", 2, "Mythological Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13508.616210938, 582.46228027344, - 6985.3037109375);
        elseif ((v197 == 1900) or (v197 <= 1924) or (SelectMonster == "Jungle Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Jungle Pirate", "DeepForestIsland2", 1, "Jungle Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 12267.103515625, 459.75262451172, - 10277.200195313);
        elseif ((v197 == 1925) or (v197 <= 1974) or (SelectMonster == "Musketeer Pirate")) then
            Ms, NameQuest, QuestLv, NameMon = "Musketeer Pirate", "DeepForestIsland2", 2, "Musketeer Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 13291.5078125, 520.47338867188, - 9904.638671875);
        elseif ((v197 == 1975) or (v197 <= 1999) or (SelectMonster == "Reborn Skeleton")) then
            Ms, NameQuest, QuestLv, NameMon = "Reborn Skeleton", "HauntedQuest1", 1, "Reborn Skeleton";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 8761.77148, 183.431747, 6168.33301, 0.978073597, - 0.000013950732, - 0.208259016, - 0.0000010807393, 1, - 0.00007206303, 0.208259016, 0.00007070804, 0.978073597);
        elseif ((v197 == 2000) or (v197 <= 2024) or (SelectMonster == "Living Zombie")) then
            Ms, NameQuest, QuestLv, NameMon = "Living Zombie", "HauntedQuest1", 2, "Living Zombie";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, - 2.5800633e-8, 1, - 6.068485e-8, - 0.0324240364, 5.981639e-8, 0.999474227);
        elseif ((v197 == 2025) or (v197 <= 2049) or (SelectMonster == "Demonic Soul")) then
            Ms, NameQuest, QuestLv, NameMon = "Demonic Soul", "HauntedQuest2", 1, "Demonic Soul";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9712.03125, 204.69589233398, 6193.322265625);
        elseif ((v197 == 2050) or (v197 <= 2074) or (SelectMonster == "Posessed Mummy")) then
            Ms, NameQuest, QuestLv, NameMon = "Posessed Mummy", "HauntedQuest2", 2, "Posessed Mummy";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9545.7763671875, 69.619895935059, 6339.5615234375);
        elseif ((v197 == 2075) or (v197 <= 2099) or (SelectMonster == "Peanut Scout")) then
            Ms, NameQuest, QuestLv, NameMon = "Peanut Scout", "NutsIslandQuest", 1, "Peanut Scout";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2100) or (v197 <= 2124) or (SelectMonster == "Peanut President")) then
            Ms, NameQuest, QuestLv, NameMon = "Peanut President", "NutsIslandQuest", 2, "Peanut President";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2125) or (v197 <= 2149) or (SelectMonster == "Ice Cream Chef")) then
            Ms, NameQuest, QuestLv, NameMon = "Ice Cream Chef", "IceCreamIslandQuest", 1, "Ice Cream Chef";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, 0, - 0.997525156, 0, 1.00000012, 0, 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2150) or (v197 <= 2199) or (SelectMonster == "Ice Cream Commander")) then
            Ms, NameQuest, QuestLv, NameMon = "Ice Cream Commander", "IceCreamIslandQuest", 2, "Ice Cream Commander";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, 0, - 0.997525156, 0, 1.00000012, 0, 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2200) or (v197 <= 2224) or (SelectMonster == "Cookie Crafter")) then
            Ms, NameQuest, QuestLv, NameMon = "Cookie Crafter", "CakeQuest1", 1, "Cookie Crafter";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 2321.71216, 36.699482, - 12216.7871, - 0.780074954, 0, 0.625686109, 0, 1, 0, - 0.625686109, 0, - 0.780074954);
        elseif ((v197 == 2225) or (v197 <= 2249) or (SelectMonster == "Cake Guard")) then
            Ms, NameQuest, QuestLv, NameMon = "Cake Guard", "CakeQuest1", 2, "Cake Guard";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 1418.11011, 36.6718941, - 12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, - 0.997700036, 0, 0.0677844882);
        elseif ((v197 == 2250) or (v197 <= 2274) or (SelectMonster == "Baking Staff")) then
            Ms, NameQuest, QuestLv, NameMon = "Baking Staff", "CakeQuest2", 1, "Baking Staff";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, 0, - 0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765);
        elseif ((v197 == 2275) or (v197 <= 2299) or (SelectMonster == "Head Baker")) then
            Ms, NameQuest, QuestLv, NameMon = "Head Baker", "CakeQuest2", 2, "Head Baker";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, 0, - 0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765);
        elseif ((v197 == 2300) or (v197 <= 2324) or (SelectMonster == "Cocoa Warrior")) then
            Ms, NameQuest, QuestLv, NameMon = "Cocoa Warrior", "CocoaQuest", 1, "Cocoa Warrior";
            CFrameQ = CFrame.new(231.2927246094, 73.08293151855, - 12219.0390625);
            CFrameMon = CFrame.new(201.1236572266, 73.9839553833, - 12388.328125);
        end
    end
end

local function v20(v199)
    return math.floor(tonumber(v199) + 0.5);
end

function UpdateIslandESP()
    for _, v426 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if (v426.Name ~= "Sea") then
                    if not v426:FindFirstChild("NameEsp") then
                        local v1130 = Instance.new("BillboardGui", v426);
                        v1130.Name = "NameEsp";
                        v1130.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1130.Size = UDim2.new(1, 200, 1, 30);
                        v1130.Adornee = v426;
                        v1130.AlwaysOnTop = true;
                        local v1136 = Instance.new("TextLabel", v1130);
                        v1136.Font = "GothamBold";
                        v1136.FontSize = "Size14";
                        v1136.TextWrapped = true;
                        v1136.Size = UDim2.new(1, 0, 1, 0);
                        v1136.TextYAlignment = "Top";
                        v1136.BackgroundTransparency = 1;
                        v1136.TextStrokeTransparency = 0.5;
                        v1136.TextColor3 = Color3.fromRGB(7, 236, 240);
                    else
                        v426['NameEsp'].TextLabel.Text = v426.Name .. "   \n" .. math.floor((game:GetService("Players").LocalPlayer.Character.Head.Position - v426.Position).Magnitude / 3) .. " Distance";
                    end
                end
            elseif v426:FindFirstChild("NameEsp") then
                v426:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end

local Number = math.random(1, 1000000);

function UpdatePlayerChams()
    for _, v428 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(function()
            if v428.Character and v428.Character:FindFirstChild("Head") then
                if ESPPlayer then
                    if not v428.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        local v1146 = Instance.new("BillboardGui", v428.Character.Head);
                        v1146.Name = "NameEsp" .. Number;
                        v1146.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1146.Size = UDim2.new(1, 200, 1, 30);
                        v1146.Adornee = v428.Character.Head;
                        v1146.AlwaysOnTop = true;
                        local v1153 = Instance.new("TextLabel", v1146);
                        v1153.Font = Enum.Font.GothamSemibold;
                        v1153.FontSize = "Size14";
                        v1153.TextWrapped = true;
                        v1153.Size = UDim2.new(1, 0, 1, 0);
                        v1153.TextYAlignment = "Top";
                        v1153.BackgroundTransparency = 1;
                        v1153.TextStrokeTransparency = 0.5;
                        if (v428.Team == game.Players.LocalPlayer.Team) then
                            v1153.TextColor3 = Color3.new(0, 255, 0);
                        else
                            v1153.TextColor3 = Color3.new(255, 0, 0);
                        end
                    else
                        v428.Character.Head["NameEsp" .. Number].TextLabel.Text = v428.Name .. " | " .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v428.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. v20((v428.Character.Humanoid.Health * 100) / v428.Character.Humanoid.MaxHealth) .. "%";
                    end
                elseif v428.Character.Head:FindFirstChild("NameEsp" .. Number) then
                    v428.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end

function UpdateChestChams()
    for _, v430 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v430.Name, "Chest") then
                if ChestESP then
                    if not v430:FindFirstChild("NameEsp" .. Number) then
                        local v1475 = Instance.new("BillboardGui", v430);
                        v1475.Name = "NameEsp" .. Number;
                        v1475.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1475.Size = UDim2.new(1, 200, 1, 30);
                        v1475.AlwaysOnTop = true;
                        local v1481 = Instance.new("TextLabel", v1475);
                        v1481.Font = Enum.Font.GothamSemibold;
                        v1481.FontSize = "Size14";
                        v1481.TextWrapped = true;
                        v1481.Size = UDim2.new(1, 0, 1, 0);
                        v1481.TextYAlignment = "Top";
                        v1481.BackgroundTransparency = 1;
                        v1481.TextStrokeTransparency = 0.5;
                        if (v430.Name == "Chest1") then v1481.TextColor3 = Color3.fromRGB(109, 109, 109);
                        elseif (v430.Name == "Chest2") then v1481.TextColor3 = Color3.fromRGB(173, 158, 21);
                        elseif (v430.Name == "Chest3") then v1481.TextColor3 = Color3.fromRGB(85, 255, 255); end
                    else
                        v430["NameEsp" .. Number].TextLabel.Text = v430.Name .. "   \n" .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v430.Position).Magnitude / 3) .. " Distance";
                    end
                elseif v430:FindFirstChild("NameEsp" .. Number) then
                    v430:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end

function UpdateDevilChams()
    for _, v432 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v432.Name, "Fruit") and v432:FindFirstChild("Handle") then
                if DevilFruitESP then
                    if not v432.Handle:FindFirstChild("NameEsp" .. Number) then
                        local v1164 = Instance.new("BillboardGui", v432.Handle);
                        v1164.Name = "NameEsp" .. Number;
                        v1164.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1164.Size = UDim2.new(1, 200, 1, 30);
                        v1164.AlwaysOnTop = true;
                        local v1171 = Instance.new("TextLabel", v1164);
                        v1171.Font = Enum.Font.GothamSemibold;
                        v1171.FontSize = "Size14";
                        v1171.TextWrapped = true;
                        v1171.Size = UDim2.new(1, 0, 1, 0);
                        v1171.BackgroundTransparency = 1;
                        v1171.TextColor3 = Color3.fromRGB(255, 255, 255);
                    else
                        v432.Handle["NameEsp" .. Number].TextLabel.Text = v432.Name .. "   \n" .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v432.Handle.Position).Magnitude / 3) .. " Distance";
                    end
                elseif v432.Handle:FindFirstChild("NameEsp" .. Number) then
                    v432.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end

function UpdateFlowerChams()
    for _, v434 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if (v434.Name == "Flower2" or v434.Name == "Flower1") then
                if FlowerESP then
                    if not v434:FindFirstChild("NameEsp" .. Number) then
                        local v1183 = Instance.new("BillboardGui", v434);
                        v1183.Name = "NameEsp" .. Number;
                        v1183.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1183.Size = UDim2.new(1, 200, 1, 30);
                        v1183.AlwaysOnTop = true;
                        local v1189 = Instance.new("TextLabel", v1183);
                        v1189.Font = Enum.Font.GothamSemibold;
                        v1189.FontSize = "Size14";
                        v1189.TextWrapped = true;
                        v1189.Size = UDim2.new(1, 0, 1, 0);
                        v1189.BackgroundTransparency = 1;
                        if (v434.Name == "Flower1") then v1189.TextColor3 = Color3.fromRGB(0, 0, 255);
                        else v1189.TextColor3 = Color3.fromRGB(255, 0, 0); end
                    else
                        v434["NameEsp" .. Number].TextLabel.Text = v434.Name .. "   \n" .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v434.Position).Magnitude / 3) .. " Distance";
                    end
                elseif v434:FindFirstChild("NameEsp" .. Number) then
                    v434:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end

function UpdateRealFruitChams()
    local spawners = {game.Workspace.AppleSpawner, game.Workspace.PineappleSpawner, game.Workspace.BananaSpawner}
    local colors = {Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 174, 0), Color3.fromRGB(251, 255, 0)}
    for i, spawner in ipairs(spawners) do
        for _, v452 in pairs(spawner:GetChildren()) do
            if v452:IsA("Tool") and v452:FindFirstChild("Handle") then
                if RealFruitESP then
                    if not v452.Handle:FindFirstChild("NameEsp" .. Number) then
                        local v1066 = Instance.new("BillboardGui", v452.Handle);
                        v1066.Name = "NameEsp" .. Number;
                        v1066.Size = UDim2.new(1, 200, 1, 30);
                        v1066.AlwaysOnTop = true;
                        local v1073 = Instance.new("TextLabel", v1066);
                        v1073.Font = Enum.Font.GothamSemibold;
                        v1073.FontSize = "Size14";
                        v1073.Size = UDim2.new(1, 0, 1, 0);
                        v1073.BackgroundTransparency = 1;
                        v1073.TextColor3 = colors[i];
                    else
                        v452.Handle["NameEsp" .. Number].TextLabel.Text = v452.Name .. " " .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v452.Handle.Position).Magnitude / 3) .. " Distance";
                    end
                elseif v452.Handle:FindFirstChild("NameEsp" .. Number) then
                    v452.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for _, v823 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v823:FindFirstChild("HumanoidRootPart") then
                        if not v823:FindFirstChild("MobEap") then
                            local v1372 = Instance.new("BillboardGui", v823);
                            v1372.Name = "MobEap";
                            v1372.AlwaysOnTop = true;
                            v1372.Size = UDim2.new(0, 200, 0, 50);
                            local v1373 = Instance.new("TextLabel", v1372);
                            v1373.BackgroundTransparency = 1;
                            v1373.Size = UDim2.new(0, 200, 0, 50);
                            v1373.Font = Enum.Font.GothamBold;
                            v1373.TextColor3 = Color3.fromRGB(7, 236, 240);
                        end
                        local v1021 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v823.HumanoidRootPart.Position).Magnitude);
                        v823.MobEap.TextLabel.Text = v823.Name .. " | " .. v1021 .. "m";
                    end
                end
            end
        end);
    end
end);

function AttackNoCoolDown()
    local v228 = {};
    local v229 = game:GetService("Workspace").Enemies:GetChildren();
    local v230 = FindEnemiesInRange(v228, v229);
    if not v230 then return end
    local v231 = GetEquippedTool();
    if not v231 then return end
    pcall(function()
        local v477 = game:GetService("ReplicatedStorage");
        v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack"):FireServer(1e-9);
        v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit"):FireServer(v230, v228);
    end);
end

local v22 = Instance.new("ScreenGui", game.CoreGui);
local v23 = Instance.new("ImageButton", v22);
local v24 = Instance.new("UICorner", v23);
local v25 = Instance.new("ParticleEmitter", v23);
local v26 = game:GetService("TweenService");

v23.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v23.BackgroundTransparency = 0.5;
v23.Size = UDim2.new(0, 50, 0, 50);
v23.Draggable = true;
v23.Image = "http://www.roblox.com/asset/?id=130160749337944";
v24.CornerRadius = UDim.new(1, 0);

local toggled = true;
v23.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game);
    if not toggled then
        toggled = true;
        v23.BackgroundTransparency = 0;
        v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce), {Size = UDim2.new(0, 60, 0, 60)}):Play();
    else
        toggled = false;
        v23.BackgroundTransparency = 0.5;
        v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce), {Size = UDim2.new(0, 50, 0, 50)}):Play();
    end
end);

v16.Home:AddButton({Title = "Tik Tok", Callback = function() setclipboard("https://tiktok.com"); end});

local v48 = v16.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Select weapon",
    Values = {"Melee", "Sword", "Blox Fruits"},
    Default = 1
});
v48:OnChanged(function(v236) ChooseWeapon = v236; end);

local v49 = v16.Main:AddToggle("ToggleLevel", {Title = "Auto Cầy Cấp", Default = false});
v49:OnChanged(function(v237) _G.AutoLevel = v237; end);

spawn(function()
    while task.wait() do
        if _G.AutoLevel then
            pcall(function()
                CheckLevel();
                local questTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest;
                if not questTitle.Visible or not string.find(questTitle.Container.QuestTitle.Title.Text, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    Tween(CFrameQ);
                    if ((CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv);
                    end
                else
                    for _, v1433 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v1433.Name == Ms and v1433:FindFirstChild("Humanoid") and v1433.Humanoid.Health > 0) then
                            repeat
                                wait(_G.Fast_Delay or 0.1);
                                AttackNoCoolDown();
                                Tween(v1433.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0));
                            until not _G.AutoLevel or v1433.Humanoid.Health <= 0
                        end
                    end
                end
            end);
        end
    end
end);

local v107 = v16.Stats:AddToggle("ToggleMelee", {Title = "Melee", Default = false});
v107:OnChanged(function(v303) _G.Auto_Stats_Melee = v303; end);

spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 3);
        end
    end
end);

v16.Misc:AddButton({Title = "Hop Server", Callback = function() Hop(); end});

function Hop()
    local placeId = game.PlaceId;
    local servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"));
    for _, server in pairs(servers.data) do
        if server.playing < server.maxPlayers then
            game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, server.id, game.Players.LocalPlayer);
            break;
        end
    end
end

function Tween(targetCFrame)
    local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
    if root then
        local distance = (targetCFrame.Position - root.Position).Magnitude;
        local tweenInfo = TweenInfo.new(distance / (TweenSpeed or 350), Enum.EasingStyle.Linear);
        game:GetService("TweenService"):Create(root, tweenInfo, {CFrame = targetCFrame}):Play();
    end
end

function FindEnemiesInRange(tab, list)
    local myPos = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetPivot().Position;
    if not myPos then return nil end
    for _, enemy in ipairs(list) do
        if enemy:FindFirstChild("Head") and (enemy.Head.Position - myPos).Magnitude <= 60 then
            table.insert(tab, enemy);
            return enemy.Head;
        end
    end
end

function GetEquippedTool()
    for _, child in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if child:IsA("Tool") then return child end
    end
end

function EquipTool(toolName)
    local bp = game.Players.LocalPlayer.Backpack:FindFirstChild(toolName);
    if bp then game.Players.LocalPlayer.Character.Humanoid:EquipTool(bp) end
end

function AutoHaki()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
    end
end

-- Dọn dẹp hiệu ứng map để giảm lag
if game:GetService("ReplicatedStorage"):FindFirstChild("Effect") then
    pcall(function()
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
    end);
end

print("Banana Cat Hub Loaded Successfully!");
