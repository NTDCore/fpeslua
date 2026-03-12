-- Decompiled with Medal

local script = {Name = 'SeraBuffer'}
local var5 = buffer.create(1000000)
local t4: {[string]: any} = {
	['BB'] = var5,
	['Boolean'] = table.freeze({
		['Name'] = 'Boolean',
		['Ser'] = function(param105, param103, param106)
			if param106 == true then
				buffer.writeu8(param105, param103, 1)
			elseif param106 == false then
				buffer.writeu8(param105, param103, 0)
			else
				error('Expected boolean')
			end
			return param103 + 1
		end,
		['Des'] = function(param100, param104)
			return buffer.readu8(param100, param104) == 1, param104 + 1
		end
	}),
	['Uint8'] = table.freeze({
		['Name'] = 'Uint8',
		['Ser'] = function(param102, param101, param107)
			buffer.writeu8(param102, param101, param107)
			return param101 + 1
		end,
		['Des'] = function(param71, param64)
			return buffer.readu8(param71, param64), param64 + 1
		end
	}),
	['Uint16'] = table.freeze({
		['Name'] = 'Uint16',
		['Ser'] = function(param87, param84, param57)
			buffer.writeu16(param87, param84, param57)
			return param84 + 2
		end,
		['Des'] = function(param88, param83)
			return buffer.readu16(param88, param83), param83 + 2
		end
	}),
	['Uint32'] = table.freeze({
		['Name'] = 'Uint32',
		['Ser'] = function(param82, param92, param67)
			buffer.writeu32(param82, param92, param67)
			return param92 + 4
		end,
		['Des'] = function(param60, param91)
			return buffer.readu32(param60, param91), param91 + 4
		end
	}),
	['Int8'] = table.freeze({
		['Name'] = 'Int8',
		['Ser'] = function(param72, param61, param75)
			buffer.writei8(param72, param61, param75)
			return param61 + 1
		end,
		['Des'] = function(param97, param81)
			return buffer.readi8(param97, param81), param81 + 1
		end
	}),
	['Int16'] = table.freeze({
		['Name'] = 'Int16',
		['Ser'] = function(param56, param98, param95)
			buffer.writei16(param56, param98, param95)
			return param98 + 2
		end,
		['Des'] = function(param74, param93)
			return buffer.readi16(param74, param93), param93 + 2
		end
	}),
	['Int32'] = table.freeze({
		['Name'] = 'Int32',
		['Ser'] = function(param85, param59, param90)
			buffer.writei32(param85, param59, param90)
			return param59 + 4
		end,
		['Des'] = function(param96, param89)
			return buffer.readi32(param96, param89), param89 + 4
		end
	}),
	['Float32'] = table.freeze({
		['Name'] = 'Float32',
		['Ser'] = function(param79, param62, param77)
			buffer.writef32(param79, param62, param77)
			return param62 + 4
		end,
		['Des'] = function(param66, param70)
			return buffer.readf32(param66, param70), param70 + 4
		end
	}),
	['Float64'] = table.freeze({
		['Name'] = 'Float64',
		['Ser'] = function(param99, param73, param63)
			buffer.writef64(param99, param73, param63)
			return param73 + 8
		end,
		['Des'] = function(param58, param76)
			return buffer.readf64(param58, param76), param76 + 8
		end
	}),
	['CFrame'] = table.freeze({
		['Name'] = 'CFrame',
		['Ser'] = function(param86, param94, param65)
			local var155, var130, var141, var154, var160, var146, var158, var152, var136, var126, var124, var134 = param65:GetComponents()
			buffer.writef32(param86, param94, var155)
			local var156 = param94 + 4
			buffer.writef32(param86, var156, var130)
			local var164 = param94 + 8
			buffer.writef32(param86, var164, var141)
			local var133 = param94 + 12
			buffer.writef32(param86, var133, var154)
			local var129 = param94 + 16
			buffer.writef32(param86, var129, var160)
			local var161 = param94 + 20
			buffer.writef32(param86, var161, var146)
			local var162 = param94 + 24
			buffer.writef32(param86, var162, var158)
			local var125 = param94 + 28
			buffer.writef32(param86, var125, var152)
			local var140 = param94 + 32
			buffer.writef32(param86, var140, var136)
			local var122 = param94 + 36
			buffer.writef32(param86, var122, var126)
			local var132 = param94 + 40
			buffer.writef32(param86, var132, var124)
			local var153 = param94 + 44
			buffer.writef32(param86, var153, var134)
			return param94 + 48
		end,
		['Des'] = function(param68, param80)
			local cframe: CFrame = CFrame.new
			local var120 = buffer.readf32(param68, param80)
			local var127 = param80 + 4
			local var143 = buffer.readf32(param68, var127)
			local var149 = param80 + 8
			local var151 = buffer.readf32(param68, var149)
			local var159 = param80 + 12
			local var137 = buffer.readf32(param68, var159)
			local var138 = param80 + 16
			local var150 = buffer.readf32(param68, var138)
			local var147 = param80 + 20
			local var157 = buffer.readf32(param68, var147)
			local var142 = param80 + 24
			local var145 = buffer.readf32(param68, var142)
			local var163 = param80 + 28
			local var139 = buffer.readf32(param68, var163)
			local var144 = param80 + 32
			local var128 = buffer.readf32(param68, var144)
			local var123 = param80 + 36
			local var148 = buffer.readf32(param68, var123)
			local var131 = param80 + 40
			local var135 = buffer.readf32(param68, var131)
			local var121 = param80 + 44
			return cframe(var120, var143, var151, var137, var150, var157, var145, var139, var128, var148, var135, (buffer.readf32(param68, var121))), param80 + 48
		end
	}),
	['LossyCFrame'] = table.freeze({
		['Name'] = 'LossyCFrame',
		['Ser'] = function(param69, param78, param3)
			local var6, var106 = param3:ToAxisAngle()
			local var44 = param3.X
			buffer.writef32(param69, param78, var44)
			local var46 = param78 + 4
			local var30 = param3.Y
			buffer.writef32(param69, var46, var30)
			local var58 = param78 + 8
			local var51 = param3.Z
			buffer.writef32(param69, var58, var51)
			local var107 = param78 + 12
			local var105 = var6.X
			buffer.writef32(param69, var107, var105)
			local var88 = param78 + 16
			local var83 = var6.Y
			buffer.writef32(param69, var88, var83)
			local var34 = param78 + 20
			local var103 = var6.Z
			buffer.writef32(param69, var34, var103)
			local var81 = param78 + 24
			buffer.writef32(param69, var81, var106)
			return param78 + 28
		end,
		['Des'] = function(param9, param4)
			local var38 = CFrame.fromAxisAngle
			local var9 = param4 + 12
			local var75 = buffer.readf32(param9, var9)
			local var80 = param4 + 16
			local var19 = buffer.readf32(param9, var80)
			local var27 = param4 + 20
			local var23 = buffer.readf32(param9, var27)
			local vector: Vector3 = Vector3.new(var75, var19, var23)
			local var77 = param4 + 24
			local var89 = var38(vector, (buffer.readf32(param9, var77)))
			local var113 = buffer.readf32(param9, param4)
			local var50 = param4 + 4
			local var49 = buffer.readf32(param9, var50)
			local var26 = param4 + 8
			local var110 = buffer.readf32(param9, var26)
			return var89 + Vector3.new(var113, var49, var110), param4 + 28
		end
	}),
	['Vector3'] = table.freeze({
		['Name'] = 'Vector3',
		['Ser'] = function(param28, param19, param22)
			local var98 = param22.X
			buffer.writef32(param28, param19, var98)
			local var47 = param19 + 4
			local var82 = param22.Y
			buffer.writef32(param28, var47, var82)
			local var42 = param19 + 8
			local var112 = param22.Z
			buffer.writef32(param28, var42, var112)
			return param19 + 12
		end,
		['Des'] = function(param27, param53)
			local var76 = buffer.readf32(param27, param53)
			local var94 = param53 + 4
			local var48 = buffer.readf32(param27, var94)
			local var111 = param53 + 8
			local var99 = buffer.readf32(param27, var111)
			return Vector3.new(var76, var48, var99), param53 + 12
		end
	}),
	['Color3'] = table.freeze({
		['Name'] = 'Color3',
		['Ser'] = function(param42, param13, param52)
			local var118 = param52.R * 255
			buffer.writeu8(param42, param13, var118)
			local var66 = param13 + 1
			local var41 = param52.G * 255
			buffer.writeu8(param42, var66, var41)
			local var93 = param13 + 2
			local var53 = param52.B * 255
			buffer.writeu8(param42, var93, var53)
			return param13 + 3
		end,
		['Des'] = function(param29, param49)
			local color: Color3 = Color3.fromRGB
			local var33 = buffer.readu8(param29, param49)
			local var21 = param49 + 1
			local var24 = buffer.readu8(param29, var21)
			local var68 = param49 + 2
			return color(var33, var24, (buffer.readu8(param29, var68))), param49 + 3
		end
	}),
	['ColorV3'] = table.freeze({
		['Name'] = 'ColorV3',
		['Ser'] = function(param25, param30, param47)
			local var115 = param47.X * 255
			buffer.writeu8(param25, param30, var115)
			local var86 = param30 + 1
			local var59 = param47.Y * 255
			buffer.writeu8(param25, var86, var59)
			local var57 = param30 + 2
			local var18 = param47.Z * 255
			buffer.writeu8(param25, var57, var18)
			return param30 + 3
		end,
		['Des'] = function(param23, param48)
			local var96 = buffer.readu8(param23, param48) / 255
			local var54 = param48 + 1
			local var108 = buffer.readu8(param23, var54) / 255
			local var52 = param48 + 2
			local var56 = buffer.readu8(param23, var52) / 255
			return Vector3.new(var96, var108, var56), param48 + 3
		end
	}),
	['String8'] = table.freeze({
		['Name'] = 'String8',
		['Ser'] = function(param10, param18, param51)
			local var55 = param51:len()
			if var55 > 255 then
				error('String too long')
			end
			buffer.writeu8(param10, param18, var55)
			buffer.writestring(param10, param18 + 1, param51)
			return param18 + 1 + var55
		end,
		['Des'] = function(param31, param41)
			local var37 = buffer.readu8(param31, param41)
			return buffer.readstring(param31, param41 + 1, var37), param41 + 1 + var37
		end
	}),
	['String16'] = table.freeze({
		['Name'] = 'String16',
		['Ser'] = function(param, param46, param37)
			local var70 = param37:len()
			if var70 > 65535 then
				error('String too long')
			end
			buffer.writeu16(param, param46, var70)
			buffer.writestring(param, param46 + 2, param37)
			return param46 + 2 + var70
		end,
		['Des'] = function(param2, param16)
			local var45 = buffer.readu16(param2, param16)
			return buffer.readstring(param2, param16 + 2, var45), param16 + 2 + var45
		end
	}),
	['String32'] = table.freeze({
		['Name'] = 'String32',
		['Ser'] = function(param33, param21, param55)
			local var116 = param55:len()
			if var116 > 4294967295 then
				error('String too long')
			end
			buffer.writeu32(param33, param21, var116)
			buffer.writestring(param33, param21 + 4, param55)
			return param21 + 4 + var116
		end,
		['Des'] = function(param7, param12)
			local var39 = buffer.readu32(param7, param12)
			return buffer.readstring(param7, param12 + 4, var39), param12 + 4 + var39
		end
	}),
	['Buffer8'] = table.freeze({
		['Name'] = 'Buffer8',
		['Ser'] = function(param40, param14, param43)
			local var97 = buffer.len(param43)
			if var97 > 255 then
				error('Buffer too long')
			end
			buffer.writeu8(param40, param14, var97)
			buffer.copy(param40, param14 + 1, param43)
			return param14 + 1 + var97
		end,
		['Des'] = function(param44, param45)
			local var92 = buffer.readu8(param44, param45)
			local var36 = buffer.create(var92)
			buffer.copy(var36, 0, param44, param45 + 1, var92)
			return var36, param45 + 1 + var92
		end
	}),
	['Buffer16'] = table.freeze({
		['Name'] = 'Buffer16',
		['Ser'] = function(param8, param24, param39)
			local var95 = buffer.len(param39)
			if var95 > 65535 then
				error('Buffer too long')
			end
			buffer.writeu16(param8, param24, var95)
			buffer.copy(param8, param24 + 2, param39)
			return param24 + 2 + var95
		end,
		['Des'] = function(param35, param34)
			local var40 = buffer.readu16(param35, param34)
			local var79 = buffer.create(var40)
			buffer.copy(var79, 0, param35, param34 + 2, var40)
			return var79, param34 + 2 + var40
		end
	}),
	['Buffer32'] = table.freeze({
		['Name'] = 'Buffer32',
		['Ser'] = function(param11, param36, param26)
			local var73 = buffer.len(param26)
			if var73 > 4294967295 then
				error('Buffer too long')
			end
			buffer.writeu32(param11, param36, var73)
			buffer.copy(param11, param36 + 4, param26)
			return param36 + 4 + var73
		end,
		['Des'] = function(param54, param5)
			local var65 = buffer.readu32(param54, param5)
			local var43 = buffer.create(var65)
			buffer.copy(var43, 0, param54, param5 + 4, var65)
			return var43, param5 + 4 + var65
		end
	})
}
local t: {[any]: any} = {}
for i4 = 0, 255 do
	t[i4] = i4 * 6.265732014659643 / 255
end
for i2 = 0, 315, 45 do
	local number: number = math.rad(i2)
	local var78 = number % 6.283185307179586 * 255 / 6.265732014659643
	t[math.round(var78)] = number
end
t4.Angle8 = table.freeze({
	['Name'] = 'Angle8',
	['Ser'] = function(param50, param6, param32)
		local var74 = param32 % 6.283185307179586 * 255 / 6.265732014659643
		local int3: number = math.round(var74)
		buffer.writeu8(param50, param6, int3)
		return param6 + 1
	end,
	['Des'] = function(param38, param17)
		return t[buffer.readu8(param38, param17)], param17 + 1
	end
})
function t4.Deserialize(self8, arg12, arg16)
	local var69 = arg16 or 0
	local t7: {[any]: any} = {}
	for _, value2 in self8.Numeric do
		local var22 = value2.Key
		local var72
		var72, var69 = value2.Des(arg12, var69)
		t7[var22] = var72
	end
	return t7, var69
end
local function var4(self9, arg19)
	local int4: number = 0
	for _, value8 in self9.Numeric do
		int4 = value8.Ser(var5, int4, arg19[value8.Key])
	end
	return int4
end
function t4.Serialize(self4, arg20)
	local success4, errMsg = pcall(var4, self4, arg20)
	if success4 then
		local var67 = buffer.create(errMsg)
		buffer.copy(var67, 0, var5, 0, errMsg)
		return var67
	end
	print(self4, self4.Numeric)
	local int2: number = 0
	for _, value7 in self4.Numeric do
		local var100 = arg20[value7.Key]
		if var100 == nil then
			return nil, ('Missing field "%*"'):format(value7.Key)
		end
		local var119
		var119, int2 = pcall(value7.Ser, var5, int2, var100)
		if not var119 then
			return nil, ('Couldn\'t serialize field "%*" (Expected: %*;Received: "%*"); Message: %*'):format(value7.Key, value7.Name, typeof(var100), int2)
		end
	end
	return nil, 'Unknown error'
end
local function var3(self10, arg7, arg10, arg18)
	for _, value4 in self10.Numeric do
		arg18 = value4.Ser(arg10, arg18, arg7[value4.Key])
	end
	return arg18
end
function t4.Push(self6, arg15, arg14, arg9)
	local var87 = arg9 or 0
	local success2, errMsg2 = pcall(var3, self6, arg15, arg14, var87)
	if success2 then
		return errMsg2
	end
	for _, value5 in self6.Numeric do
		local var60 = arg15[value5.Key]
		if var60 == nil then
			return nil, ('Missing field "%*"'):format(value5.Key)
		end
		local var13
		var13, var87 = pcall(value5.Ser, arg14, var87, var60)
		if not var13 then
			return nil, ('Couldn\'t serialize field "%*" (Expected: %*;Received: "%*"); Message: %*'):format(value5.Key, value5.Name, typeof(var60), var87)
		end
	end
	return nil, 'Unknown error'
end
function t4.DeltaDeserialize(self11, arg13, arg11)
	local var61 = (arg11 or 0) + 1
	local var64 = var61 - 1
	local var90 = buffer.readu8(arg13, var64)
	local var102 = self11.Numeric
	local t5: {[any]: any} = {}
	for _ = 1, var90 do
		local var63 = var102[buffer.readu8(arg13, var61)]
		local var62 = var63.Key
		local var114
		var114, var61 = var63.Des(arg13, var61 + 1)
		t5[var62] = var114
	end
	return t5, var61
end
local function var(self7, arg5)
	local var35 = self7.String
	local i3 = 0  --: int
	local i2 = 1  --: int
	for var11 in arg5 do
		i3 = i3 + 1
		local var85 = var35[var11]
		local var101 = var5
		local var31 = var85.Index
		buffer.writeu8(var101, i2, var31)
		i2 = var85.Ser(var5, i2 + 1, arg5[var85.Key])
	end
	local var104 = var5
	buffer.writeu8(var104, 0, i3)
	return i2
end
function t4.DeltaSerialize(self2, arg3)
	local success3, errMsg3 = pcall(var, self2, arg3)
	if success3 then
		local var8 = buffer.create(errMsg3)
		buffer.copy(var8, 0, var5, 0, errMsg3)
		return var8
	end
	local var84 = self2.String
	local int5: number = 1
	for key4, value in arg3 do
		local var14 = var84[key4]
		if var14 == nil then
			return nil, ('Key "%*" not specified in schema'):format(key4)
		end
		local var16 = var5
		local var17 = var14.Index
		buffer.writeu8(var16, int5, var17)
		local var15
		var15, int5 = pcall(var14.Ser, var5, int5 + 1, value)
		if not var15 then
			return nil, ('Couldn\'t serialize field "%*" (Expected: %*;Received: "%*"); Message: %*'):format(var14.Key, var14.Name, typeof(value), int5)
		end
	end
	return nil, 'Unknown error'
end
local function var2(self5, arg4, arg6, arg17)
	local var91 = arg17 + 1
	local var12 = self5.String
	local i = 0  --: int
	for var71 in arg4 do
		i = i + 1
		local var7 = var12[var71]
		local var10 = var7.Index
		buffer.writeu8(arg6, var91, var10)
		var91 = var7.Ser(arg6, var91 + 1, arg4[var7.Key])
	end
	buffer.writeu8(arg6, arg17, i)
	return var91
end
function t4:DeltaPush(arg8, arg, arg2)
	local success, errMsg4 = pcall(var2, self, arg8, arg, arg2 or 0)
	if success then
		return errMsg4
	end
	local var117 = self.String
	local int: number = 1
	for key3, value9 in arg8 do
		local var29 = var117[key3]
		if var29 == nil then
			return nil, ('Key "%*" not specified in schema'):format(key3)
		end
		local var28 = var29.Index
		buffer.writeu8(arg, int, var28)
		local var20
		var20, int = pcall(var29.Ser, arg, int + 1, value9)
		if not var20 then
			return nil, ('Couldn\'t serialize field "%*" (Expected: %*;Received: "%*"); Message: %*'):format(var29.Key, var29.Name, typeof(value9), int)
		end
	end
	return nil, 'Unknown error'
end
function t4.Schema(self3)
	local t6: {[any]: any} = {}
	for key2, value3 in self3 do
		if typeof(key2) ~= 'string' then
			error((('[%*]: Expected string for field name; Received "%*"'):format(script.Name, (typeof(key2)))))
		end
		if typeof(value3) ~= 'table' then
			error((('[%*]: Expected SeraType for field "%*"'):format(script.Name, key2)))
		end
		local var25 = value3.Ser
		if typeof(var25) ~= 'function' then
			error((('[%*]: Expected SeraType for field "%*"'):format(script.Name, key2)))
		end
		local var109 = value3.Des
		if typeof(var109) ~= 'function' then
			error((('[%*]: Expected SeraType for field "%*"'):format(script.Name, key2)))
		end
		local var32 = value3.Name
		if typeof(var32) ~= 'string' then
			error((('[%*]: Expected SeraType for field "%*"'):format(script.Name, key2)))
		end

		local t3: { Key: any, Name: any, Ser: any, Des: any, Index: number } = {
			['Key'] = key2,
			['Name'] = value3.Name,
			['Ser'] = value3.Ser,
			['Des'] = value3.Des,
			['Index'] = 0
		}
		table.insert(t6, t3)
	end
	if #t6 == 0 then
		error((('[%*]: Schema must have fields'):format(script.Name)))
	end
	if #t6 > 255 then
		error((('[%*]: Schema exceeded %* fields; Received %* fields'):format(script.Name, 255, #t6)))
	end
	table.sort(t6, function(param20, param15)
		return param20.Key < param15.Key
	end)
	local t2: {[any]: any} = {}
	for key, value6 in t6 do
		value6.Index = key
		t2[value6.Key] = value6
	end
	return table.freeze({
		['Numeric'] = t6,
		['String'] = t2
	})
end

return t4