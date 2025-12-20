@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17187:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call ptr @malloc(i32 4)
  %2 = bitcast ptr %1 to ptr
  store i32 5, ptr %2, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %2, align 4
  call void @printIntLine(i32 10)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

