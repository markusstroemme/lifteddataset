@global_var_4a578 = external constant [4 x i8]
@global_var_6d044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16aee:
  %0 = load i32, ptr @global_var_6d044, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_16b49, label %dec_label_pc_16b05

dec_label_pc_16b05:                               ; preds = %dec_label_pc_16aee
  %3 = call ptr @malloc(i32 4)
  %4 = bitcast ptr %3 to ptr
  store i32 5, ptr %4, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %4, align 4
  call void @printIntLine(i32 10)
  br label %dec_label_pc_16b49

dec_label_pc_16b49:                               ; preds = %dec_label_pc_16b05, %dec_label_pc_16aee
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

