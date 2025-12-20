@global_var_aabf4 = external constant [16 x i8]
@global_var_aac28 = external constant [21 x i8]
@global_var_aac40 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc0f8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2bf78:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_2bfe2, label %dec_label_pc_2bfd1

dec_label_pc_2bfd1:                               ; preds = %dec_label_pc_2bf78
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2bff1

dec_label_pc_2bfe2:                               ; preds = %dec_label_pc_2bf78
  call void @printLine(ptr @global_var_aabf4)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2bff1

dec_label_pc_2bff1:                               ; preds = %dec_label_pc_2bfe2, %dec_label_pc_2bfd1
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 0, ptr @global_var_dc0f8, align 4
  %8 = call i64 @anon1(i32 %stack_var_-36.0.reload)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2c01a, label %dec_label_pc_2c015

dec_label_pc_2c015:                               ; preds = %dec_label_pc_2bff1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2c01a

dec_label_pc_2c01a:                               ; preds = %dec_label_pc_2c015, %dec_label_pc_2bff1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_2c1da:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc0f8, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2c207, label %dec_label_pc_2c1f3

dec_label_pc_2c1f3:                               ; preds = %dec_label_pc_2c1da
  call void @printLine(ptr @global_var_aac28)
  br label %dec_label_pc_2c2bc

dec_label_pc_2c207:                               ; preds = %dec_label_pc_2c1da
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_2c21e

dec_label_pc_2c21e:                               ; preds = %dec_label_pc_2c21e, %dec_label_pc_2c207
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2c242, label %dec_label_pc_2c21e

dec_label_pc_2c242:                               ; preds = %dec_label_pc_2c21e
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_2c29a, label %dec_label_pc_2c24e

dec_label_pc_2c24e:                               ; preds = %dec_label_pc_2c242
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2c271

dec_label_pc_2c271:                               ; preds = %dec_label_pc_2c271, %dec_label_pc_2c24e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2c2a9, label %dec_label_pc_2c271

dec_label_pc_2c29a:                               ; preds = %dec_label_pc_2c242
  call void @printLine(ptr @global_var_aac40)
  br label %dec_label_pc_2c2a9

dec_label_pc_2c2a9:                               ; preds = %dec_label_pc_2c271, %dec_label_pc_2c29a
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_2c2bc, label %dec_label_pc_2c2b0

dec_label_pc_2c2b0:                               ; preds = %dec_label_pc_2c2a9
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_2c2bc

dec_label_pc_2c2bc:                               ; preds = %dec_label_pc_2c2b0, %dec_label_pc_2c2a9, %dec_label_pc_2c1f3
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

