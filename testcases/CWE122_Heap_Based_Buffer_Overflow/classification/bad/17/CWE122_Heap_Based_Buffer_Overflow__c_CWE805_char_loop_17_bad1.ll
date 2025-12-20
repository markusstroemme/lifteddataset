define void @anon0() local_unnamed_addr {
dec_label_pc_12ed7:
  %storemerge4.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_12f0d, label %dec_label_pc_12eec

dec_label_pc_12eec:                               ; preds = %dec_label_pc_12ed7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12f0d:                               ; preds = %dec_label_pc_12ed7
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_12f31

dec_label_pc_12f31:                               ; preds = %dec_label_pc_12f31, %dec_label_pc_12f0d
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %8 = add i64 %storemerge4.reload, %6
  %9 = add i64 %storemerge4.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_12f58, label %dec_label_pc_12f31

dec_label_pc_12f58:                               ; preds = %dec_label_pc_12f31
  %14 = add i64 %6, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_12f90, label %dec_label_pc_12f8b

dec_label_pc_12f8b:                               ; preds = %dec_label_pc_12f58
  call void @__stack_chk_fail()
  br label %dec_label_pc_12f90

dec_label_pc_12f90:                               ; preds = %dec_label_pc_12f8b, %dec_label_pc_12f58
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

