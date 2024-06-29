permit(
  principal == a::"",
  action == Action::"action",
  resource == a::""
) when {
  true && ((a::"" has "A") has "")
};
