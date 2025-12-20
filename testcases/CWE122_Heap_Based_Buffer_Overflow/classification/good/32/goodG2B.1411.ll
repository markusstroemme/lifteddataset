define void @anon0() local_unnamed_addr {
dec_label_pc_e738:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_e795, label %dec_label_pc_e78b

dec_label_pc_e78b:                                ; preds = %dec_label_pc_e738
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e795:                                ; preds = %dec_label_pc_e738
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = add i32 %5, 1
  %7 = bitcast ptr %1 to ptr
  %8 = call ptr @strncpy(ptr %7, ptr nonnull %4, i32 %6)
  call void @printLine(ptr %7)
  call void @free(ptr %1)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_e813, label %dec_label_pc_e80e

dec_label_pc_e80e:                                ; preds = %dec_label_pc_e795
  call void @__stack_chk_fail()
  br label %dec_label_pc_e813

dec_label_pc_e813:                                ; preds = %dec_label_pc_e80e, %dec_label_pc_e795
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

