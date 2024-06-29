permit(
  principal == a::"0\0\0",
  action == Action::"",
  resource
) when {
  true && ("" like ":*1")
};
