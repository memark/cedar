forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  (true && (((false == false) like "\0*\0*\0**\0\0*\0") like "")) && principal
};
