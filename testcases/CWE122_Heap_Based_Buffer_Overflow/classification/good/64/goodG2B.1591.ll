define void @anon1() local_unnamed_addr {
dec_label_pc_fcf4:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_fd38, label %dec_label_pc_fd2e

dec_label_pc_fd2e:                                ; preds = %dec_label_pc_fcf4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fd38:                                ; preds = %dec_label_pc_fcf4
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_fd59, label %dec_label_pc_fd54

dec_label_pc_fd54:                                ; preds = %dec_label_pc_fd38
  call void @__stack_chk_fail()
  br label %dec_label_pc_fd59

dec_label_pc_fd59:                                ; preds = %dec_label_pc_fd54, %dec_label_pc_fd38
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_fe0c:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = call ptr @strncpy(ptr %dataVoidPtr, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  %5 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_fea6, label %dec_label_pc_fea1

dec_label_pc_fea1:                                ; preds = %dec_label_pc_fe0c
  call void @__stack_chk_fail()
  br label %dec_label_pc_fea6

dec_label_pc_fea6:                                ; preds = %dec_label_pc_fea1, %dec_label_pc_fe0c
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

