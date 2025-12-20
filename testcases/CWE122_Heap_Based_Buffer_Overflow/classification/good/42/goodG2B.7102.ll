@global_var_b73e8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_42b3b:
  ret i32 7
}

define void @anon1() local_unnamed_addr {
dec_label_pc_42b52:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @anon0(i32 -1)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %4, label %dec_label_pc_42b9a, label %dec_label_pc_42b87

dec_label_pc_42b87:                               ; preds = %dec_label_pc_42b52
  call void @exit(i32 -1)
  unreachable

dec_label_pc_42b9a:                               ; preds = %dec_label_pc_42b52, %dec_label_pc_42b9a
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_42bbe, label %dec_label_pc_42b9a

dec_label_pc_42bbe:                               ; preds = %dec_label_pc_42b9a
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %dec_label_pc_42c10, label %dec_label_pc_42bc4

dec_label_pc_42bc4:                               ; preds = %dec_label_pc_42bbe
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_42be7

dec_label_pc_42be7:                               ; preds = %dec_label_pc_42be7, %dec_label_pc_42bc4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_42c1f, label %dec_label_pc_42be7

dec_label_pc_42c10:                               ; preds = %dec_label_pc_42bbe
  call void @printLine(ptr @global_var_b73e8)
  br label %dec_label_pc_42c1f

dec_label_pc_42c1f:                               ; preds = %dec_label_pc_42be7, %dec_label_pc_42c10
  call void @free(ptr %1)
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

