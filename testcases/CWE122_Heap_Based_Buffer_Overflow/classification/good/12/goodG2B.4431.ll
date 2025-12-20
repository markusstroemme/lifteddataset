define void @anon0() local_unnamed_addr {
dec_label_pc_29087:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_290e0, label %dec_label_pc_290b8

dec_label_pc_290b8:                               ; preds = %dec_label_pc_29087
  br i1 %5, label %dec_label_pc_29106, label %dec_label_pc_290cd

dec_label_pc_290cd:                               ; preds = %dec_label_pc_290b8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_290e0:                               ; preds = %dec_label_pc_29087
  br i1 %5, label %dec_label_pc_29106, label %dec_label_pc_290f5

dec_label_pc_290f5:                               ; preds = %dec_label_pc_290e0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_29106:                               ; preds = %dec_label_pc_290e0, %dec_label_pc_290b8
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncpy(ptr %6, ptr nonnull %8, i32 99)
  %10 = ptrtoint ptr %3 to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_29170, label %dec_label_pc_2916b

dec_label_pc_2916b:                               ; preds = %dec_label_pc_29106
  call void @__stack_chk_fail()
  br label %dec_label_pc_29170

dec_label_pc_29170:                               ; preds = %dec_label_pc_2916b, %dec_label_pc_29106
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

