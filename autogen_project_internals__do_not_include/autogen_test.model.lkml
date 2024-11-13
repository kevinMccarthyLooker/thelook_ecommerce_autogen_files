#This file is primarily intended to facilitate lookml validation.  Explores have been refined to be hidden so that they don't show up in explore picker

include: "/basic_model_params.lkml"
include: "/basic_explores/*"

explore: +events {hidden:yes}
explore: +order_items {hidden:yes}
