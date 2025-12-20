@global_var_b53d0 = external constant [16 x i8]
@global_var_b5400 = external constant [21 x i8]
@global_var_b5418 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_184a4:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef01c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_18523, label %dec_label_pc_184d1

dec_label_pc_184d1:                               ; preds = %dec_label_pc_184a4
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_ef090, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_18514, label %dec_label_pc_18503

dec_label_pc_18503:                               ; preds = %dec_label_pc_184d1
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_18523thread-pre-split

dec_label_pc_18514:                               ; preds = %dec_label_pc_184d1
  call void @printLine(ptr @global_var_b53d0)
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_18523thread-pre-split

dec_label_pc_18523thread-pre-split:               ; preds = %dec_label_pc_18503, %dec_label_pc_18514
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_ef01c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_18523

dec_label_pc_18523:                               ; preds = %dec_label_pc_18523thread-pre-split, %dec_label_pc_184a4
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = icmp eq i32 %.reload, 5
  br i1 %9, label %dec_label_pc_1853f, label %dec_label_pc_1852e

dec_label_pc_1852e:                               ; preds = %dec_label_pc_18523
  call void @printLine(ptr @global_var_b5400)
  br label %dec_label_pc_185b6

dec_label_pc_1853f:                               ; preds = %dec_label_pc_18523
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %10 = icmp ugt i32 %stack_var_-80.0.reload, 9
  br i1 %10, label %dec_label_pc_185a5, label %dec_label_pc_18573

dec_label_pc_18573:                               ; preds = %dec_label_pc_1853f
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %stack_var_-80.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %11, -64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_18589

dec_label_pc_18589:                               ; preds = %dec_label_pc_18589, %dec_label_pc_18573
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_185b6, label %dec_label_pc_18589

dec_label_pc_185a5:                               ; preds = %dec_label_pc_1853f
  call void @printLine(ptr @global_var_b5418)
  br label %dec_label_pc_185b6

dec_label_pc_185b6:                               ; preds = %dec_label_pc_18589, %dec_label_pc_185a5, %dec_label_pc_1852e
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_185cb, label %dec_label_pc_185c6

dec_label_pc_185c6:                               ; preds = %dec_label_pc_185b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_185cb

dec_label_pc_185cb:                               ; preds = %dec_label_pc_185c6, %dec_label_pc_185b6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

