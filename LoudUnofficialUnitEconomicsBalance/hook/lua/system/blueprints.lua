do

	function CheckAndModify(all_blueprints, id, buildTime, buildCostMass, buildCostEnergy)
		if all_blueprints.Unit[id]~=nil then
			if buildTime~=nil then
				all_blueprints.Unit[id].Economy.BuildTime = buildTime
			end
			if buildCostMass~=nil then
				all_blueprints.Unit[id].Economy.BuildCostMass = buildCostMass
			end
			if buildCostEnergy~=nil then
				all_blueprints.Unit[id].Economy.BuildCostEnergy = buildCostEnergy
			end
		end
	end

	local OldModBlueprints = ModBlueprints
	function ModBlueprints(all_blueprints)         
			OldModBlueprints(all_blueprints)
			
			-- UEF: T3 Helltank
			CheckAndModify(all_blueprints, 'bel0307', 9360, 2340, 28800)

			-- UEF: T3 Artillery Support Bot
			CheckAndModify(all_blueprints, 'bel0308', 3750, 600, 6250)

			-- UEF: T4 Dreadnought
			CheckAndModify(all_blueprints, 'bes0402', 99328, 55350, 910000)

			-- UEF: T4 Assault bot (Goliath)
			CheckAndModify(all_blueprints, 'bel0402', 74496, 41500, 1180000)

			-- UEF: Removed aerial fortresses
			all_blueprints.Unit.bea0402.Categories = {}
			all_blueprints.Unit.bea0403.Categories = {}

			-- Cybran: T3 Escort Cruiser
			CheckAndModify(all_blueprints, 'brs0304', 33520, nil, nil)

			-- Cybran: T3 Assault Submarine
			CheckAndModify(all_blueprints, 'brs0305', 24375, nil, nil)

			-- Cybran: T4 Sea dragon Mark I
			CheckAndModify(all_blueprints, 'xrs0402', 55200, nil, nil)
			
			-- Cybran: T4 Sea dragon Mark II
			CheckAndModify(all_blueprints, 'brs0402', 104328, 55350, 910000)

			-- Aeon: T1 Light Sniper Bot
			CheckAndModify(all_blueprints, 'bal0110', 300, nil, nil)

			-- Aeon: T3 Sniper Bot
			CheckAndModify(all_blueprints, 'xal0305', 3200, nil, nil)
			
			-- Aeon: T3 Heavy Hover Tank
			CheckAndModify(all_blueprints, 'bal0310', 6200, 1575, 17000)

			--- Aeon: T4 Overlord
			CheckAndModify(all_blueprints, 'ual0402', 24340, 19000, 275000)

			--- Aeon: T4 Siege weapon
			CheckAndModify(all_blueprints, 'bal0401', 52520, 48500, 1100000)

			--- Aeon: T4 Hover tank
			CheckAndModify(all_blueprints, 'bal0402', 41500, 38000, 700000)

			--- Aeon: T4 Sniper Bot
			CheckAndModify(all_blueprints, 'bal0403', 31200, 21000, 300000)

			--- Aeon: T4 Guardian
			CheckAndModify(all_blueprints, 'ualx401', 47500, 43500, 950000)
			
			--- Aeon: T4 King Kraptor
			CheckAndModify(all_blueprints, 'wel0405', 132730, 79250, 1355000)

			--- Seraphim: T2 Protector bot
			CheckAndModify(all_blueprints, 'bsl0206', 1250, nil, nil)
			
			--- Seraphim: T3 Lambda bot
			CheckAndModify(all_blueprints, 'bsl0310', 8250, nil, nil)

			--- Seraphim: T3 Heavy Missile Gunship
			CheckAndModify(all_blueprints, 'bsa0310', 16974, 2687, 91375)

			--- Seraphim: T3 Heavy Cruiser
			CheckAndModify(all_blueprints, 'bss0306', 35625, 7140, 63000)
			
			--- Seraphim: T4 Hover tank (Yenotzha)
			CheckAndModify(all_blueprints, 'bsl0401', 41600, 20000, 460000)

			--- Seraphim: T4 Protector Bot
			CheckAndModify(all_blueprints, 'bsl0406', 19500, nil, nil)

			--- Seraphim: T4 Hover tank (Echibum)
			CheckAndModify(all_blueprints, 'wsl0405', 76520, 72500, 1200000)

			--- Seraphim: T4 AA Cruiser 
			CheckAndModify(all_blueprints, 'xss0403', 50200, 69500, 1200000)

			--- Seraphim: T4 Dreadnought
			CheckAndModify(all_blueprints, 'bss0401', 111328, 55350, 910000)
	end
end

