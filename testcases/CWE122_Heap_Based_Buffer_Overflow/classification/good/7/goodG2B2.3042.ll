@global_var_64034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1e7a8:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1e7fc, label %dec_label_pc_1e7d6

dec_label_pc_1e7d6:                               ; preds = %dec_label_pc_1e7a8
  %4 = call ptr @malloc(i32 100)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1e7f5, label %dec_label_pc_1e7eb

dec_label_pc_1e7eb:                               ; preds = %dec_label_pc_1e7d6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1e7f5:                               ; preds = %dec_label_pc_1e7d6
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1e7fc

dec_label_pc_1e7fc:                               ; preds = %dec_label_pc_1e7f5, %dec_label_pc_1e7a8
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = bitcast ptr %stack_var_-128.0.reload to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-120, i32 100)
  %11 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %12 = add i64 %11, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  call void @free(ptr %9)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1e866, label %dec_label_pc_1e861

dec_label_pc_1e861:                               ; preds = %dec_label_pc_1e7fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e866

dec_label_pc_1e866:                               ; preds = %dec_label_pc_1e861, %dec_label_pc_1e7fc
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

