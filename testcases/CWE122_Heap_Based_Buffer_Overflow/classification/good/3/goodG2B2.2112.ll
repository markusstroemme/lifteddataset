define void @anon0() local_unnamed_addr {
dec_label_pc_13b8f:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_13bc9, label %dec_label_pc_13bbf

dec_label_pc_13bbf:                               ; preds = %dec_label_pc_13b8f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13bc9:                               ; preds = %dec_label_pc_13b8f
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call ptr @strcpy(ptr nonnull %9, ptr %4)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_13c60, label %dec_label_pc_13c5b

dec_label_pc_13c5b:                               ; preds = %dec_label_pc_13bc9
  call void @__stack_chk_fail()
  br label %dec_label_pc_13c60

dec_label_pc_13c60:                               ; preds = %dec_label_pc_13c5b, %dec_label_pc_13bc9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

