local constants = require("prototypes.constants")

local connector_def = circuit_connector_definitions.create_vector(universal_connector_template, {
  {
    variation = 24,
    main_offset = util.by_pixel(-22, 5),
    shadow_offset = util.by_pixel(0, 0),
    show_shadow = false,
  },
  {
    variation = 26,
    main_offset = util.by_pixel(22, 15),
    shadow_offset = util.by_pixel(24, 15),
    show_shadow = true,
  },
  {
    variation = 24,
    main_offset = util.by_pixel(-22, 5),
    shadow_offset = util.by_pixel(0, 0),
    show_shadow = false,
  },
  {
    variation = 26,
    main_offset = util.by_pixel(22, 15),
    shadow_offset = util.by_pixel(24, 15),
    show_shadow = true,
  },
})

data:extend({
  {
    type = "pump",
    name = "non-return-duct",
    icon = "__FluidMustFlow__/graphics/icon/entities/non-return-duct.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.4, result = "non-return-duct" },
    fast_replaceable_group = "duct-intermediate-points",
    max_health = 800,
    corpse = "small-remnants",
    dying_explosion = "pump-explosion",
    resistances = data.raw["pump"]["pump"].resistances,
    collision_box = { { -0.77, -0.9 }, { 0.77, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 4,
      pipe_covers = nil,
      pipe_connections = {
        {
          direction = defines.direction.north,
          connection_category_bitmask = 2,
          position = { 0, -0.5 },
          flow_direction = "output",
        },
        {
          direction = defines.direction.south,
          connection_category_bitmask = 2,
          position = { 0, 0.5 },
          flow_direction = "input",
        },
      },
      max_pipeline_extent = constants.extent,
    },
    animations = {
      east = {
        layers = {
          {
            animation_speed = 1,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_right.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 1,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_horizontal_shadow.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      north = {
        layers = {
          {
            animation_speed = 1,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_up.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 1,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_vertical_shadow.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      south = {
        layers = {
          {
            animation_speed = 1,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_down.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 1,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_vertical_shadow.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      west = {
        layers = {
          {
            animation_speed = 1,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_left.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 1,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_intermediate_points/hr_non_return_duct_horizontal_shadow.png",
            frame_count = 16,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
    },
    fluid_wagon_connector_frame_count = 0,
    energy_usage = "1W", -- base 30 x0
    energy_source = { type = "void" },
    pumping_speed = 1200,
    circuit_wire_connection_points = connector_def.points,
    circuit_connector_sprites = connector_def.sprites,
    circuit_wire_max_distance = data.raw["storage-tank"]["storage-tank"].circuit_wire_max_distance,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
})
