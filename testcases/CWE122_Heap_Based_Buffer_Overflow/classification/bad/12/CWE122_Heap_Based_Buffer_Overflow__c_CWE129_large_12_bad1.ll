@global_var_b7000 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3f8c2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 7, i32 10
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  br i1 %3, label %dec_label_pc_3f9c3, label %dec_label_pc_3f905

dec_label_pc_3f905:                               ; preds = %dec_label_pc_3f8c2
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3f92d, label %dec_label_pc_3f91a

dec_label_pc_3f91a:                               ; preds = %dec_label_pc_3f905
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f92d:                               ; preds = %dec_label_pc_3f905, %dec_label_pc_3f92d
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %8 = mul i64 %indvars.iv16.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_3f957, label %dec_label_pc_3f92d

dec_label_pc_3f957:                               ; preds = %dec_label_pc_3f92d
  %11 = mul i32 %., 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %12, %5
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br label %dec_label_pc_3f97a

dec_label_pc_3f97a:                               ; preds = %dec_label_pc_3f97a, %dec_label_pc_3f957
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %15 = mul i64 %indvars.iv13.reload, 4
  %16 = add i64 %15, %5
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_3f9b2, label %dec_label_pc_3f97a

dec_label_pc_3f9b2:                               ; preds = %dec_label_pc_3f97a
  call void @free(ptr %4)
  br label %dec_label_pc_3fa82

dec_label_pc_3f9c3:                               ; preds = %dec_label_pc_3f8c2
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3f9eb, label %dec_label_pc_3f9d8

dec_label_pc_3f9d8:                               ; preds = %dec_label_pc_3f9c3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f9eb:                               ; preds = %dec_label_pc_3f9c3, %dec_label_pc_3f9eb
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %19 = mul i64 %indvars.iv10.reload, 4
  %20 = add i64 %19, %5
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_3fa0f, label %dec_label_pc_3f9eb

dec_label_pc_3fa0f:                               ; preds = %dec_label_pc_3f9eb
  br i1 %1, label %dec_label_pc_3fa1b, label %dec_label_pc_3fa67

dec_label_pc_3fa1b:                               ; preds = %dec_label_pc_3fa0f
  %22 = mul i32 %., 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, %5
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3fa3e

dec_label_pc_3fa3e:                               ; preds = %dec_label_pc_3fa3e, %dec_label_pc_3fa1b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %5
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3fa76, label %dec_label_pc_3fa3e

dec_label_pc_3fa67:                               ; preds = %dec_label_pc_3fa0f
  call void @printLine(ptr @global_var_b7000)
  br label %dec_label_pc_3fa76

dec_label_pc_3fa76:                               ; preds = %dec_label_pc_3fa3e, %dec_label_pc_3fa67
  call void @free(ptr %4)
  br label %dec_label_pc_3fa82

dec_label_pc_3fa82:                               ; preds = %dec_label_pc_3fa76, %dec_label_pc_3f9b2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

