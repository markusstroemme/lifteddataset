@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1644f:
  %0 = call ptr @malloc(i32 4)
  %1 = bitcast ptr %0 to ptr
  store i32 5, ptr %1, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %1, align 4
  call void @printIntLine(i32 10)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

