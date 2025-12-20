@global_var_b47d0 = external constant [10 x i8]
@global_var_b47e0 = external constant [32 x i8]
@global_var_b4800 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1c9fa:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %indvars.iv15.reg2mem = alloca i64, align 8
  %indvars.iv18.reg2mem = alloca i64, align 8
  %stack_var_-92.1.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1cb0c, label %dec_label_pc_1ca2e

dec_label_pc_1ca2e:                               ; preds = %dec_label_pc_1c9fa
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_1cb0c, label %dec_label_pc_1ca56

dec_label_pc_1ca56:                               ; preds = %dec_label_pc_1ca2e
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_b47d0)
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1caf9, label %dec_label_pc_1caad

dec_label_pc_1caad:                               ; preds = %dec_label_pc_1ca56
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1caf9, label %dec_label_pc_1cad4

dec_label_pc_1cad4:                               ; preds = %dec_label_pc_1caad
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_1caf9

dec_label_pc_1caf9:                               ; preds = %dec_label_pc_1ca56, %dec_label_pc_1cad4, %dec_label_pc_1caad
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.1.reg2mem, align 4
  br label %dec_label_pc_1cb0c

dec_label_pc_1cb0c:                               ; preds = %dec_label_pc_1ca2e, %dec_label_pc_1c9fa, %dec_label_pc_1caf9
  %stack_var_-92.1.reload = load i32, ptr %stack_var_-92.1.reg2mem, align 4
  %22 = call i32 @globalReturnsTrueOrFalse()
  %23 = icmp eq i32 %22, 0
  %24 = call ptr @malloc(i32 40)
  %25 = ptrtoint ptr %24 to i64
  %26 = icmp eq ptr %24, null
  %27 = icmp eq i1 %26, false
  br i1 %23, label %dec_label_pc_1cbdc, label %dec_label_pc_1cb1e

dec_label_pc_1cb1e:                               ; preds = %dec_label_pc_1cb0c
  store i64 0, ptr %indvars.iv18.reg2mem, align 8
  br i1 %27, label %dec_label_pc_1cb46, label %dec_label_pc_1cb33

dec_label_pc_1cb33:                               ; preds = %dec_label_pc_1cb1e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1cb46:                               ; preds = %dec_label_pc_1cb1e, %dec_label_pc_1cb46
  %indvars.iv18.reload = load i64, ptr %indvars.iv18.reg2mem, align 8
  %28 = mul i64 %indvars.iv18.reload, 4
  %29 = add i64 %28, %25
  %30 = inttoptr i64 %29 to ptr
  store i32 0, ptr %30, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18.reload, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 10
  store i64 %indvars.iv.next19, ptr %indvars.iv18.reg2mem, align 8
  br i1 %exitcond20, label %dec_label_pc_1cb6a, label %dec_label_pc_1cb46

dec_label_pc_1cb6a:                               ; preds = %dec_label_pc_1cb46
  %31 = icmp slt i32 %stack_var_-92.1.reload, 0
  br i1 %31, label %dec_label_pc_1cbbc, label %dec_label_pc_1cb70

dec_label_pc_1cb70:                               ; preds = %dec_label_pc_1cb6a
  %32 = sext i32 %stack_var_-92.1.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %33, %25
  %35 = inttoptr i64 %34 to ptr
  store i32 1, ptr %35, align 4
  store i64 0, ptr %indvars.iv15.reg2mem, align 8
  br label %dec_label_pc_1cb93

dec_label_pc_1cb93:                               ; preds = %dec_label_pc_1cb93, %dec_label_pc_1cb70
  %indvars.iv15.reload = load i64, ptr %indvars.iv15.reg2mem, align 8
  %36 = mul i64 %indvars.iv15.reload, 4
  %37 = add i64 %36, %25
  %38 = inttoptr i64 %37 to ptr
  %39 = load i32, ptr %38, align 4
  call void @printIntLine(i32 %39)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 10
  store i64 %indvars.iv.next16, ptr %indvars.iv15.reg2mem, align 8
  br i1 %exitcond17, label %dec_label_pc_1cbcb, label %dec_label_pc_1cb93

dec_label_pc_1cbbc:                               ; preds = %dec_label_pc_1cb6a
  call void @printLine(ptr @global_var_b47e0)
  br label %dec_label_pc_1cbcb

dec_label_pc_1cbcb:                               ; preds = %dec_label_pc_1cb93, %dec_label_pc_1cbbc
  call void @free(ptr %24)
  br label %dec_label_pc_1cc9b

dec_label_pc_1cbdc:                               ; preds = %dec_label_pc_1cb0c
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br i1 %27, label %dec_label_pc_1cc04, label %dec_label_pc_1cbf1

dec_label_pc_1cbf1:                               ; preds = %dec_label_pc_1cbdc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1cc04:                               ; preds = %dec_label_pc_1cbdc, %dec_label_pc_1cc04
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %40 = mul i64 %indvars.iv12.reload, 4
  %41 = add i64 %40, %25
  %42 = inttoptr i64 %41 to ptr
  store i32 0, ptr %42, align 4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_1cc28, label %dec_label_pc_1cc04

dec_label_pc_1cc28:                               ; preds = %dec_label_pc_1cc04
  %43 = icmp ugt i32 %stack_var_-92.1.reload, 9
  br i1 %43, label %dec_label_pc_1cc80, label %dec_label_pc_1cc34

dec_label_pc_1cc34:                               ; preds = %dec_label_pc_1cc28
  %44 = sext i32 %stack_var_-92.1.reload to i64
  %45 = mul i64 %44, 4
  %46 = add i64 %45, %25
  %47 = inttoptr i64 %46 to ptr
  store i32 1, ptr %47, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1cc57

dec_label_pc_1cc57:                               ; preds = %dec_label_pc_1cc57, %dec_label_pc_1cc34
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %48 = mul i64 %indvars.iv.reload, 4
  %49 = add i64 %48, %25
  %50 = inttoptr i64 %49 to ptr
  %51 = load i32, ptr %50, align 4
  call void @printIntLine(i32 %51)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1cc8f, label %dec_label_pc_1cc57

dec_label_pc_1cc80:                               ; preds = %dec_label_pc_1cc28
  call void @printLine(ptr @global_var_b4800)
  br label %dec_label_pc_1cc8f

dec_label_pc_1cc8f:                               ; preds = %dec_label_pc_1cc57, %dec_label_pc_1cc80
  call void @free(ptr %24)
  br label %dec_label_pc_1cc9b

dec_label_pc_1cc9b:                               ; preds = %dec_label_pc_1cc8f, %dec_label_pc_1cbcb
  %52 = call i64 @__readfsqword(i64 40)
  %53 = icmp eq i64 %0, %52
  br i1 %53, label %dec_label_pc_1ccb0, label %dec_label_pc_1ccab

dec_label_pc_1ccab:                               ; preds = %dec_label_pc_1cc9b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ccb0

dec_label_pc_1ccb0:                               ; preds = %dec_label_pc_1ccab, %dec_label_pc_1cc9b
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

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

