@global_var_4c2e2 = external constant [21 x i8]

define i32 @staticReturnsFalse.370() local_unnamed_addr {
dec_label_pc_23844:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2390b:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.370()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2394d, label %dec_label_pc_2393c

dec_label_pc_2393c:                               ; preds = %dec_label_pc_2390b
  call void @printLine(ptr @global_var_4c2e2)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_23973

dec_label_pc_2394d:                               ; preds = %dec_label_pc_2390b
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2396c, label %dec_label_pc_23962

dec_label_pc_23962:                               ; preds = %dec_label_pc_2394d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2396c:                               ; preds = %dec_label_pc_2394d
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_23973

dec_label_pc_23973:                               ; preds = %dec_label_pc_2396c, %dec_label_pc_2393c
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncat(ptr %stack_var_-128.0.reload, ptr nonnull %8, i32 100)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_239d2, label %dec_label_pc_239cd

dec_label_pc_239cd:                               ; preds = %dec_label_pc_23973
  call void @__stack_chk_fail()
  br label %dec_label_pc_239d2

dec_label_pc_239d2:                               ; preds = %dec_label_pc_239cd, %dec_label_pc_23973
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

