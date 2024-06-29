permit(
  principal == a::"",
  action == Action::"action",
  resource
) when {
  true && (false like "\0\0 ")
};
