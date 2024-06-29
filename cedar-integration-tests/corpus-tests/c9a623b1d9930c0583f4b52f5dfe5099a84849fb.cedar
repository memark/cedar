permit(
  principal == a::"\0\0",
  action == Action::"",
  resource
) when {
  true && [a::"\0\0", false]
};
