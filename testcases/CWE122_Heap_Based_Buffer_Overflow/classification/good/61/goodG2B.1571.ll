define void @anon1() local_unnamed_addr {
dec_label_pc_f966:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = call ptr @strncpy(ptr %1, ptr nonnull %2, i32 %4)
  call void @printLine(ptr %1)
  %6 = bitcast ptr %1 to ptr
  call void @free(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_fa01, label %dec_label_pc_f9fc

dec_label_pc_f9fc:                                ; preds = %dec_label_pc_f966
  call void @__stack_chk_fail()
  br label %dec_label_pc_fa01

dec_label_pc_fa01:                                ; preds = %dec_label_pc_f9fc, %dec_label_pc_f966
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_fa4d:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_fa7c, label %dec_label_pc_fa72

dec_label_pc_fa72:                                ; preds = %dec_label_pc_fa4d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fa7c:                                ; preds = %dec_label_pc_fa4d
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
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

