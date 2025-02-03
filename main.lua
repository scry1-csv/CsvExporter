function init()
    -- this runs once when enabling the extension
end

function update(delta)
    -- this runs every OFS frame
    -- delta is the time since the last call in seconds
    -- doing heavy computation here will lag OFS
end

function gui()
    if ofs.Button("Export VorzeSA CSV") then
        ActivescriptToSACSV()
    end
end

function ActivescriptToSACSV()
    local script = ofs.Script(ofs.ActiveIdx())
    local result = ""
    local previousPos = -1

    for i, act in ipairs(script.actions) do
        if act.pos == previousPos then
            goto continue
        end

        local time = math.floor((act.at * 10))

        local direction, power = PosToDirectionAndPower(act.pos)

        result = result .. string.format("%d,%d,%d\n", time, direction, power)
        previousPos = act.pos

        ::continue::
    end

    WriteFile("sa.csv", result)
end

function PosToDirectionAndPower(pos)
    local p = (pos - 50) * 2
    local power = math.abs(p)
    local direction = 0
    if p > 0 then
        direction = 1
    end

    return direction, power
end

function WriteFile(path, content)
    local f = io.open(path, 'w')
    if f ~= nil then
        f:write(content)
        f:close()
        print("File write successful: ", path)
    end
end
