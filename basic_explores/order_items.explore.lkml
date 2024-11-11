include: "/*/order_items.view"
include: "/*/orders.view"
include: "/*/products.view"
include: "/*/users.view"

explore: order_items {
  join: orders {
    sql: ${order_items.order_id}=${orders.order_id} ;;
  }
  join: users {
    sql: ${order_items.user_id}=${users.id} ;;
  }
  join: products {
    sql: ${order_items.product_id}=${products.id} ;;
  }
}
