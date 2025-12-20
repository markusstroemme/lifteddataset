@global_var_13215 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5ebd:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = add i64 %1, 49
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  store i8 0, ptr %3, align 1
  %5 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = bitcast ptr %stack_var_-184 to ptr
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %7, i32 %6, ptr @global_var_13215, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %5)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_5f60, label %dec_label_pc_5f5b

dec_label_pc_5f5b:                                ; preds = %dec_label_pc_5ebd
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f60

dec_label_pc_5f60:                                ; preds = %dec_label_pc_5f5b, %dec_label_pc_5ebd
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_feec:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_ff0f, label %dec_label_pc_ff03

dec_label_pc_ff03:                                ; preds = %dec_label_pc_feec
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_ff0f

dec_label_pc_ff0f:                                ; preds = %dec_label_pc_ff03, %dec_label_pc_feec
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

