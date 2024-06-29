@A("\0")
permit(
  principal == a::"",
  action == Action::"action",
  resource
) when {
  true && ("" like "r\0")
};
