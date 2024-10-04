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
  
  if (((year.Divs(4)) and (year mod 100 <> 0)) or (year.Divs(400))) then
    Print($'{newline}{newline}В году 366 дней')
  else
    Print($'{newline}{newline}В году 365 дней');
  
  var year_1 := ReadInteger($'{newline}{newline}Введите целое положительное число - первый год:');
  var year_2 := ReadInteger('Введите целое положительное число - второй год:');
  Assert(year_1 > 0);
  Assert(year_2 > 0);
  var sum := 0;
  for var i := year_1 to year_2 do
    begin
      if (((i.Divs(4)) and (i mod 100 <> 0)) or (i.Divs(400))) then
        sum += 366
      else
        sum += 365;
    end;
  Print($'Сумма дней между {year_1} и {year_2} годами: {sum}');
end.