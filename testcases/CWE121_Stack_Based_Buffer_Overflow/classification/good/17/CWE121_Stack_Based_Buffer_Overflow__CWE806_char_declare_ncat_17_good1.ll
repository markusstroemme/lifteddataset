define void @anon0() local_unnamed_addr {
dec_label_pc_526ce:
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
  %8 = call ptr @strncat(ptr nonnull %7, ptr nonnull %5, i32 %6)
  call void @printLine(ptr nonnull %5)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_52769, label %dec_label_pc_52764

dec_label_pc_52764:                               ; preds = %dec_label_pc_526ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_52769

dec_label_pc_52769:                               ; preds = %dec_label_pc_52764, %dec_label_pc_526ce
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

