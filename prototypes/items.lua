local icons_path = "__FluidMustFlow__/graphics/icons/buildings/"

data:extend({
  {
    type = "item",
    name = "duct-small",
    icon = icons_path .. "duct-small.png",
    place_result = "duct-small",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-a[duct-small]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct",
    icon = icons_path .. "duct.png",
    place_result = "duct",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-b[duct]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct-long",
    icon = icons_path .. "duct-long.png",
    place_result = "duct-long",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-c[duct-long]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct-t-junction",
    icon = icons_path .. "duct-t-junction.png",
    place_result = "duct-t-junction",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-e[duct-t-junction]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct-curve",
    icon = icons_path .. "duct-curve.png",
    place_result = "duct-curve",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-f[duct-curve]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct-cross",
    icon = icons_path .. "duct-cross.png",
    place_result = "duct-cross",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-g[duct-cross]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "duct-underground",
    icon = icons_path .. "duct-to-ground.png",
    place_result = "duct-underground",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-d[duct-underground]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "non-return-duct",
    icon = icons_path .. "non-return-duct.png",
    place_result = "non-return-duct",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-h[non-return-duct]",
    stack_size = 10,
  },
  {
    type = "item",
    name = "duct-intake",
    icon = icons_path .. "duct-intake.png",
    place_result = "duct-intake",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-i[duct-intake]",
    stack_size = 10,
  },
  {
    type = "item",
    name = "duct-exhaust",
    icon = icons_path .. "duct-exhaust.png",
    place_result = "duct-exhaust",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-l[duct-exhaust]",
    stack_size = 10,
  },
})
