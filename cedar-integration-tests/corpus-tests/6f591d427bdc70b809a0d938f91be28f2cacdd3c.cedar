permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && ("re\0\0" like "\0")
};
