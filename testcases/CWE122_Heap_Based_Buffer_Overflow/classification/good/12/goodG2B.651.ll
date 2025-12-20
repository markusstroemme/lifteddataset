define void @anon0() local_unnamed_addr {
dec_label_pc_864a:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 11)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_869a, label %dec_label_pc_867b

dec_label_pc_867b:                                ; preds = %dec_label_pc_864a
  br i1 %5, label %dec_label_pc_86b9, label %dec_label_pc_8690

dec_label_pc_8690:                                ; preds = %dec_label_pc_867b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_869a:                                ; preds = %dec_label_pc_864a
  br i1 %5, label %dec_label_pc_86b9, label %dec_label_pc_86af

dec_label_pc_86af:                                ; preds = %dec_label_pc_869a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_86b9:                                ; preds = %dec_label_pc_869a, %dec_label_pc_867b
  %6 = bitcast ptr %3 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-27, i32 %9)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_8721, label %dec_label_pc_871c

dec_label_pc_871c:                                ; preds = %dec_label_pc_86b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_8721

dec_label_pc_8721:                                ; preds = %dec_label_pc_871c, %dec_label_pc_86b9
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

