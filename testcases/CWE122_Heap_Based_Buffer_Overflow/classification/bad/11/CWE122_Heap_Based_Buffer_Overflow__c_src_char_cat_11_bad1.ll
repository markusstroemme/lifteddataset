define void @anon0() local_unnamed_addr {
dec_label_pc_f5a2:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_f5dc, label %dec_label_pc_f5d2

dec_label_pc_f5d2:                                ; preds = %dec_label_pc_f5a2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f5dc:                                ; preds = %dec_label_pc_f5a2
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_f60b, label %dec_label_pc_f5ea

dec_label_pc_f5ea:                                ; preds = %dec_label_pc_f5dc
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_f60b

dec_label_pc_f60b:                                ; preds = %dec_label_pc_f5ea, %dec_label_pc_f5dc
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strcat(ptr nonnull %11, ptr %10)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_f681, label %dec_label_pc_f67c

dec_label_pc_f67c:                                ; preds = %dec_label_pc_f60b
  call void @__stack_chk_fail()
  br label %dec_label_pc_f681

dec_label_pc_f681:                                ; preds = %dec_label_pc_f67c, %dec_label_pc_f60b
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_25198:
  ret i32 1
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

