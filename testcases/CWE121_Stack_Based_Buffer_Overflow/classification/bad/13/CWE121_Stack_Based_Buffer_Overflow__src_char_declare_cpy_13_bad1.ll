define void @anon0() local_unnamed_addr {
dec_label_pc_4dc2:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr inttoptr (i64 74580 to ptr), align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_4e1d, label %dec_label_pc_4df6

dec_label_pc_4df6:                                ; preds = %dec_label_pc_4dc2
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = add i64 %5, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_4e1d

dec_label_pc_4e1d:                                ; preds = %dec_label_pc_4df6, %dec_label_pc_4dc2
  %8 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %9 = bitcast ptr %stack_var_-184 to ptr
  %10 = call ptr @strcpy(ptr nonnull %9, ptr nonnull %8)
  call void @printLine(ptr nonnull %8)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4ea2, label %dec_label_pc_4e9d

dec_label_pc_4e9d:                                ; preds = %dec_label_pc_4e1d
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ea2

dec_label_pc_4ea2:                                ; preds = %dec_label_pc_4e9d, %dec_label_pc_4e1d
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

