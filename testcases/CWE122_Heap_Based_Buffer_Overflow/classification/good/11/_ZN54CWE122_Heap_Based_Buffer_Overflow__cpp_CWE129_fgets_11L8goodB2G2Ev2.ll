@global_var_aa880 = external constant [16 x i8]
@global_var_aa8c8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_292e1:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %4, label %dec_label_pc_29368, label %dec_label_pc_29311

dec_label_pc_29311:                               ; preds = %dec_label_pc_292e1
  store i64 0, ptr %stack_var_-30, align 8
  %5 = load ptr, ptr @global_var_dc090, align 8
  %6 = bitcast ptr %stack_var_-30 to ptr
  %7 = call ptr @fgets(ptr nonnull %6, i32 14, ptr %5)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_29359, label %dec_label_pc_29348

dec_label_pc_29348:                               ; preds = %dec_label_pc_29311
  %11 = call i32 @atoi(ptr nonnull %6)
  store i32 %11, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_29368

dec_label_pc_29359:                               ; preds = %dec_label_pc_29311
  call void @printLine(ptr @global_var_aa880)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_29368

dec_label_pc_29368:                               ; preds = %dec_label_pc_29359, %dec_label_pc_29348, %dec_label_pc_292e1
  %12 = call i32 @globalReturnsTrue()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i1 %13, false
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_2942f, label %dec_label_pc_2937a

dec_label_pc_2937a:                               ; preds = %dec_label_pc_29368
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %16 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_29391

dec_label_pc_29391:                               ; preds = %dec_label_pc_29391, %dec_label_pc_2937a
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %17 = mul i64 %indvars.iv5.reload, 4
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_293b5, label %dec_label_pc_29391

dec_label_pc_293b5:                               ; preds = %dec_label_pc_29391
  %20 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %20, label %dec_label_pc_2940d, label %dec_label_pc_293c1

dec_label_pc_293c1:                               ; preds = %dec_label_pc_293b5
  %21 = sext i32 %stack_var_-48.0.reload to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %16, %22
  %24 = inttoptr i64 %23 to ptr
  store i32 1, ptr %24, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_293e4

dec_label_pc_293e4:                               ; preds = %dec_label_pc_293e4, %dec_label_pc_293c1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %25 = mul i64 %indvars.iv.reload, 4
  %26 = add i64 %25, %16
  %27 = inttoptr i64 %26 to ptr
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2941c, label %dec_label_pc_293e4

dec_label_pc_2940d:                               ; preds = %dec_label_pc_293b5
  call void @printLine(ptr @global_var_aa8c8)
  br label %dec_label_pc_2941c

dec_label_pc_2941c:                               ; preds = %dec_label_pc_293e4, %dec_label_pc_2940d
  %29 = icmp eq i64 %16, 0
  br i1 %29, label %dec_label_pc_2942f, label %dec_label_pc_29423

dec_label_pc_29423:                               ; preds = %dec_label_pc_2941c
  %30 = inttoptr i64 %16 to ptr
  %31 = and i64 %rsi.0.reload, 4294967295
  %32 = inttoptr i64 %31 to ptr
  call void @_ZdaPv(ptr %30, ptr %32)
  br label %dec_label_pc_2942f

dec_label_pc_2942f:                               ; preds = %dec_label_pc_29423, %dec_label_pc_2941c, %dec_label_pc_29368
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %34, label %dec_label_pc_29444, label %dec_label_pc_2943f

dec_label_pc_2943f:                               ; preds = %dec_label_pc_2942f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29444

dec_label_pc_29444:                               ; preds = %dec_label_pc_2943f, %dec_label_pc_2942f
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_920d4:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

