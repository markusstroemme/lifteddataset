@staticFive = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_284d3:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticFive, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_28527, label %dec_label_pc_28501

dec_label_pc_28501:                               ; preds = %dec_label_pc_284d3
  %4 = call ptr @malloc(i32 100)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_28520, label %dec_label_pc_28516

dec_label_pc_28516:                               ; preds = %dec_label_pc_28501
  call void @exit(i32 -1)
  unreachable

dec_label_pc_28520:                               ; preds = %dec_label_pc_28501
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_28527

dec_label_pc_28527:                               ; preds = %dec_label_pc_28520, %dec_label_pc_284d3
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = bitcast ptr %stack_var_-120 to ptr
  %10 = call ptr @strncpy(ptr %stack_var_-128.0.reload, ptr nonnull %9, i32 99)
  %11 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %12 = add i64 %11, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %14 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_28591, label %dec_label_pc_2858c

dec_label_pc_2858c:                               ; preds = %dec_label_pc_28527
  call void @__stack_chk_fail()
  br label %dec_label_pc_28591

dec_label_pc_28591:                               ; preds = %dec_label_pc_2858c, %dec_label_pc_28527
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

