@global_var_ac78c = external constant [3 x i8]
@global_var_ac7b0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3e470:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_ac78c, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = and i64 %3, 4294967295
  %5 = call i64 @anon1(i64 %4)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3e4d9, label %dec_label_pc_3e4d4

dec_label_pc_3e4d4:                               ; preds = %dec_label_pc_3e470
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3e4d9

dec_label_pc_3e4d9:                               ; preds = %dec_label_pc_3e4d4, %dec_label_pc_3e470
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3e67e:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_3e6aa

dec_label_pc_3e6aa:                               ; preds = %dec_label_pc_3e6aa, %dec_label_pc_3e67e
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %3 = mul i64 %indvars.iv6.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_3e6ce, label %dec_label_pc_3e6aa

dec_label_pc_3e6ce:                               ; preds = %dec_label_pc_3e6aa
  %6 = trunc i64 %arg1 to i32
  %7 = icmp ugt i32 %6, 9
  br i1 %7, label %dec_label_pc_3e726, label %dec_label_pc_3e6da

dec_label_pc_3e6da:                               ; preds = %dec_label_pc_3e6ce
  %sext = mul i64 %arg1, 4294967296
  %8 = ashr exact i64 %sext, 30
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3e6fd

dec_label_pc_3e6fd:                               ; preds = %dec_label_pc_3e6fd, %dec_label_pc_3e6da
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e735, label %dec_label_pc_3e6fd

dec_label_pc_3e726:                               ; preds = %dec_label_pc_3e6ce
  call void @printLine(ptr @global_var_ac7b0)
  br label %dec_label_pc_3e735

dec_label_pc_3e735:                               ; preds = %dec_label_pc_3e6fd, %dec_label_pc_3e726
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_3e748, label %dec_label_pc_3e73c

dec_label_pc_3e73c:                               ; preds = %dec_label_pc_3e735
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_3e748

dec_label_pc_3e748:                               ; preds = %dec_label_pc_3e73c, %dec_label_pc_3e735
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

