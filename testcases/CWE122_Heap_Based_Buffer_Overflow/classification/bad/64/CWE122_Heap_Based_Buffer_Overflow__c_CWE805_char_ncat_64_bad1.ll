define void @anon0() local_unnamed_addr {
dec_label_pc_26c54:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_26c98, label %dec_label_pc_26c8e

dec_label_pc_26c8e:                               ; preds = %dec_label_pc_26c54
  call void @exit(i32 -1)
  unreachable

dec_label_pc_26c98:                               ; preds = %dec_label_pc_26c54
  store i8 0, ptr %2, align 1
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_26cc0, label %dec_label_pc_26cbb

dec_label_pc_26cbb:                               ; preds = %dec_label_pc_26c98
  call void @__stack_chk_fail()
  br label %dec_label_pc_26cc0

dec_label_pc_26cc0:                               ; preds = %dec_label_pc_26cbb, %dec_label_pc_26c98
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_26d45:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strncat(ptr %dataVoidPtr, ptr nonnull %2, i32 100)
  call void @printLine(ptr %dataVoidPtr)
  %4 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_26ddf, label %dec_label_pc_26dda

dec_label_pc_26dda:                               ; preds = %dec_label_pc_26d45
  call void @__stack_chk_fail()
  br label %dec_label_pc_26ddf

dec_label_pc_26ddf:                               ; preds = %dec_label_pc_26dda, %dec_label_pc_26d45
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

