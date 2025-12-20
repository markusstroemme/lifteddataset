define void @anon0() local_unnamed_addr {
dec_label_pc_bdc5:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_be07, label %dec_label_pc_bdfd

dec_label_pc_bdfd:                                ; preds = %dec_label_pc_bdc5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_be07:                                ; preds = %dec_label_pc_bdc5
  %4 = bitcast ptr %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = call ptr @strncpy(ptr %4, ptr nonnull %5, i32 %7)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_be6f, label %dec_label_pc_be6a

dec_label_pc_be6a:                                ; preds = %dec_label_pc_be07
  call void @__stack_chk_fail()
  br label %dec_label_pc_be6f

dec_label_pc_be6f:                                ; preds = %dec_label_pc_be6a, %dec_label_pc_be07
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

