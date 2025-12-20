@global_var_b8620 = external constant [32 x i8]
@global_var_b8640 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]

define i32 @staticReturnsTrue.893() local_unnamed_addr {
dec_label_pc_57fce:
  ret i32 1
}

define i32 @staticReturnsFalse.894() local_unnamed_addr {
dec_label_pc_57fdd:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_583bf:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.894()
  %1 = icmp eq i32 %0, 0
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_583f8, label %dec_label_pc_583e0

dec_label_pc_583e0:                               ; preds = %dec_label_pc_583bf
  call void @printLine(ptr @global_var_b8640)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_583f8

dec_label_pc_583f8:                               ; preds = %dec_label_pc_583bf, %dec_label_pc_583e0
  %2 = call i32 @staticReturnsTrue.893()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_584c3, label %dec_label_pc_5840a

dec_label_pc_5840a:                               ; preds = %dec_label_pc_583f8
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_58432, label %dec_label_pc_5841f

dec_label_pc_5841f:                               ; preds = %dec_label_pc_5840a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_58432:                               ; preds = %dec_label_pc_5840a, %dec_label_pc_58432
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_58456, label %dec_label_pc_58432

dec_label_pc_58456:                               ; preds = %dec_label_pc_58432
  %11 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %11, label %dec_label_pc_584a8, label %dec_label_pc_5845c

dec_label_pc_5845c:                               ; preds = %dec_label_pc_58456
  %12 = sext i32 %stack_var_-24.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5847f

dec_label_pc_5847f:                               ; preds = %dec_label_pc_5847f, %dec_label_pc_5845c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_584b7, label %dec_label_pc_5847f

dec_label_pc_584a8:                               ; preds = %dec_label_pc_58456
  call void @printLine(ptr @global_var_b8620)
  br label %dec_label_pc_584b7

dec_label_pc_584b7:                               ; preds = %dec_label_pc_5847f, %dec_label_pc_584a8
  call void @free(ptr %4)
  br label %dec_label_pc_584c3

dec_label_pc_584c3:                               ; preds = %dec_label_pc_584b7, %dec_label_pc_583f8
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

