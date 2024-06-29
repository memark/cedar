permit(
  principal,
  action == Action::"action",
  resource == a::"PQ"
) when {
  (true && a::"PQ") && false
};
