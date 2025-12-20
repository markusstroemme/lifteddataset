@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_331f6:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  store i64 5, ptr %2, align 8
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = load i64, ptr %2, align 8
  call void @printLongLongLine(i64 %4)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
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

