include: "/auto_gen_views/order_items.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +order_items {
  extends: [primary_key_and_count]
  # dimension: primary_key {
  #   primary_key: yes
  #   sql: ${id} ;;
  # }
  # measure: count {
  #   filters: [primary_key: "-NULL"]
  # }

  dimension: id {label: "Order Item ID"}
}
