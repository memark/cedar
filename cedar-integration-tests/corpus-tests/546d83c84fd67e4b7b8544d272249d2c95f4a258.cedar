permit(
  principal == a::"\0\0",
  action == Action::"",
  resource
) when {
  true && (":1" like "")
};
