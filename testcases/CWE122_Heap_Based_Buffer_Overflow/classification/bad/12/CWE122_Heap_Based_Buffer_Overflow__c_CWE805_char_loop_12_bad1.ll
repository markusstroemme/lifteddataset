define void @anon0() local_unnamed_addr {
dec_label_pc_122d3:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1232c, label %dec_label_pc_12304

dec_label_pc_12304:                               ; preds = %dec_label_pc_122d3
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_12323, label %dec_label_pc_12319

dec_label_pc_12319:                               ; preds = %dec_label_pc_12304
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12323:                               ; preds = %dec_label_pc_12304
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_12352

dec_label_pc_1232c:                               ; preds = %dec_label_pc_122d3
  %7 = call ptr @malloc(i32 100)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_1234b, label %dec_label_pc_12341

dec_label_pc_12341:                               ; preds = %dec_label_pc_1232c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1234b:                               ; preds = %dec_label_pc_1232c
  %10 = bitcast ptr %7 to ptr
  store i8 0, ptr %10, align 1
  store ptr %10, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_12352

dec_label_pc_12352:                               ; preds = %dec_label_pc_1234b, %dec_label_pc_12323
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %13 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_12376

dec_label_pc_12376:                               ; preds = %dec_label_pc_12376, %dec_label_pc_12352
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %14 = add i64 %storemerge2.reload, %12
  %15 = add i64 %storemerge2.reload, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = inttoptr i64 %14 to ptr
  store i8 %17, ptr %18, align 1
  %19 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1239d, label %dec_label_pc_12376

dec_label_pc_1239d:                               ; preds = %dec_label_pc_12376
  %20 = add i64 %12, 99
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %22 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @free(ptr %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_123d5, label %dec_label_pc_123d0

dec_label_pc_123d0:                               ; preds = %dec_label_pc_1239d
  call void @__stack_chk_fail()
  br label %dec_label_pc_123d5

dec_label_pc_123d5:                               ; preds = %dec_label_pc_123d0, %dec_label_pc_1239d
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

