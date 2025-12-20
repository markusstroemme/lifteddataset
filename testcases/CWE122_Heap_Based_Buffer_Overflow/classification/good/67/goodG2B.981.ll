define void @anon1() local_unnamed_addr {
dec_label_pc_b63d:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_b670, label %dec_label_pc_b666

dec_label_pc_b666:                                ; preds = %dec_label_pc_b63d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b670:                                ; preds = %dec_label_pc_b63d
  %3 = ptrtoint ptr %0 to i64
  call void @anon0(i64 %3)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_b72d:
  %stack_var_-27 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = inttoptr i64 %myStruct to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  call void @printLine(ptr %0)
  call void @free(ptr %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_b7bc, label %dec_label_pc_b7b7

dec_label_pc_b7b7:                                ; preds = %dec_label_pc_b72d
  call void @__stack_chk_fail()
  br label %dec_label_pc_b7bc

dec_label_pc_b7bc:                                ; preds = %dec_label_pc_b7b7, %dec_label_pc_b72d
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

