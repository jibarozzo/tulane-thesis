-- page_number_upper_right.lua
function Header(el)
  if el.level == 1 then
    table.insert(el.content, pandoc.RawInline('latex', '\\thispagestyle{scrheadings}'))
  end
  return el
end
