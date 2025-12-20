@global_var_b47d0 = external constant [10 x i8]
@global_var_b4800 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1ccb2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %indvars.iv20.reg2mem = alloca i64, align 8
  %indvars.iv23.reg2mem = alloca i64, align 8
  %stack_var_-100.2.reg2mem = alloca i32, align 4
  %stack_var_-100.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-100.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %3, label %dec_label_pc_1cdc4, label %dec_label_pc_1cce6

dec_label_pc_1cce6:                               ; preds = %dec_label_pc_1ccb2
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_1ce99, label %dec_label_pc_1cd0e

dec_label_pc_1cd0e:                               ; preds = %dec_label_pc_1cce6
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b47d0)
  %8 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1cdb5, label %dec_label_pc_1cd65

dec_label_pc_1cd65:                               ; preds = %dec_label_pc_1cd0e
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_1cdb5, label %dec_label_pc_1cd8c

dec_label_pc_1cd8c:                               ; preds = %dec_label_pc_1cd65
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br label %dec_label_pc_1cdb5

dec_label_pc_1cdb5:                               ; preds = %dec_label_pc_1cd0e, %dec_label_pc_1cd8c, %dec_label_pc_1cd65
  %stack_var_-100.0.ph.reload = load i32, ptr %stack_var_-100.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-100.0.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  br label %dec_label_pc_1ce99

dec_label_pc_1cdc4:                               ; preds = %dec_label_pc_1ccb2
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_1ce99, label %dec_label_pc_1cdec

dec_label_pc_1cdec:                               ; preds = %dec_label_pc_1cdc4
  %22 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %23 = call i32 @inet_addr(ptr @global_var_b47d0)
  %24 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %25 = bitcast ptr %stack_var_-56 to ptr
  %26 = call i32 @connect(i32 %4, ptr nonnull %25, i32 16)
  %27 = icmp eq i32 %26, -1
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br i1 %27, label %dec_label_pc_1ce8f, label %dec_label_pc_1ce43

dec_label_pc_1ce43:                               ; preds = %dec_label_pc_1cdec
  %28 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %29 = add i32 %28, 1
  %30 = icmp ult i32 %29, 2
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br i1 %30, label %dec_label_pc_1ce8f, label %dec_label_pc_1ce6a

dec_label_pc_1ce6a:                               ; preds = %dec_label_pc_1ce43
  %31 = sext i32 %28 to i64
  %32 = add i64 %0, -22
  %33 = add i64 %32, %31
  %34 = inttoptr i64 %33 to ptr
  store i8 0, ptr %34, align 1
  %35 = bitcast ptr %stack_var_-30 to ptr
  %36 = call i32 @atoi(ptr nonnull %35)
  store i32 %36, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br label %dec_label_pc_1ce8f

dec_label_pc_1ce8f:                               ; preds = %dec_label_pc_1cdec, %dec_label_pc_1ce6a, %dec_label_pc_1ce43
  %stack_var_-100.1.ph.reload = load i32, ptr %stack_var_-100.1.ph.reg2mem, align 4
  %37 = call i32 @close(i32 %4)
  store i32 %stack_var_-100.1.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  br label %dec_label_pc_1ce99

dec_label_pc_1ce99:                               ; preds = %dec_label_pc_1cdc4, %dec_label_pc_1cce6, %dec_label_pc_1ce8f, %dec_label_pc_1cdb5
  %stack_var_-100.2.reload = load i32, ptr %stack_var_-100.2.reg2mem, align 4
  %38 = call i32 @globalReturnsTrueOrFalse()
  %39 = icmp eq i32 %38, 0
  %40 = call ptr @malloc(i32 40)
  %41 = ptrtoint ptr %40 to i64
  %42 = icmp eq ptr %40, null
  %43 = icmp eq i1 %42, false
  br i1 %39, label %dec_label_pc_1cf6f, label %dec_label_pc_1ceab

dec_label_pc_1ceab:                               ; preds = %dec_label_pc_1ce99
  store i64 0, ptr %indvars.iv23.reg2mem, align 8
  br i1 %43, label %dec_label_pc_1ced3, label %dec_label_pc_1cec0

dec_label_pc_1cec0:                               ; preds = %dec_label_pc_1ceab
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1ced3:                               ; preds = %dec_label_pc_1ceab, %dec_label_pc_1ced3
  %indvars.iv23.reload = load i64, ptr %indvars.iv23.reg2mem, align 8
  %44 = mul i64 %indvars.iv23.reload, 4
  %45 = add i64 %44, %41
  %46 = inttoptr i64 %45 to ptr
  store i32 0, ptr %46, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23.reload, 1
  %exitcond25 = icmp eq i64 %indvars.iv.next24, 10
  store i64 %indvars.iv.next24, ptr %indvars.iv23.reg2mem, align 8
  br i1 %exitcond25, label %dec_label_pc_1cef7, label %dec_label_pc_1ced3

dec_label_pc_1cef7:                               ; preds = %dec_label_pc_1ced3
  %47 = icmp ugt i32 %stack_var_-100.2.reload, 9
  br i1 %47, label %dec_label_pc_1cf4f, label %dec_label_pc_1cf03

dec_label_pc_1cf03:                               ; preds = %dec_label_pc_1cef7
  %48 = sext i32 %stack_var_-100.2.reload to i64
  %49 = mul i64 %48, 4
  %50 = add i64 %49, %41
  %51 = inttoptr i64 %50 to ptr
  store i32 1, ptr %51, align 4
  store i64 0, ptr %indvars.iv20.reg2mem, align 8
  br label %dec_label_pc_1cf26

dec_label_pc_1cf26:                               ; preds = %dec_label_pc_1cf26, %dec_label_pc_1cf03
  %indvars.iv20.reload = load i64, ptr %indvars.iv20.reg2mem, align 8
  %52 = mul i64 %indvars.iv20.reload, 4
  %53 = add i64 %52, %41
  %54 = inttoptr i64 %53 to ptr
  %55 = load i32, ptr %54, align 4
  call void @printIntLine(i32 %55)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20.reload, 1
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 10
  store i64 %indvars.iv.next21, ptr %indvars.iv20.reg2mem, align 8
  br i1 %exitcond22, label %dec_label_pc_1cf5e, label %dec_label_pc_1cf26

dec_label_pc_1cf4f:                               ; preds = %dec_label_pc_1cef7
  call void @printLine(ptr @global_var_b4800)
  br label %dec_label_pc_1cf5e

dec_label_pc_1cf5e:                               ; preds = %dec_label_pc_1cf26, %dec_label_pc_1cf4f
  call void @free(ptr %40)
  br label %dec_label_pc_1d02e

dec_label_pc_1cf6f:                               ; preds = %dec_label_pc_1ce99
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  br i1 %43, label %dec_label_pc_1cf97, label %dec_label_pc_1cf84

dec_label_pc_1cf84:                               ; preds = %dec_label_pc_1cf6f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1cf97:                               ; preds = %dec_label_pc_1cf6f, %dec_label_pc_1cf97
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %56 = mul i64 %indvars.iv17.reload, 4
  %57 = add i64 %56, %41
  %58 = inttoptr i64 %57 to ptr
  store i32 0, ptr %58, align 4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_1cfbb, label %dec_label_pc_1cf97

dec_label_pc_1cfbb:                               ; preds = %dec_label_pc_1cf97
  %59 = icmp ugt i32 %stack_var_-100.2.reload, 9
  br i1 %59, label %dec_label_pc_1d013, label %dec_label_pc_1cfc7

dec_label_pc_1cfc7:                               ; preds = %dec_label_pc_1cfbb
  %60 = sext i32 %stack_var_-100.2.reload to i64
  %61 = mul i64 %60, 4
  %62 = add i64 %61, %41
  %63 = inttoptr i64 %62 to ptr
  store i32 1, ptr %63, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1cfea

dec_label_pc_1cfea:                               ; preds = %dec_label_pc_1cfea, %dec_label_pc_1cfc7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %64 = mul i64 %indvars.iv.reload, 4
  %65 = add i64 %64, %41
  %66 = inttoptr i64 %65 to ptr
  %67 = load i32, ptr %66, align 4
  call void @printIntLine(i32 %67)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d022, label %dec_label_pc_1cfea

dec_label_pc_1d013:                               ; preds = %dec_label_pc_1cfbb
  call void @printLine(ptr @global_var_b4800)
  br label %dec_label_pc_1d022

dec_label_pc_1d022:                               ; preds = %dec_label_pc_1cfea, %dec_label_pc_1d013
  call void @free(ptr %40)
  br label %dec_label_pc_1d02e

dec_label_pc_1d02e:                               ; preds = %dec_label_pc_1d022, %dec_label_pc_1cf5e
  %68 = call i64 @__readfsqword(i64 40)
  %69 = icmp eq i64 %1, %68
  br i1 %69, label %dec_label_pc_1d043, label %dec_label_pc_1d03e

dec_label_pc_1d03e:                               ; preds = %dec_label_pc_1d02e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d043

dec_label_pc_1d043:                               ; preds = %dec_label_pc_1d03e, %dec_label_pc_1d02e
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

