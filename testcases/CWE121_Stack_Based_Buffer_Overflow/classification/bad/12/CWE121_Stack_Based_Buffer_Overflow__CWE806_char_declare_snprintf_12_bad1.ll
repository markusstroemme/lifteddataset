@global_var_131dc = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4f71:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4fd1, label %dec_label_pc_4fa8

dec_label_pc_4fa8:                                ; preds = %dec_label_pc_4f71
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_4ff8

dec_label_pc_4fd1:                                ; preds = %dec_label_pc_4f71
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_4ff8

dec_label_pc_4ff8:                                ; preds = %dec_label_pc_4fd1, %dec_label_pc_4fa8
  %11 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = bitcast ptr %stack_var_-184 to ptr
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %13, i32 %12, ptr @global_var_131dc, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %11)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_509b, label %dec_label_pc_5096

dec_label_pc_5096:                                ; preds = %dec_label_pc_4ff8
  call void @__stack_chk_fail()
  br label %dec_label_pc_509b

dec_label_pc_509b:                                ; preds = %dec_label_pc_5096, %dec_label_pc_4ff8
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_1041a:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

