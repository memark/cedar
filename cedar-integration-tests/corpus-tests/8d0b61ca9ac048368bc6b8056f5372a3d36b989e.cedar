@A("")
permit(
  principal == a::"",
  action == Action::"action",
  resource
) when {
  true && (Action::"action" like "")
};
