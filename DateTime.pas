begin
  var year := ReadInteger('Введите целое положительное число - год:');
  Assert(year > 0);
  Print($'Является ли год високосным: {((year.Divs(4)) and (year mod 100 <> 0)) or (year.Divs(400))}');
  
  var first_day := ReadInteger($'{newline}{newline}Введите число - день первой даты:');
  var first_month := ReadInteger('Введите число - месяц первой даты:');
  var second_day := ReadInteger('Введите число - день второй даты:');
  var second_month := ReadInteger('Введите число - месяц второй даты:');
  if first_month > second_month then
    Print('1');
  if second_month > first_month then
    Print('2')
  else
  if first_day > second_day then
    Print('1')
  else
    Print('2');
end.