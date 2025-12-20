@global_var_b6390 = external constant [32 x i8]
@global_var_b63b0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_b6388 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_357d1:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %indvars.iv15.reg2mem = alloca i64, align 8
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3582c, label %dec_label_pc_35801

dec_label_pc_35801:                               ; preds = %dec_label_pc_357d1
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b6388)
  store i32 -1, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_3582c

dec_label_pc_3582c:                               ; preds = %dec_label_pc_357d1, %dec_label_pc_35801
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = call ptr @malloc(i32 40)
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq ptr %7, null
  %10 = icmp eq i1 %9, false
  br i1 %6, label %dec_label_pc_358fd, label %dec_label_pc_3583e

dec_label_pc_3583e:                               ; preds = %dec_label_pc_3582c
  store i64 0, ptr %indvars.iv15.reg2mem, align 8
  br i1 %10, label %dec_label_pc_35866, label %dec_label_pc_35853

dec_label_pc_35853:                               ; preds = %dec_label_pc_3583e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_35866:                               ; preds = %dec_label_pc_3583e, %dec_label_pc_35866
  %indvars.iv15.reload = load i64, ptr %indvars.iv15.reg2mem, align 8
  %11 = mul i64 %indvars.iv15.reload, 4
  %12 = add i64 %11, %8
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 10
  store i64 %indvars.iv.next16, ptr %indvars.iv15.reg2mem, align 8
  br i1 %exitcond17, label %dec_label_pc_3588a, label %dec_label_pc_35866

dec_label_pc_3588a:                               ; preds = %dec_label_pc_35866
  %14 = icmp slt i32 %stack_var_-44.0.reload, 0
  br i1 %14, label %dec_label_pc_358dd, label %dec_label_pc_35891

dec_label_pc_35891:                               ; preds = %dec_label_pc_3588a
  %15 = sext i32 %stack_var_-44.0.reload to i64
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %8
  %18 = inttoptr i64 %17 to ptr
  store i32 1, ptr %18, align 4
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br label %dec_label_pc_358b4

dec_label_pc_358b4:                               ; preds = %dec_label_pc_358b4, %dec_label_pc_35891
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %19 = mul i64 %indvars.iv12.reload, 4
  %20 = add i64 %19, %8
  %21 = inttoptr i64 %20 to ptr
  %22 = load i32, ptr %21, align 4
  call void @printIntLine(i32 %22)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_358ec, label %dec_label_pc_358b4

dec_label_pc_358dd:                               ; preds = %dec_label_pc_3588a
  call void @printLine(ptr @global_var_b6390)
  br label %dec_label_pc_358ec

dec_label_pc_358ec:                               ; preds = %dec_label_pc_358b4, %dec_label_pc_358dd
  call void @free(ptr %7)
  br label %dec_label_pc_359bf

dec_label_pc_358fd:                               ; preds = %dec_label_pc_3582c
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %10, label %dec_label_pc_35925, label %dec_label_pc_35912

dec_label_pc_35912:                               ; preds = %dec_label_pc_358fd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_35925:                               ; preds = %dec_label_pc_358fd, %dec_label_pc_35925
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %23 = mul i64 %indvars.iv9.reload, 4
  %24 = add i64 %23, %8
  %25 = inttoptr i64 %24 to ptr
  store i32 0, ptr %25, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_35949, label %dec_label_pc_35925

dec_label_pc_35949:                               ; preds = %dec_label_pc_35925
  %26 = icmp slt i32 %stack_var_-44.0.reload, 0
  br i1 %26, label %dec_label_pc_359a4, label %dec_label_pc_35958

dec_label_pc_35958:                               ; preds = %dec_label_pc_35949
  %27 = sext i32 %stack_var_-44.0.reload to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %28, %8
  %30 = inttoptr i64 %29 to ptr
  store i32 1, ptr %30, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3597b

dec_label_pc_3597b:                               ; preds = %dec_label_pc_3597b, %dec_label_pc_35958
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %31 = mul i64 %indvars.iv.reload, 4
  %32 = add i64 %31, %8
  %33 = inttoptr i64 %32 to ptr
  %34 = load i32, ptr %33, align 4
  call void @printIntLine(i32 %34)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_359b3, label %dec_label_pc_3597b

dec_label_pc_359a4:                               ; preds = %dec_label_pc_35949
  call void @printLine(ptr @global_var_b63b0)
  br label %dec_label_pc_359b3

dec_label_pc_359b3:                               ; preds = %dec_label_pc_3597b, %dec_label_pc_359a4
  call void @free(ptr %7)
  br label %dec_label_pc_359bf

dec_label_pc_359bf:                               ; preds = %dec_label_pc_359b3, %dec_label_pc_358ec
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  br i1 %36, label %dec_label_pc_359d4, label %dec_label_pc_359cf

dec_label_pc_359cf:                               ; preds = %dec_label_pc_359bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_359d4

dec_label_pc_359d4:                               ; preds = %dec_label_pc_359cf, %dec_label_pc_359bf
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

