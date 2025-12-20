@global_var_b5290 = external constant [16 x i8]
@global_var_b52a0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_ec028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2768d:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-48.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_277d2, label %dec_label_pc_276b9

dec_label_pc_276b9:                               ; preds = %dec_label_pc_2768d
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_276fc, label %dec_label_pc_276eb

dec_label_pc_276eb:                               ; preds = %dec_label_pc_276b9
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2770b

dec_label_pc_276fc:                               ; preds = %dec_label_pc_276b9
  call void @printLine(ptr @global_var_b5290)
  store i32 -1, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2770b

dec_label_pc_2770b:                               ; preds = %dec_label_pc_276fc, %dec_label_pc_276eb
  %.pr = load i32, ptr @global_var_ec028, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_277d2, label %dec_label_pc_27719

dec_label_pc_27719:                               ; preds = %dec_label_pc_2770b
  %stack_var_-48.0.ph.reload = load i32, ptr %stack_var_-48.0.ph.reg2mem, align 4
  %9 = call ptr @malloc(i32 40)
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i1 %11, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %12, label %dec_label_pc_27741, label %dec_label_pc_2772e

dec_label_pc_2772e:                               ; preds = %dec_label_pc_27719
  call void @exit(i32 -1)
  unreachable

dec_label_pc_27741:                               ; preds = %dec_label_pc_27719, %dec_label_pc_27741
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %13 = mul i64 %indvars.iv4.reload, 4
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_27765, label %dec_label_pc_27741

dec_label_pc_27765:                               ; preds = %dec_label_pc_27741
  %16 = icmp slt i32 %stack_var_-48.0.ph.reload, 0
  br i1 %16, label %dec_label_pc_277b7, label %dec_label_pc_2776b

dec_label_pc_2776b:                               ; preds = %dec_label_pc_27765
  %17 = sext i32 %stack_var_-48.0.ph.reload to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2778e

dec_label_pc_2778e:                               ; preds = %dec_label_pc_2778e, %dec_label_pc_2776b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %10
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_277c6, label %dec_label_pc_2778e

dec_label_pc_277b7:                               ; preds = %dec_label_pc_27765
  call void @printLine(ptr @global_var_b52a0)
  br label %dec_label_pc_277c6

dec_label_pc_277c6:                               ; preds = %dec_label_pc_2778e, %dec_label_pc_277b7
  call void @free(ptr %9)
  br label %dec_label_pc_277d2

dec_label_pc_277d2:                               ; preds = %dec_label_pc_2768d, %dec_label_pc_277c6, %dec_label_pc_2770b
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_277e7, label %dec_label_pc_277e2

dec_label_pc_277e2:                               ; preds = %dec_label_pc_277d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_277e7

dec_label_pc_277e7:                               ; preds = %dec_label_pc_277e2, %dec_label_pc_277d2
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

