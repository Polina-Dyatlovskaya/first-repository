begin
  var year := ReadInteger('Введите целое положительное число - год:');
  Assert(year > 0);
  Print($'Является ли год високосным: {((year.Divs(4)) and (year mod 100 <> 0)) or (year.Divs(400))}');
end.