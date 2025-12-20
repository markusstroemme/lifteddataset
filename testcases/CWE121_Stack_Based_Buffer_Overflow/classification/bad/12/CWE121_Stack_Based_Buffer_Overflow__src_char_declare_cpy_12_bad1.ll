define void @anon0() local_unnamed_addr {
dec_label_pc_4b91:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4bf1, label %dec_label_pc_4bc8

dec_label_pc_4bc8:                                ; preds = %dec_label_pc_4b91
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_4c18

dec_label_pc_4bf1:                                ; preds = %dec_label_pc_4b91
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_4c18

dec_label_pc_4c18:                                ; preds = %dec_label_pc_4bf1, %dec_label_pc_4bc8
  %11 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %12 = bitcast ptr %stack_var_-184 to ptr
  %13 = call ptr @strcpy(ptr nonnull %12, ptr nonnull %11)
  call void @printLine(ptr nonnull %11)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_4c9d, label %dec_label_pc_4c98

dec_label_pc_4c98:                                ; preds = %dec_label_pc_4c18
  call void @__stack_chk_fail()
  br label %dec_label_pc_4c9d

dec_label_pc_4c9d:                                ; preds = %dec_label_pc_4c98, %dec_label_pc_4c18
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_f737:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

