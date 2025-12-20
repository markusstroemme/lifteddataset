@global_var_bd318 = external constant [4 x i8]
@global_var_ec03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3e319:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec03c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3e406, label %dec_label_pc_3e34d

dec_label_pc_3e34d:                               ; preds = %dec_label_pc_3e319
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3e375, label %dec_label_pc_3e362

dec_label_pc_3e362:                               ; preds = %dec_label_pc_3e34d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3e375:                               ; preds = %dec_label_pc_3e34d, %dec_label_pc_3e375
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_3e39f, label %dec_label_pc_3e375

dec_label_pc_3e39f:                               ; preds = %dec_label_pc_3e375
  %10 = add i64 %4, 28
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3e3c2

dec_label_pc_3e3c2:                               ; preds = %dec_label_pc_3e3c2, %dec_label_pc_3e39f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %4
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e3fa, label %dec_label_pc_3e3c2

dec_label_pc_3e3fa:                               ; preds = %dec_label_pc_3e3c2
  call void @free(ptr %3)
  br label %dec_label_pc_3e406

dec_label_pc_3e406:                               ; preds = %dec_label_pc_3e3fa, %dec_label_pc_3e319
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

