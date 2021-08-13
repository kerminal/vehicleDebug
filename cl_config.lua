Config = {
	Precision = 10000.0,
	Fields = {
		{ name = "fMass", type = "float", description = [[
			The weight of the vehicle. Values should be given in Kilograms.
			<ul>
				<li>Used when the vehicle collides with another vehicle or a non-static object.</li>
			</ul>
		]] },
		{ name = "fInitialDragCoeff", type = "float", description = [[
			Sets the drag coefficient of the vehicle. Increase to simulate aerodynamic drag.
			<ul>
				<li>Value: 10-120</li>
			</ul>
		]] },
		{ name = "fDownforceModifier", type = "float" },
		{ name = "fPercentSubmerged", type = "float", description = [[
			The percentage of the vehicle's "floating height" after it falls into the water, before sinking.
			<ul>
				<li>Default - 85% for vanilla, land vehicles. The value will stop sinking the vehicle to float for a moment before sinking. Boats excluded.</li>
				<li>Value: Any percentage. Should be given in decimal. Example: 0.70 (70%)</li>
				<li>An invalid number will cause the vehicle to sink without the driver drowning.</li>
			</ul>
		]] },
		{ name = "vecCentreOfMassOffset", type = "vector", description = [[
			Shifts the center of gravity in meters from side to side.<br>
			Values (0 means that the center of gravity will be in the center of the vehicle):
			<ul>
				<li>X: -10.0 to 10.0. Positive values move the center of gravity right.</li>
				<li>Y: -10.0 to 10.0. Positive values move the center of gravity forwards.</li>
				<li>Z: -10.0 to 10.0. Positive values move the center of gravity upwards.</li>
			</ul>
		]] },
		{ name = "vecInertiaMultiplier", type = "vector" },
		{ name = "fDriveBiasFront", type = "float", description = [[
			This is used to determine whether a vehicle is front, rear, or four wheel drive.<br>Values:
			<ul>
				<li>0.0 means that the vehicle is rear wheel drive.</li>
				<li>1.0 means that the vehicle is front wheel drive.</li>
				<li>Any value between 0.01 and 0.99 is four wheel drive.</li>
				<li>0.5 give both front and rear axles equal force, being the perfect 4WD.</li>
			</ul>
		]] },
		{ name = "nInitialDriveGears", type = "integer", description = [[
			This line determines how many forward speeds/gears a vehicle's transmission contains.<br>
			Values: 1 or more.
		]] },
		{ name = "fInitialDriveForce", type = "float", description = [[
			This modifies the game's calculation of drive force (from the output of the transmission).<br>
			Values (0.01 - 2.0 and above):
			<ul>
				<li>1.0 uses drive force calculation unmodified.</li>
				<li>Values less than 1.0 will in effect give the vehicle less drive force.</li>
				<li>Values greater than 1.0 will produce more drive force.</li>
			</ul>
		]] },
		{ name = "fDriveInertia", type = "float", description = [[
			Describes how fast an engine will rev.
			Values (0.01 - 2.0):
			<ul>
				<li>Default value is 1.0, (or no modification of drive intertia).</li>
				<li>Bigger values = quicker Redline (maximum engine speed)</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleUpShift", type = "float", description = [[
			Clutch speed multiplier on up shifts.
			<ul>
				<li>Bigger numbers = faster shifts.</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleDownShift", type = "float", description = [[
			Clutch speed multiplier on down shifts.
			<ul>
				<li>Bigger numbers = faster shifts.</li>
			</ul>
		]] },
		{ name = "fInitialDriveMaxFlatVel", type = "float", description = [[
			This determines the vehicle speed at redline in the top gear (not the show). Setting this value DOES NOT guarantee the vehicle will reach the given speed.<br>
			Values (0.00 and above):
			<ul>
				<li>Multiply the number in the file by 0-82 to get the speed in mph.</li>
				<li>Multiply by 1.32 to get the speed in kph.</li>
			</ul>
		]] },
		{ name = "fBrakeForce", type = "float", description = [[
			Multiplies the game's calculation of deceleration.<br>
			Values (0.01 - 2.0 and above):
			<ul>
				<li>Bigger numbers = harder braking.</li>
				<li>1.0 uses brake force calculation unmodified.</li>
			</ul>
		]] },
		{ name = "fBrakeBiasFront", type = "float", description = [[
			This line controls the distribution of braking force between the front and rear axles.<br>
			Values:
			<ul>
				<li>0.0 means the rear axle only receives brake force.</li>
				<li>1.0 means the front axle only receives brake force.</li>
				<li>0.5 gives both axles equal brake force.</li>
				<li>Values between 0.01 and 0.49 means the rear axle will receive more brake force.</li>
				<li>Values between 0.51 and 0.99 means the front axles will receive more brake force than the rear.</li>
			</ul>
		]] },
		{ name = "fHandBrakeForce", type = "float", description = [[
			Braking power of the handbrake.<br>
			Values (0.0 and above):
			<ul>
				<li>Bigger numbers = harder braking.</li>
			</ul>
		]] },
		{ name = "fSteeringLock", type = "float", description = [[
			This multiplies the game's calculation of the angle of the steer wheel will turn while at full turn. Steering lock is directly related to over/under-steer.<br>
			Values (0.0 and above):
			<ul>
				<li>Values between 0.1 - 0.2 will simulate a long wheelbase.</li>
				<li>Values around 0.75 and above will turn extremely fast. Higher values will cause the vehicle to spin out easily.</li>
			</ul>
		]] },
		{ name = "fTractionCurveMax", type = "float", description = [[
			Cornering grip of the vehicle as a multiplier of the tire surface friction.
		]] },
		{ name = "fTractionCurveMin", type = "float", description = [[
			Accelerating/braking grip of the vehicle as a multiplier of the tire surface friction.
		]] },
		{ name = "fTractionCurveLateral", type = "float", description = [[
			Shape of lateral traction curve.
		]] },
		{ name = "fTractionSpringDeltaMax", type = "float", description = [[
			This value determines at what distance above the ground the car will lose traction.
		]] },
		{ name = "fLowSpeedTractionLossMult", type = "float", description = [[
			How much traction is reduced at low speed.
			<ul>
				<li>0.0 means normal traction. It affects mainly car burnout when pressing gas (W/UP).</li>
				<li>Decreasing value will cause less burnout, less sliding at start.</li>
				<li>Higher value will cause more burnout.</li>
			</ul>
		]] },
		{ name = "fCamberStiffnesss", type = "float", description = [[
			This value modify the grip of the car when you're drifting.
			<ul>
				<li>More than 0 make the car sliding on the same angle you're drifting.</li>
				<li>Less than 0 make your car oversteer.</li>
				<li>Not recommended to modify it for grip.</li>
			</ul>
		]] },
		{ name = "fTractionBiasFront", type = "float", description = [[
			Determines the distribution of traction from front to rear.<br>
			Values (0.01 - 0.99):
			<ul>
				<li>0.01 = only rear axle has traction.</li>
				<li>0.99 = only front axle has traction.</li>
				<li>0.5 = both axles have equal traction.</li>
				<li>Entering a value of 0.0 or 1.0 causes the vehicle to have no traction.</li>
			</ul>
		]] },
		{ name = "fTractionLossMult", type = "float", description = [[
			Affects how much grip is changed when driving on asphalt and mud.
			<ul>
				<li>Higher values make the car less responsive and prone to sliding.</li>
			</ul>
		]] },
		{ name = "fSuspensionForce", type = "float", description = [[
			Affects how strong suspension is.<br>
			<ul>
				<li>1 / (Force * Wheels) = Lower limit for zero force at full extension.</li>
			</ul>
		]] },
		{ name = "fSuspensionCompDamp", type = "float", description = [[
			Damping during strut compression.
			<ul>
				<li>Bigger values = stiffer.</li>
			</ul>
		]] },
		{ name = "fSuspensionReboundDamp", type = "float", description = [[
			Damping during strut rebound.
		]] },
		{ name = "fSuspensionUpperLimit", type = "float", description = [[
			Visual limit of how far can wheels move up / down from original position.
		]] },
		{ name = "fSuspensionLowerLimit", type = "float", description = [[
			Visual limit of how far can wheels move up / down from original position.
		]] },
		{ name = "fSuspensionRaise", type = "float", description = [[
			The amount that the suspension raises the body off the wheels.
		]] },
		{ name = "fSuspensionBiasFront", type = "float", description = [[
			This value determines which suspension is stronger, front or rear.
			<ul>
				<li>If value is above 0.50 then front is stiffer, when below, rear is stiffer.</li>
			</ul>
		]] },
		{ name = "fAntiRollBarForce", type = "float", description = [[
			Larger Numbers = less body roll.
		]] },
		{ name = "fAntiRollBarBiasFront", type = "float", description = [[
			The bias between front and rear for the anti-roll bar.
			<ul>
				<li>0 = front</li>
				<li>1 = rear</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightFront", type = "float", description = [[
			Values (Recommended -0.15 to 0.15):
			<ul>
				<li>Larger Numbers = less rollovers.</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightRear", type = "float", description = [[
			This value modify the weight transmission during an acceleration between the front and rear. high positive value can make your car able to do wheelies.<br>
			Values (Recommended -0.15 to 0.15):
			<ul>
				<li>Larger Numbers = less rollovers.</li>
			</ul>
		]] },
		{ name = "fCollisionDamageMult", type = "float", description = [[
			Multiplies the game's calculation of damage to the vehicle by collision.
		]] },
		{ name = "fWeaponDamageMult", type = "float", description = [[
			Multiplies the game's calculation of damage to the vehicle by weapons.
		]] },
		{ name = "fDeformationDamageMult", type = "float", description = [[
			Multiplies the game's calculation of deformation damage.
		]] },
		{ name = "fEngineDamageMult", type = "float", description = [[
			Multiplies the game's calculation of damage to the engine, causing explosion or engine failure.
		]] },
		{ name = "fPetrolTankVolume", type = "float", description = [[
			Amount of petrol that will leak after damaging a vehicle's tank.
		]] },
		{ name = "fOilVolume", type = "float", description = [[
			Amount of oil.
		]] },
		{ name = "fSeatOffsetDistX", type = "float", description = [[
			Value: Driver > passenger
		]] },
		{ name = "fSeatOffsetDistY", type = "float", description = [[
			Value: Trunk > hood
		]] },
		{ name = "fSeatOffsetDistZ", type = "float", description = [[
			Value: Undercarriage > roof
		]] },
		{ name = "nMonetaryValue", type = "integer" },
	},
	Types = {
		["float"] = {
			getter = GetVehicleHandlingFloat,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingFloat(vehicle, _type, fieldName, value + 0.0)
			end,
		},
		["integer"] = {
			getter = GetVehicleHandlingInt,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingInt(vehicle, _type, fieldName, math.floor(value))
			end,
		},
		["vector"] = {
			getter = GetVehicleHandlingVector,
			setter = function(vehicle, _type, fieldName, value)
				local axes = 1
				local vector = {}

				for axis in value:gmatch("([^,]+)") do
					vector[axes] = tonumber(axis)
					axes = axes + 1
				end

				for i = 1, 3 do
					if vector[i] == nil then
						error("invalid vector", i)
					end
				end

				SetVehicleHandlingVector(vehicle, _type, fieldName, vector3(vector[1], vector[2], vector[3]))
			end,
		},
	},
}