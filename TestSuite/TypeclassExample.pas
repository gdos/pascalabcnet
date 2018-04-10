﻿type
  SumTC[T] = typeclass
    function sum(v1, v2: T): T;
  end;
  
  SumTC[integer] = instance
    function sum(v1, v2: integer): integer;
    begin
      Result := v1 + v2;
    end;
  end;

function Sum3<T>(v1, v2, v3: T): T; where SumTC[T];
begin
  Result := sum(v1, sum(v2, v3));
end;

begin
  var v1, v2, v3, res: integer;
  
  res := sum(v1, v2, v3);
  
  Write(res);
end.