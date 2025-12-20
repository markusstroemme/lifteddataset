define void @anon0() local_unnamed_addr {
dec_label_pc_f875:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_f8af, label %dec_label_pc_f8a5

dec_label_pc_f8a5:                                ; preds = %dec_label_pc_f875
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f8af:                                ; preds = %dec_label_pc_f875
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_f8e0, label %dec_label_pc_f8bd

dec_label_pc_f8bd:                                ; preds = %dec_label_pc_f8af
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_f901

dec_label_pc_f8e0:                                ; preds = %dec_label_pc_f8af
  %10 = call ptr @memset(ptr %1, i32 65, i32 49)
  %11 = ptrtoint ptr %1 to i64
  %12 = add i64 %11, 49
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  br label %dec_label_pc_f901

dec_label_pc_f901:                                ; preds = %dec_label_pc_f8e0, %dec_label_pc_f8bd
  %14 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %15 = bitcast ptr %stack_var_-72 to ptr
  %16 = call ptr @strcat(ptr nonnull %15, ptr %14)
  call void @printLine(ptr %14)
  call void @free(ptr %1)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_f977, label %dec_label_pc_f972

dec_label_pc_f972:                                ; preds = %dec_label_pc_f901
  call void @__stack_chk_fail()
  br label %dec_label_pc_f977

dec_label_pc_f977:                                ; preds = %dec_label_pc_f972, %dec_label_pc_f901
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

