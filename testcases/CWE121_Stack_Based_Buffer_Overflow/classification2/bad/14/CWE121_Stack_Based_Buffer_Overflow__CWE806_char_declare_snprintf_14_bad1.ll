@global_var_131f7 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_550e:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr inttoptr (i64 110628 to ptr), align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_5569, label %dec_label_pc_5542

dec_label_pc_5542:                                ; preds = %dec_label_pc_550e
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = add i64 %5, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_5569

dec_label_pc_5569:                                ; preds = %dec_label_pc_5542, %dec_label_pc_550e
  %8 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = bitcast ptr %stack_var_-184 to ptr
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %10, i32 %9, ptr @global_var_131f7, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %8)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_560c, label %dec_label_pc_5607

dec_label_pc_5607:                                ; preds = %dec_label_pc_5569
  call void @__stack_chk_fail()
  br label %dec_label_pc_560c

dec_label_pc_560c:                                ; preds = %dec_label_pc_5607, %dec_label_pc_5569
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

