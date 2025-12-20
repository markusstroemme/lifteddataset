@global_var_afd28 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_67256:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i32 @rand()
  %8 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_67304

dec_label_pc_67304:                               ; preds = %dec_label_pc_67304, %dec_label_pc_67256
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %9 = mul i64 %indvars.iv7.reload, 4
  %10 = add i64 %9, %8
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_67328, label %dec_label_pc_67304

dec_label_pc_67328:                               ; preds = %dec_label_pc_67304
  %12 = icmp eq i32 %4, 0
  %13 = mul i32 %6, 32768
  %14 = sext i1 %12 to i32
  %15 = mul i32 %5, 1073741824
  %16 = xor i32 %13, %15
  %17 = xor i32 %16, %7
  %storemerge4.in = xor i32 %17, %14
  %18 = icmp slt i32 %storemerge4.in, 0
  br i1 %18, label %dec_label_pc_6737a, label %dec_label_pc_6732e

dec_label_pc_6732e:                               ; preds = %dec_label_pc_67328
  %19 = sext i32 %storemerge4.in to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %8
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_67351

dec_label_pc_67351:                               ; preds = %dec_label_pc_67351, %dec_label_pc_6732e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %8
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_67389, label %dec_label_pc_67351

dec_label_pc_6737a:                               ; preds = %dec_label_pc_67328
  call void @printLine(ptr @global_var_afd28)
  br label %dec_label_pc_67389

dec_label_pc_67389:                               ; preds = %dec_label_pc_67351, %dec_label_pc_6737a
  %27 = icmp eq i64 %8, 0
  br i1 %27, label %dec_label_pc_6739c, label %dec_label_pc_67390

dec_label_pc_67390:                               ; preds = %dec_label_pc_67389
  %28 = inttoptr i64 %8 to ptr
  %29 = and i64 %1, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  br label %dec_label_pc_6739c

dec_label_pc_6739c:                               ; preds = %dec_label_pc_67390, %dec_label_pc_67389
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %2, %31
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %32, label %dec_label_pc_673b1, label %dec_label_pc_673ac

dec_label_pc_673ac:                               ; preds = %dec_label_pc_6739c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_673b1

dec_label_pc_673b1:                               ; preds = %dec_label_pc_673ac, %dec_label_pc_6739c
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

