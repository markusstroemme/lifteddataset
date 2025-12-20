define void @anon0() local_unnamed_addr {
dec_label_pc_6581:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %3 = add i64 %1, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 0, ptr %stack_var_-184, align 8
  %5 = bitcast ptr %stack_var_-184 to ptr
  %6 = bitcast ptr %stack_var_-120 to ptr
  %7 = call ptr @strcpy(ptr nonnull %5, ptr nonnull %6)
  call void @printLine(ptr nonnull %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_66a5, label %dec_label_pc_66a0

dec_label_pc_66a0:                                ; preds = %dec_label_pc_6581
  call void @__stack_chk_fail()
  br label %dec_label_pc_66a5

dec_label_pc_66a5:                                ; preds = %dec_label_pc_66a0, %dec_label_pc_6581
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_f209:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_f22c, label %dec_label_pc_f220

dec_label_pc_f220:                                ; preds = %dec_label_pc_f209
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_f22c

dec_label_pc_f22c:                                ; preds = %dec_label_pc_f220, %dec_label_pc_f209
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

