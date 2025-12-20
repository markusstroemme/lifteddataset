define void @anon0() local_unnamed_addr {
dec_label_pc_d2db:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 11)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_d32b, label %dec_label_pc_d30c

dec_label_pc_d30c:                                ; preds = %dec_label_pc_d2db
  br i1 %5, label %dec_label_pc_d34a, label %dec_label_pc_d321

dec_label_pc_d321:                                ; preds = %dec_label_pc_d30c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d32b:                                ; preds = %dec_label_pc_d2db
  br i1 %5, label %dec_label_pc_d34a, label %dec_label_pc_d340

dec_label_pc_d340:                                ; preds = %dec_label_pc_d32b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d34a:                                ; preds = %dec_label_pc_d32b, %dec_label_pc_d30c
  %6 = bitcast ptr %3 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = call ptr @strncpy(ptr %6, ptr nonnull %7, i32 %9)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_d3b2, label %dec_label_pc_d3ad

dec_label_pc_d3ad:                                ; preds = %dec_label_pc_d34a
  call void @__stack_chk_fail()
  br label %dec_label_pc_d3b2

dec_label_pc_d3b2:                                ; preds = %dec_label_pc_d3ad, %dec_label_pc_d34a
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

