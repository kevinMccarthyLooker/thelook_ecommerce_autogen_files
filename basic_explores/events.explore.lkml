
include: "/**/events.view"
include: "/**/users.view"

explore: events {
  join: users {
    sql_on: ${events.user_id}=${users.id} ;;
    relationship: many_to_one
  }
}
