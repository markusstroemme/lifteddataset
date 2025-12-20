define void @anon0() local_unnamed_addr {
dec_label_pc_5ddc:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_5e35, label %dec_label_pc_5e0d

dec_label_pc_5e0d:                                ; preds = %dec_label_pc_5ddc
  br i1 %5, label %dec_label_pc_5e5b, label %dec_label_pc_5e22

dec_label_pc_5e22:                                ; preds = %dec_label_pc_5e0d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5e35:                                ; preds = %dec_label_pc_5ddc
  br i1 %5, label %dec_label_pc_5e5b, label %dec_label_pc_5e4a

dec_label_pc_5e4a:                                ; preds = %dec_label_pc_5e35
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5e5b:                                ; preds = %dec_label_pc_5e35, %dec_label_pc_5e0d
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strcat(ptr %6, ptr nonnull %8)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5eb5, label %dec_label_pc_5eb0

dec_label_pc_5eb0:                                ; preds = %dec_label_pc_5e5b
  call void @__stack_chk_fail()
  br label %dec_label_pc_5eb5

dec_label_pc_5eb5:                                ; preds = %dec_label_pc_5eb0, %dec_label_pc_5e5b
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_251b6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

