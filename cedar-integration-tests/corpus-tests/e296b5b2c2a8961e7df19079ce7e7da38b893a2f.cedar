forbid(
  principal == a::"",
  action == Action::"action",
  resource == a::""
) when {
  true && (((Action::"action" == false) == false) == ((principal == true) == (!principal)))
};
