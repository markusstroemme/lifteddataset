@global_var_afeb0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_6865f:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %11 = ptrtoint ptr %arg1 to i64
  store i32 %storemerge.in, ptr %arg1, align 4
  ret i64 %11
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_686c7:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-32 = alloca i32, align 4
  %2 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %3 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_6870c

dec_label_pc_6870c:                               ; preds = %dec_label_pc_6870c, %dec_label_pc_686c7
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_68730, label %dec_label_pc_6870c

dec_label_pc_68730:                               ; preds = %dec_label_pc_6870c
  %8 = load i32, ptr %stack_var_-32, align 4
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %dec_label_pc_6878b, label %dec_label_pc_6873f

dec_label_pc_6873f:                               ; preds = %dec_label_pc_68730
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_68762

dec_label_pc_68762:                               ; preds = %dec_label_pc_68762, %dec_label_pc_6873f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6879a, label %dec_label_pc_68762

dec_label_pc_6878b:                               ; preds = %dec_label_pc_68730
  call void @printLine(ptr @global_var_afeb0)
  br label %dec_label_pc_6879a

dec_label_pc_6879a:                               ; preds = %dec_label_pc_68762, %dec_label_pc_6878b
  %18 = icmp eq i64 %4, 0
  br i1 %18, label %dec_label_pc_687ad, label %dec_label_pc_687a1

dec_label_pc_687a1:                               ; preds = %dec_label_pc_6879a
  %19 = inttoptr i64 %4 to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_687ad

dec_label_pc_687ad:                               ; preds = %dec_label_pc_687a1, %dec_label_pc_6879a
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_687c2, label %dec_label_pc_687bd

dec_label_pc_687bd:                               ; preds = %dec_label_pc_687ad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_687c2

dec_label_pc_687c2:                               ; preds = %dec_label_pc_687bd, %dec_label_pc_687ad
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

