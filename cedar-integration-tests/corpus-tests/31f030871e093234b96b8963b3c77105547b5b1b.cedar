permit(
  principal == a::"",
  action,
  resource is a in a::""
) when {
  ((true && ((!false) like "*\u{18}|**\0")) && (!principal)) && principal
};
