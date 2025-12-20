@global_var_b4f2e = external constant [10 x i8]
@global_var_b4f58 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon1() local_unnamed_addr {
dec_label_pc_24417:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-68 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-68, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_2450e, label %dec_label_pc_24461

dec_label_pc_24461:                               ; preds = %dec_label_pc_24417
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b4f2e)
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_24504, label %dec_label_pc_244b8

dec_label_pc_244b8:                               ; preds = %dec_label_pc_24461
  %8 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %dec_label_pc_24504, label %dec_label_pc_244df

dec_label_pc_244df:                               ; preds = %dec_label_pc_244b8
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %8 to i64
  %13 = add i64 %11, -22
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = bitcast ptr %stack_var_-30 to ptr
  %17 = call i32 @atoi(ptr nonnull %16)
  store i32 %17, ptr %stack_var_-68, align 4
  br label %dec_label_pc_24504

dec_label_pc_24504:                               ; preds = %dec_label_pc_244b8, %dec_label_pc_244df, %dec_label_pc_24461
  %18 = call i32 @close(i32 %1)
  br label %dec_label_pc_2450e

dec_label_pc_2450e:                               ; preds = %dec_label_pc_24417, %dec_label_pc_24504
  call void @anon0(ptr nonnull %stack_var_-68)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_2452f, label %dec_label_pc_2452a

dec_label_pc_2452a:                               ; preds = %dec_label_pc_2450e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2452f

dec_label_pc_2452f:                               ; preds = %dec_label_pc_2452a, %dec_label_pc_2450e
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_246fa:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2473b, label %dec_label_pc_24728

dec_label_pc_24728:                               ; preds = %dec_label_pc_246fa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2473b:                               ; preds = %dec_label_pc_246fa, %dec_label_pc_2473b
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2475f, label %dec_label_pc_2473b

dec_label_pc_2475f:                               ; preds = %dec_label_pc_2473b
  %10 = icmp ugt i32 %2, 9
  br i1 %10, label %dec_label_pc_247b7, label %dec_label_pc_2476b

dec_label_pc_2476b:                               ; preds = %dec_label_pc_2475f
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2478e

dec_label_pc_2478e:                               ; preds = %dec_label_pc_2478e, %dec_label_pc_2476b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_247c6, label %dec_label_pc_2478e

dec_label_pc_247b7:                               ; preds = %dec_label_pc_2475f
  call void @printLine(ptr @global_var_b4f58)
  br label %dec_label_pc_247c6

dec_label_pc_247c6:                               ; preds = %dec_label_pc_2478e, %dec_label_pc_247b7
  call void @free(ptr %3)
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

