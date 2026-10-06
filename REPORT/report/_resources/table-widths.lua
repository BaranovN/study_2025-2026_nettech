function Table(t)
  local n = #t.colspecs
  local widths = n == 3 and {0.24, 0.32, 0.44} or {0.52, 0.48}
  for i = 1, n do
    t.colspecs[i] = {t.colspecs[i][1], widths[i] or (1/n)}
  end
  return t
end
