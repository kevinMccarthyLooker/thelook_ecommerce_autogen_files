include: "/auto_gen_views/products.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +products {
  extends: [primary_key_and_count]
  dimension: primary_key {sql:${id};;}
  dimension: id {hidden:yes}

  #separate keys, etc, for simple set of fields
  dimension: distribution_center_id         {view_label: "Products (Tech Fields)" hidden:yes}
}
