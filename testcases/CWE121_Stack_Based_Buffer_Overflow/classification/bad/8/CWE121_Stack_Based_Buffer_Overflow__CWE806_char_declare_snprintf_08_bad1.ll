@global_var_1317c = external constant [3 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_4287:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_42a5:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4303, label %dec_label_pc_42dc

dec_label_pc_42dc:                                ; preds = %dec_label_pc_42a5
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_4303

dec_label_pc_4303:                                ; preds = %dec_label_pc_42dc, %dec_label_pc_42a5
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = bitcast ptr %stack_var_-184 to ptr
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %9, i32 %8, ptr @global_var_1317c, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_43a6, label %dec_label_pc_43a1

dec_label_pc_43a1:                                ; preds = %dec_label_pc_4303
  call void @__stack_chk_fail()
  br label %dec_label_pc_43a6

dec_label_pc_43a6:                                ; preds = %dec_label_pc_43a1, %dec_label_pc_4303
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

