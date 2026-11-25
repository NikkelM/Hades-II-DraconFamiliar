---Adds keys or entries from one table to another, skipping duplicates.
---If property is provided, skips duplicates based on the property (e.g., "Name").
---Returns tableToTake without the duplicate keys or entries.
---@param tableToAddTo table The table to add keys or entries to.
---@param tableToTake table The table to take keys or entries from.
---@param property string|nil The property to check for duplicates with. If nil, keys are checked.
---@param order table|nil If provided, entries will be inserted as sjson objects using this order.
---@return table tableToTake All non-duplicate keys or entries from tableToTake.
function mod.AddTableKeysSkipDupes(tableToAddTo, tableToTake, property, order)
	if tableToTake == nil then
		return {}
	end

	local nonDuplicateItems = {}

	if property then
		local propertyLookup = {}

		-- Create a lookup table for the property values in tableToAddTo
		for _, entry in pairs(tableToAddTo) do
			if entry[property] ~= nil then
				propertyLookup[entry[property]] = true
			end
		end

		-- Iterate through tableToTake and add non-duplicate entries to tableToAddTo
		for _, entryToTake in pairs(tableToTake) do
			if entryToTake[property] ~= nil and not propertyLookup[entryToTake[property]] then
				if order ~= nil then
					table.insert(tableToAddTo, sjson.to_object(entryToTake, order))
				else
					table.insert(tableToAddTo, entryToTake)
				end
				table.insert(nonDuplicateItems, entryToTake)
				propertyLookup[entryToTake[property]] = true
			else
				rom.log.debug("Skipped duplicate key: " .. tostring(entryToTake[property]))
			end
		end
	else
		-- Iterate through tableToTake and add non-duplicate keys to tableToAddTo
		for key, value in pairs(tableToTake) do
			if tableToAddTo[key] == nil then
				if value == "nil" then
					tableToAddTo[key] = nil
				else
					tableToAddTo[key] = value
				end
				nonDuplicateItems[key] = value
			else
				rom.log.debug("Skipped duplicate key: " .. tostring(key))
			end
		end
	end

	return nonDuplicateItems
end
