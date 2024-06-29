permit(
  principal == a::".$5",
  action == Action::"",
  resource
) when {
  true && (a::""["n"])
};
