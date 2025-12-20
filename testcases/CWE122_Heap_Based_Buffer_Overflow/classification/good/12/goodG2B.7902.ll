@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4baad:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %2, label %dec_label_pc_4bbae, label %dec_label_pc_4baf0

dec_label_pc_4baf0:                               ; preds = %dec_label_pc_4baad
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4bb18, label %dec_label_pc_4bb05

dec_label_pc_4bb05:                               ; preds = %dec_label_pc_4baf0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4bb18:                               ; preds = %dec_label_pc_4baf0, %dec_label_pc_4bb18
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %7 = mul i64 %indvars.iv14.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_4bb42, label %dec_label_pc_4bb18

dec_label_pc_4bb42:                               ; preds = %dec_label_pc_4bb18
  %10 = add i64 %4, 28
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br label %dec_label_pc_4bb65

dec_label_pc_4bb65:                               ; preds = %dec_label_pc_4bb65, %dec_label_pc_4bb42
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %12 = mul i64 %indvars.iv11.reload, 4
  %13 = add i64 %12, %4
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_4bb9d, label %dec_label_pc_4bb65

dec_label_pc_4bb9d:                               ; preds = %dec_label_pc_4bb65
  call void @free(ptr %3)
  br label %dec_label_pc_4bc67

dec_label_pc_4bbae:                               ; preds = %dec_label_pc_4baad
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4bbd6, label %dec_label_pc_4bbc3

dec_label_pc_4bbc3:                               ; preds = %dec_label_pc_4bbae
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4bbd6:                               ; preds = %dec_label_pc_4bbae, %dec_label_pc_4bbd6
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %16 = mul i64 %indvars.iv8.reload, 4
  %17 = add i64 %16, %4
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_4bc00, label %dec_label_pc_4bbd6

dec_label_pc_4bc00:                               ; preds = %dec_label_pc_4bbd6
  %19 = add i64 %4, 28
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4bc23

dec_label_pc_4bc23:                               ; preds = %dec_label_pc_4bc23, %dec_label_pc_4bc00
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %4
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4bc5b, label %dec_label_pc_4bc23

dec_label_pc_4bc5b:                               ; preds = %dec_label_pc_4bc23
  call void @free(ptr %3)
  br label %dec_label_pc_4bc67

dec_label_pc_4bc67:                               ; preds = %dec_label_pc_4bc5b, %dec_label_pc_4bb9d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

