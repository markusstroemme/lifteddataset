@global_var_bd318 = external constant [4 x i8]
@global_var_ec070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1c0cc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1c1b7, label %dec_label_pc_1c0fe

dec_label_pc_1c0fe:                               ; preds = %dec_label_pc_1c0cc
  %spec.store.select = select i1 %1, i64 -4, i64 28
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1c126, label %dec_label_pc_1c113

dec_label_pc_1c113:                               ; preds = %dec_label_pc_1c0fe
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1c126:                               ; preds = %dec_label_pc_1c0fe, %dec_label_pc_1c126
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1c150, label %dec_label_pc_1c126

dec_label_pc_1c150:                               ; preds = %dec_label_pc_1c126
  %9 = add i64 %spec.store.select, %3
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1c173

dec_label_pc_1c173:                               ; preds = %dec_label_pc_1c173, %dec_label_pc_1c150
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c1ab, label %dec_label_pc_1c173

dec_label_pc_1c1ab:                               ; preds = %dec_label_pc_1c173
  call void @free(ptr %2)
  br label %dec_label_pc_1c1b7

dec_label_pc_1c1b7:                               ; preds = %dec_label_pc_1c1ab, %dec_label_pc_1c0cc
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

