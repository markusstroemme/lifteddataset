define void @anon0() local_unnamed_addr {
dec_label_pc_26a3b:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_26a7f, label %dec_label_pc_26a75

dec_label_pc_26a75:                               ; preds = %dec_label_pc_26a3b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_26a7f:                               ; preds = %dec_label_pc_26a3b
  store i8 0, ptr %2, align 1
  call void @anon1(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_26aa7, label %dec_label_pc_26aa2

dec_label_pc_26aa2:                               ; preds = %dec_label_pc_26a7f
  call void @__stack_chk_fail()
  br label %dec_label_pc_26aa7

dec_label_pc_26aa7:                               ; preds = %dec_label_pc_26aa2, %dec_label_pc_26a7f
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_26b2c:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncat(ptr %2, ptr nonnull %3, i32 100)
  call void @printLine(ptr %2)
  %5 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_26bbe, label %dec_label_pc_26bb9

dec_label_pc_26bb9:                               ; preds = %dec_label_pc_26b2c
  call void @__stack_chk_fail()
  br label %dec_label_pc_26bbe

dec_label_pc_26bbe:                               ; preds = %dec_label_pc_26bb9, %dec_label_pc_26b2c
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

