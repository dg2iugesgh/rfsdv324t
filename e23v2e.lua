whitelist = { 
  "yazagit_lera2013",
  "Inventarik2"
}

function Set(list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

whitelist = Set(whitelist)
