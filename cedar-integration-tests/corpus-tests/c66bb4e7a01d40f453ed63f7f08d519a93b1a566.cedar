forbid(
  principal == a::"",
  action in [Action::"action"],
  resource == a::""
) when {
  (true && ((if (if true then false else principal) then principal else principal) is a)) && principal
};
