permit(
  principal in a::"",
  action == Action::"action",
  resource == a::""
) when {
  (true && (((Action::"action" == a::"") == (false == true)) == (!((!(principal < principal)) < principal)))) && principal
};
