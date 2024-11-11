# include: "/auto_gen_views/users.view.lkml"
# view: +users {
#   dimension: primary_key {
#     primary_key: yes
#     sql: ${id} ;;
#   }
#   measure: count {
#     filters: [primary_key: "-NULL"]
#   }

#   dimension: id {label: "User ID"}

# }

include: "/auto_gen_views/users.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +users {
  extends: [primary_key_and_count]
  # dimension: primary_key {
  #   primary_key: yes
  #   sql: ${id} ;;
  # }
  # measure: count {
  #   filters: [primary_key: "-NULL"]
  # }

  dimension: id {label: "User ID"}

}
