permit(
  principal is a in a::"\u{18}3",
  action == Action::"action",
  resource
) when {
  (true && Action::"action") && true
};
