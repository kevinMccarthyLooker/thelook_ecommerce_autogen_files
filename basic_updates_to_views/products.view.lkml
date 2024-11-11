include: "/auto_gen_views/products.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +products {
  # dimension: primary_key {
  #   primary_key: yes
  #   sql: ${id} ;;
  # }
  # measure: count {
  #   filters: [primary_key: "-NULL"]
  # }
  extends: [primary_key_and_count]

  dimension: id {label: "Product ID"}

  #separate keys, etc, for simple set of fields
  dimension: distribution_center_id         {view_label: "Products (Tech Fields)" hidden:yes}
}
