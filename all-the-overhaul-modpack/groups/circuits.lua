local regroup = require("functions/regroup")

data:extend {
    {
        type = "item-group",
        name = "circuits",
        icon = "__base__/graphics/technology/circuit-network.png",
        icon_size = 256,
        icon_mipmaps = 4,
    }
}

regroup.create_subgroup("network", "circuits", "raw-01")
regroup.create_subgroup("connection", "circuits", "raw-02")
regroup.create_subgroup("combinator-arithmetic", "circuits", "raw-04")
regroup.create_subgroup("combinator-decider", "circuits", "raw-05")
regroup.create_subgroup("combinator-constant", "circuits", "raw-06")
regroup.create_subgroup("visual", "circuits", "raw-07")
regroup.create_subgroup("audio", "circuits", "raw-08")

regroup.set_subgroup_to_prototype("copper-cable", "network", "01")
regroup.set_subgroup_to_prototype("power-switch", "connection", "02")
regroup.set_subgroup_to_prototype("arithmetic-combinator", "combinator-arithmetic", "04")
regroup.set_subgroup_to_prototype("decider-combinator", "combinator-decider", "05")
regroup.set_subgroup_to_prototype("constant-combinator", "combinator-constant", "06")
regroup.set_subgroup_to_prototype("small-lamp", "visual", "07")
regroup.set_subgroup_to_prototype("programmable-speaker", "audio", "08")