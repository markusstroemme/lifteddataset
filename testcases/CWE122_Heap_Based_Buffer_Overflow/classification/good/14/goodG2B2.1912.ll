@global_var_64054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1296e:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_129c2, label %dec_label_pc_1299c

dec_label_pc_1299c:                               ; preds = %dec_label_pc_1296e
  %4 = call ptr @malloc(i32 100)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_129bb, label %dec_label_pc_129b1

dec_label_pc_129b1:                               ; preds = %dec_label_pc_1299c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_129bb:                               ; preds = %dec_label_pc_1299c
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_129c2

dec_label_pc_129c2:                               ; preds = %dec_label_pc_129bb, %dec_label_pc_1296e
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %10 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_129e6

dec_label_pc_129e6:                               ; preds = %dec_label_pc_129e6, %dec_label_pc_129c2
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = add i64 %storemerge2.reload, %9
  %12 = add i64 %storemerge2.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_12a0d, label %dec_label_pc_129e6

dec_label_pc_12a0d:                               ; preds = %dec_label_pc_129e6
  %17 = add i64 %9, 99
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %19 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @free(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_12a45, label %dec_label_pc_12a40

dec_label_pc_12a40:                               ; preds = %dec_label_pc_12a0d
  call void @__stack_chk_fail()
  br label %dec_label_pc_12a45

dec_label_pc_12a45:                               ; preds = %dec_label_pc_12a40, %dec_label_pc_12a0d
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

declare i64 @__readfsqword(i64) local_unnamed_addr

