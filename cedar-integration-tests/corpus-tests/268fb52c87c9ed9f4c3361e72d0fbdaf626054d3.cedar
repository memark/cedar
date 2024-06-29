permit(
  principal == a::"\0\0",
  action == Action::"",
  resource
) when {
  true && (context like "\0")
};
