@global_var_ad2e8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4400a:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %. = select i1 %5, i32 7, i32 10
  %6 = call i32 @globalReturnsTrueOrFalse()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  %10 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %9, label %dec_label_pc_4411c, label %dec_label_pc_44064

dec_label_pc_44064:                               ; preds = %dec_label_pc_4400a, %dec_label_pc_44064
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %11 = mul i64 %indvars.iv16.reload, 4
  %12 = add i64 %11, %10
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_4408e, label %dec_label_pc_44064

dec_label_pc_4408e:                               ; preds = %dec_label_pc_44064
  %14 = mul i32 %., 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %10, %15
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br label %dec_label_pc_440b1

dec_label_pc_440b1:                               ; preds = %dec_label_pc_440b1, %dec_label_pc_4408e
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %18 = mul i64 %indvars.iv13.reload, 4
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_440e9, label %dec_label_pc_440b1

dec_label_pc_440e9:                               ; preds = %dec_label_pc_440b1
  %22 = icmp eq i64 %10, 0
  br i1 %22, label %dec_label_pc_441ba, label %dec_label_pc_440f4

dec_label_pc_440f4:                               ; preds = %dec_label_pc_440e9
  %23 = inttoptr i64 %10 to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_441ba

dec_label_pc_4411c:                               ; preds = %dec_label_pc_4400a, %dec_label_pc_4411c
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %26 = mul i64 %indvars.iv10.reload, 4
  %27 = add i64 %26, %10
  %28 = inttoptr i64 %27 to ptr
  store i32 0, ptr %28, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_44140, label %dec_label_pc_4411c

dec_label_pc_44140:                               ; preds = %dec_label_pc_4411c
  br i1 %5, label %dec_label_pc_4414c, label %dec_label_pc_44198

dec_label_pc_4414c:                               ; preds = %dec_label_pc_44140
  %29 = mul i32 %., 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %10, %30
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4416f

dec_label_pc_4416f:                               ; preds = %dec_label_pc_4416f, %dec_label_pc_4414c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %33 = mul i64 %indvars.iv.reload, 4
  %34 = add i64 %33, %10
  %35 = inttoptr i64 %34 to ptr
  %36 = load i32, ptr %35, align 4
  call void @printIntLine(i32 %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_441a7, label %dec_label_pc_4416f

dec_label_pc_44198:                               ; preds = %dec_label_pc_44140
  call void @printLine(ptr @global_var_ad2e8)
  br label %dec_label_pc_441a7

dec_label_pc_441a7:                               ; preds = %dec_label_pc_4416f, %dec_label_pc_44198
  %37 = icmp eq i64 %10, 0
  br i1 %37, label %dec_label_pc_441ba, label %dec_label_pc_441ae

dec_label_pc_441ae:                               ; preds = %dec_label_pc_441a7
  %38 = inttoptr i64 %10 to ptr
  %39 = and i64 %1, 4294967295
  %40 = inttoptr i64 %39 to ptr
  call void @_ZdaPv(ptr %38, ptr %40)
  br label %dec_label_pc_441ba

dec_label_pc_441ba:                               ; preds = %dec_label_pc_441ae, %dec_label_pc_441a7, %dec_label_pc_440f4, %dec_label_pc_440e9
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

