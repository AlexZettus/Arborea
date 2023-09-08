function GetObjString(obj, proto)

	local ret = "<font=Arial,0,20,20><color=0xff05ff00>"
	--Название
	ret = ret .. Tooltip.GetCommerceName(proto)

	ret = ret .. "<font=Arial,0,16,20><color=0xff05ff00>"
	--Тип
	ret = ret .. "\\n" .. Tooltip.GetCommerceType(proto)
	
	ret = ret .. "<font=Arial,0,16,20><color=0xffffffff>"
	--Описание
	ret = ret .."\\n"
	ret = ret .."\\n"
	ret = ret .."\\n"
	ret = ret .."\\n"
	ret = ret .."\\n"
	ret = ret .. "\\n" .. Tooltip.GetCommerceDesc(proto)
	
	return ret
end


	