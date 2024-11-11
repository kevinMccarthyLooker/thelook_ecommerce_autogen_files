include: "/auto_gen_views/order_items.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +order_items {
  extends: [primary_key_and_count]
  dimension: primary_key {sql:${id};;}
  dimension: id {hidden:yes}
}
