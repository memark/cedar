permit(
  principal == a::"\0\0",
  action == Action::"",
  resource
) when {
  true && [false, context]
};
