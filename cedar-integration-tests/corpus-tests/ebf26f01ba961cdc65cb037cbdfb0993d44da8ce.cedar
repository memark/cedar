permit(
  principal == a::"\0v",
  action == Action::"action",
  resource
) when {
  false && Action::"action"
};
