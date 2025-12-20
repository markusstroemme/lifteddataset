@global_var_a9268 = external constant [10 x i8]
@global_var_a9298 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_13c02:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv19.reg2mem = alloca i64, align 8
  %indvars.iv22.reg2mem = alloca i64, align 8
  %indvars.iv25.reg2mem = alloca i64, align 8
  %rsi.2.reg2mem = alloca i64, align 8
  %stack_var_-100.2.reg2mem = alloca i32, align 4
  %rsi.1.ph.reg2mem = alloca i64, align 8
  %stack_var_-100.1.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-100.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = call i32 @socket(i32 2, i32 1, i32 6)
  %7 = icmp eq i32 %6, -1
  br i1 %5, label %dec_label_pc_13d19, label %dec_label_pc_13c36

dec_label_pc_13c36:                               ; preds = %dec_label_pc_13c02
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  store i64 1, ptr %rsi.2.reg2mem, align 8
  br i1 %7, label %dec_label_pc_13df3, label %dec_label_pc_13c5e

dec_label_pc_13c5e:                               ; preds = %dec_label_pc_13c36
  %8 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %9 = call i32 @inet_addr(ptr @global_var_a9268)
  %10 = call i16 @htons(i16 27015)
  %11 = ptrtoint ptr %stack_var_-56 to i64
  %12 = bitcast ptr %stack_var_-56 to ptr
  %13 = call i32 @connect(i32 %6, ptr nonnull %12, i32 16)
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq i1 %14, false
  %16 = icmp eq i1 %15, false
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  store i64 %11, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %16, label %dec_label_pc_13d0a, label %dec_label_pc_13cba

dec_label_pc_13cba:                               ; preds = %dec_label_pc_13c5e
  %17 = ptrtoint ptr %stack_var_-30 to i64
  %18 = call i32 @recv(i32 %6, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %19 = add i32 %18, 1
  %20 = icmp ult i32 %19, 2
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  store i64 %17, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %20, label %dec_label_pc_13d0a, label %dec_label_pc_13ce1

dec_label_pc_13ce1:                               ; preds = %dec_label_pc_13cba
  %21 = sext i32 %18 to i64
  %22 = add i64 %0, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %stack_var_-100.0.ph.reg2mem, align 4
  store i64 %17, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_13d0a

dec_label_pc_13d0a:                               ; preds = %dec_label_pc_13c5e, %dec_label_pc_13ce1, %dec_label_pc_13cba
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-100.0.ph.reload = load i32, ptr %stack_var_-100.0.ph.reg2mem, align 4
  %27 = call i32 @close(i32 %6)
  store i32 %stack_var_-100.0.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_13df3

dec_label_pc_13d19:                               ; preds = %dec_label_pc_13c02
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  store i64 1, ptr %rsi.2.reg2mem, align 8
  br i1 %7, label %dec_label_pc_13df3, label %dec_label_pc_13d41

dec_label_pc_13d41:                               ; preds = %dec_label_pc_13d19
  %28 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %29 = call i32 @inet_addr(ptr @global_var_a9268)
  %30 = call i16 @htons(i16 27015)
  %31 = ptrtoint ptr %stack_var_-56 to i64
  %32 = bitcast ptr %stack_var_-56 to ptr
  %33 = call i32 @connect(i32 %6, ptr nonnull %32, i32 16)
  %34 = icmp eq i32 %33, -1
  %35 = icmp eq i1 %34, false
  %36 = icmp eq i1 %35, false
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  store i64 %31, ptr %rsi.1.ph.reg2mem, align 8
  br i1 %36, label %dec_label_pc_13de9, label %dec_label_pc_13d9d

dec_label_pc_13d9d:                               ; preds = %dec_label_pc_13d41
  %37 = ptrtoint ptr %stack_var_-30 to i64
  %38 = call i32 @recv(i32 %6, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %39 = add i32 %38, 1
  %40 = icmp ult i32 %39, 2
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  store i64 %37, ptr %rsi.1.ph.reg2mem, align 8
  br i1 %40, label %dec_label_pc_13de9, label %dec_label_pc_13dc4

dec_label_pc_13dc4:                               ; preds = %dec_label_pc_13d9d
  %41 = sext i32 %38 to i64
  %42 = add i64 %0, -22
  %43 = add i64 %42, %41
  %44 = inttoptr i64 %43 to ptr
  store i8 0, ptr %44, align 1
  %45 = bitcast ptr %stack_var_-30 to ptr
  %46 = call i32 @atoi(ptr nonnull %45)
  store i32 %46, ptr %stack_var_-100.1.ph.reg2mem, align 4
  store i64 %37, ptr %rsi.1.ph.reg2mem, align 8
  br label %dec_label_pc_13de9

dec_label_pc_13de9:                               ; preds = %dec_label_pc_13d41, %dec_label_pc_13dc4, %dec_label_pc_13d9d
  %rsi.1.ph.reload = load i64, ptr %rsi.1.ph.reg2mem, align 8
  %stack_var_-100.1.ph.reload = load i32, ptr %stack_var_-100.1.ph.reg2mem, align 4
  %47 = call i32 @close(i32 %6)
  store i32 %stack_var_-100.1.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  store i64 %rsi.1.ph.reload, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_13df3

dec_label_pc_13df3:                               ; preds = %dec_label_pc_13d19, %dec_label_pc_13c36, %dec_label_pc_13de9, %dec_label_pc_13d0a
  %rsi.2.reload = load i64, ptr %rsi.2.reg2mem, align 8
  %stack_var_-100.2.reload = load i32, ptr %stack_var_-100.2.reg2mem, align 4
  %48 = call i32 @globalReturnsTrueOrFalse()
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i1 %49, false
  %51 = icmp eq i1 %50, false
  %52 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv25.reg2mem, align 8
  store i64 0, ptr %indvars.iv19.reg2mem, align 8
  br i1 %51, label %dec_label_pc_13eda, label %dec_label_pc_13e1c

dec_label_pc_13e1c:                               ; preds = %dec_label_pc_13df3, %dec_label_pc_13e1c
  %indvars.iv25.reload = load i64, ptr %indvars.iv25.reg2mem, align 8
  %53 = mul i64 %indvars.iv25.reload, 4
  %54 = add i64 %53, %52
  %55 = inttoptr i64 %54 to ptr
  store i32 0, ptr %55, align 4
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25.reload, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 10
  store i64 %indvars.iv.next26, ptr %indvars.iv25.reg2mem, align 8
  br i1 %exitcond27, label %dec_label_pc_13e40, label %dec_label_pc_13e1c

dec_label_pc_13e40:                               ; preds = %dec_label_pc_13e1c
  %56 = icmp ugt i32 %stack_var_-100.2.reload, 9
  br i1 %56, label %dec_label_pc_13e98, label %dec_label_pc_13e4c

dec_label_pc_13e4c:                               ; preds = %dec_label_pc_13e40
  %57 = sext i32 %stack_var_-100.2.reload to i64
  %58 = mul i64 %57, 4
  %59 = add i64 %52, %58
  %60 = inttoptr i64 %59 to ptr
  store i32 1, ptr %60, align 4
  store i64 0, ptr %indvars.iv22.reg2mem, align 8
  br label %dec_label_pc_13e6f

dec_label_pc_13e6f:                               ; preds = %dec_label_pc_13e6f, %dec_label_pc_13e4c
  %indvars.iv22.reload = load i64, ptr %indvars.iv22.reg2mem, align 8
  %61 = mul i64 %indvars.iv22.reload, 4
  %62 = add i64 %61, %52
  %63 = inttoptr i64 %62 to ptr
  %64 = load i32, ptr %63, align 4
  call void @printIntLine(i32 %64)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22.reload, 1
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 10
  store i64 %indvars.iv.next23, ptr %indvars.iv22.reg2mem, align 8
  br i1 %exitcond24, label %dec_label_pc_13ea7, label %dec_label_pc_13e6f

dec_label_pc_13e98:                               ; preds = %dec_label_pc_13e40
  call void @printLine(ptr @global_var_a9298)
  br label %dec_label_pc_13ea7

dec_label_pc_13ea7:                               ; preds = %dec_label_pc_13e6f, %dec_label_pc_13e98
  %65 = icmp eq i64 %52, 0
  br i1 %65, label %dec_label_pc_13f78, label %dec_label_pc_13eb2

dec_label_pc_13eb2:                               ; preds = %dec_label_pc_13ea7
  %66 = inttoptr i64 %52 to ptr
  %67 = and i64 %rsi.2.reload, 4294967295
  %68 = inttoptr i64 %67 to ptr
  call void @_ZdaPv(ptr %66, ptr %68)
  br label %dec_label_pc_13f78

dec_label_pc_13eda:                               ; preds = %dec_label_pc_13df3, %dec_label_pc_13eda
  %indvars.iv19.reload = load i64, ptr %indvars.iv19.reg2mem, align 8
  %69 = mul i64 %indvars.iv19.reload, 4
  %70 = add i64 %69, %52
  %71 = inttoptr i64 %70 to ptr
  store i32 0, ptr %71, align 4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19.reload, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 10
  store i64 %indvars.iv.next20, ptr %indvars.iv19.reg2mem, align 8
  br i1 %exitcond21, label %dec_label_pc_13efe, label %dec_label_pc_13eda

dec_label_pc_13efe:                               ; preds = %dec_label_pc_13eda
  %72 = icmp ugt i32 %stack_var_-100.2.reload, 9
  br i1 %72, label %dec_label_pc_13f56, label %dec_label_pc_13f0a

dec_label_pc_13f0a:                               ; preds = %dec_label_pc_13efe
  %73 = sext i32 %stack_var_-100.2.reload to i64
  %74 = mul i64 %73, 4
  %75 = add i64 %52, %74
  %76 = inttoptr i64 %75 to ptr
  store i32 1, ptr %76, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_13f2d

dec_label_pc_13f2d:                               ; preds = %dec_label_pc_13f2d, %dec_label_pc_13f0a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %77 = mul i64 %indvars.iv.reload, 4
  %78 = add i64 %77, %52
  %79 = inttoptr i64 %78 to ptr
  %80 = load i32, ptr %79, align 4
  call void @printIntLine(i32 %80)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_13f65, label %dec_label_pc_13f2d

dec_label_pc_13f56:                               ; preds = %dec_label_pc_13efe
  call void @printLine(ptr @global_var_a9298)
  br label %dec_label_pc_13f65

dec_label_pc_13f65:                               ; preds = %dec_label_pc_13f2d, %dec_label_pc_13f56
  %81 = icmp eq i64 %52, 0
  br i1 %81, label %dec_label_pc_13f78, label %dec_label_pc_13f6c

dec_label_pc_13f6c:                               ; preds = %dec_label_pc_13f65
  %82 = inttoptr i64 %52 to ptr
  %83 = and i64 %rsi.2.reload, 4294967295
  %84 = inttoptr i64 %83 to ptr
  call void @_ZdaPv(ptr %82, ptr %84)
  br label %dec_label_pc_13f78

dec_label_pc_13f78:                               ; preds = %dec_label_pc_13f6c, %dec_label_pc_13f65, %dec_label_pc_13eb2, %dec_label_pc_13ea7
  %85 = call i64 @__readfsqword(i64 40)
  %86 = icmp eq i64 %1, %85
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %86, label %dec_label_pc_13f8d, label %dec_label_pc_13f88

dec_label_pc_13f88:                               ; preds = %dec_label_pc_13f78
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_13f8d

dec_label_pc_13f8d:                               ; preds = %dec_label_pc_13f88, %dec_label_pc_13f78
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

