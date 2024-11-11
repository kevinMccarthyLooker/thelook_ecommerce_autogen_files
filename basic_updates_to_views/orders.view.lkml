include: "/auto_gen_views/orders.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +orders {
  extends: [primary_key_and_count]
  dimension: primary_key {sql:${order_id};;}
  dimension: order_id {hidden:yes}

  #hide fields that don't belong here...
  dimension: gender {hidden:yes}

  #separate keys, etc, for simple set of fields
  dimension: user_id         {view_label: "Orders (Tech Fields)" hidden:yes}
}
