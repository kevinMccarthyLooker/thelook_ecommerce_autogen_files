include: "/auto_gen_views/events.view.lkml"
include: "/standard_view_enhancements/primary_key_and_count.view.lkml"
view: +events {
  extends: [primary_key_and_count]
  # dimension: primary_key {
  #   primary_key: yes
  #   sql: ${id} ;;
  # }
  # measure: count {
  #   filters: [primary_key: "-NULL"]
  # }

  dimension: id {label: "Event ID"}

  #separate keys, etc, for simple set of fields
  dimension: id         {view_label: "Events (Tech Fields)" hidden:yes}
  dimension: session_id {view_label: "Events (Tech Fields)" hidden:yes}
}
