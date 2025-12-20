@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_356a3:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i64 @_Znwm(i64 4)
  %2 = inttoptr i64 %1 to ptr
  store i32 5, ptr %2, align 4
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %4)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

