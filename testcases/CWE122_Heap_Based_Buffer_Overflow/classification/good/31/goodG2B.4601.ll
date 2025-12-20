define void @anon0() local_unnamed_addr {
dec_label_pc_2a420:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2a46e, label %dec_label_pc_2a464

dec_label_pc_2a464:                               ; preds = %dec_label_pc_2a420
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a46e:                               ; preds = %dec_label_pc_2a420
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncpy(ptr %4, ptr nonnull %7, i32 99)
  %9 = add i64 %5, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_2a4f5, label %dec_label_pc_2a4f0

dec_label_pc_2a4f0:                               ; preds = %dec_label_pc_2a46e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a4f5

dec_label_pc_2a4f5:                               ; preds = %dec_label_pc_2a4f0, %dec_label_pc_2a46e
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

